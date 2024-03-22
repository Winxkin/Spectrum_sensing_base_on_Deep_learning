addpath(fullfile(pwd,'Gen_data'))

% Generating Sepctrum Data
imageSize = [256 256];    % pixels
sampleRate = 61.44e6;     % Hz
numSubFrames = 40;        % corresponds to 40 ms
frameDuration = numSubFrames*1e-3;    % seconds
trainDir = fullfile(pwd,'TrainingData');

generateTrainData = false;


if generateTrainData
    numFramesPerStandard = 900;
    helperSpecSenseTrainingData(numFramesPerStandard,imageSize,trainDir,numSubFrames,sampleRate);
end

%Load Training Data
imds = imageDatastore(trainDir,'IncludeSubfolders',false,'FileExtensions','.png');
classNames = ["NR" "LTE" "Noise"];
pixelLabelID = [127 255 0];
pxdsTruth = pixelLabelDatastore(trainDir,classNames,pixelLabelID,...
    'IncludeSubfolders',false,'FileExtensions','.hdf');


%Analyze Dataset Statistics
tbl = countEachLabel(pxdsTruth);
frequency = tbl.PixelCount/sum(tbl.PixelCount);
figure
bar(1:numel(classNames),frequency)
grid on
xticks(1:numel(classNames))
xticklabels(tbl.Name)
xtickangle(45)
ylabel('Frequency')

%Prepare Training, Validation, and Test Sets

[imdsTrain,pxdsTrain,imdsVal,pxdsVal] = helperSpecSensePartitionData(imds,pxdsTruth,[80 20]);
cdsTrain = pixelLabelImageDatastore(imdsTrain,pxdsTrain,'OutputSize',imageSize);
cdsVal = pixelLabelImageDatastore(imdsVal,pxdsVal,'OutputSize',imageSize);

% Apply a transform to resize the image and pixel label data to the desired size.
cdsTrain = transform(cdsTrain, @(data)preprocessTrainingData(data,imageSize));
cdsVal = transform(cdsVal, @(data)preprocessTrainingData(data,imageSize));


%Train Deep Neural Network
inputSize = [imageSize(1) imageSize(2) 3];
imgLayer = imageInputLayer(inputSize);

%The downsampling
filterSize = 3;
numFilters = 128;
conv = convolution2dLayer(filterSize,numFilters,'Padding',1);
relu = reluLayer();
poolSize = 2;
maxPoolDownsample2x = maxPooling2dLayer(poolSize,'Stride',2);

%Stack the convolution, ReLU, and max pooling layers to create a network that downsamples its input by a factor of 16.
downsamplingLayers = [
    conv
    relu
    maxPoolDownsample2x
    conv
    relu
    maxPoolDownsample2x
    conv
    relu
    maxPoolDownsample2x
    conv
    relu
    maxPoolDownsample2x
    ];

%Create a transposed convolution layer
filterSize = 4;
transposedConvUpsample2x = transposedConv2dLayer(filterSize,numFilters, ...
    'Stride',2,'Cropping',1);
% define upsampling layer
upsamplingLayers = [
    transposedConvUpsample2x
    relu
    transposedConvUpsample2x
    relu
    transposedConvUpsample2x
    relu
    transposedConvUpsample2x
    relu
    ];

conv1x1 = convolution2dLayer(1,numel(classNames));
outputLayer = pixelClassificationLayer('Classes',classNames);

finalLayers = [
    conv1x1
    softmaxLayer()
    ];

% Design network
layers = [
    imgLayer    
    downsamplingLayers
    upsamplingLayers
    finalLayers
    outputLayer
    ];

% training network
mbs = 40;
opts = trainingOptions("sgdm",...
  MiniBatchSize = mbs,...
  MaxEpochs = 20, ...
  LearnRateSchedule = "piecewise",...
  InitialLearnRate = 0.02,...
  LearnRateDropPeriod = 10,...
  LearnRateDropFactor = 0.1,...
  ValidationData = cdsVal,...
  ValidationPatience = 5,...
  Shuffle="every-epoch",...
  OutputNetwork = "best-validation-loss",...
  Plots = 'training-progress');


% Starting training
trainNow = true;
if trainNow
  [net,trainInfo] = trainNetwork(cdsTrain,layers,opts); 
end

% Saving net work 
outputDir = fullfile(pwd,'PretrainNet');
outputFile = fullfile(outputDir, "LSample.mat");
save(outputFile, "net");
%load('LSample.mat')

% Test with Synthetic Signals
dataDir = fullfile(trainDir,'LTE_NR');
imds = imageDatastore(dataDir,'IncludeSubfolders',false,'FileExtensions','.png');
pxdsResults = semanticseg(imds,net,"WriteLocation",tempdir);
pxdsTruth = pixelLabelDatastore(dataDir,classNames,pixelLabelID,...
  'IncludeSubfolders',false,'FileExtensions','.hdf');
metrics = evaluateSemanticSegmentation(pxdsResults,pxdsTruth);

%Plot the normalized confusion matrix for all test frames as a heat map.
normConfMatData = metrics.NormalizedConfusionMatrix.Variables;
figure
h = heatmap(classNames,classNames,100*normConfMatData);
h.XLabel = 'Predicted Class';
h.YLabel = 'True Class';
h.Title = 'Normalized Confusion Matrix (%)';

%Plot the histogram of the per-image intersection over union (IoU). 
%For each class, IoU is the ratio of correctly classified pixels to 
% the total number of ground truth and predicted pixels in that class.
imageIoU = metrics.ImageMetrics.MeanIoU;
figure
histogram(imageIoU)
grid on
xlabel('IoU')
ylabel('Number of Frames')
title('Frame Mean IoU')

%Inspecting low SNR frames shows that the spectrogram images do not 
% contain visual features that can help the network identify the low SNR 
% frames correctly. Repeat the same process, considering only the frames
% with average SNR of 50dB or 100dB and ignoring the frames with average SNR of 40dB. 
files = dir(fullfile(dataDir,'*.mat'));
dataFiles = {};
labelFiles = {};
for p=1:numel(files)
  load(fullfile(files(p).folder,files(p).name),'params');
  if params.SNRdB > 40
    [~,name] = fileparts(files(p).name);
    dataFiles = [dataFiles; fullfile(files(p).folder,[name '.png'])]; %#ok<AGROW>
    labelFiles = [labelFiles; fullfile(files(p).folder,[name '.hdf'])]; %#ok<AGROW>
  end
end
imds = imageDatastore(dataFiles);
pxdsResults = semanticseg(imds,net,"WriteLocation",tempdir);
pxdsTruth = pixelLabelDatastore(labelFiles,classNames,pixelLabelID);
metrics = evaluateSemanticSegmentation(pxdsResults,pxdsTruth);

%Considering only the set of frames with higher SNR, replot the normalized 
% confusion matrix and observe the improved network accuracy.
normConfMatData = metrics.NormalizedConfusionMatrix.Variables;
figure
h = heatmap(classNames,classNames,100*normConfMatData);
h.XLabel = 'Predicted Class';
h.YLabel = 'True Class';
h.Title = 'Normalized Confusion Matrix (%)';

%Considering only the set of frames with higher SNR, 
% replot the per-image IoU histogram and observe the improved distribution.
imageIoU = metrics.ImageMetrics.MeanIoU;
figure
histogram(imageIoU)
grid on
xlabel('IoU')
ylabel('Number of Frames')
title('Frame Mean IoU')

%Identify 5G NR and LTE Signals in Spectrogram
%Visualize the received spectrum, true labels, and predicted labels for the image with index 602.
imgIdx = 602;
rcvdSpectrogram = readimage(imds,imgIdx);
trueLabels = readimage(pxdsTruth,imgIdx);
predictedLabels = readimage(pxdsResults,imgIdx);
figure
helperSpecSenseDisplayResults(rcvdSpectrogram,trueLabels,predictedLabels, ...
  classNames,sampleRate,0,frameDuration)
figure
helperSpecSenseDisplayIdentifiedSignals(rcvdSpectrogram,predictedLabels, ...
  classNames,sampleRate,0,frameDuration)


