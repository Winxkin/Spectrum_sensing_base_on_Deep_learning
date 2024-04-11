
%% Reference
openExample('deeplearning_shared/SpectrumSensingWithDeepLearning5GLTEExample')

%% Path
addpath("SpectrumSensingWithDeepLearning5GLTEExample\")
addpath("SupportFunction\")
load("UnetModel\UnetDL.mat")

%% Generating training data
imageSize = {[128 128]};    % pixels
sampleRate = 61.44e6;     % Hz
numSubFrames = 40;        % corresponds to 40 ms
frameDuration = numSubFrames*1e-3;    % seconds
trainDirRoot = fullfile(pwd,"TrainingData");
classNames = ["Noise" "NR" "LTE" "Unknown"];
trainingDataSource = "Generated data";
useCapturedData = true;
if trainingDataSource == "Generated data"
  numFramesPerStandard = 1000;
  saveChannelInfo = false;
  helperSpecSenseTrainingData(numFramesPerStandard,classNames,imageSize, ...
      trainDirRoot,numSubFrames,sampleRate,saveChannelInfo);
end

%% Load Training Data
trainDir = fullfile(trainDirRoot,"128x128");
imageSize = [128 128];

folders = [trainDir,fullfile(trainDir,"LTE_NR")];
imds = imageDatastore(folders,FileExtensions=".png");

numClasses = length(classNames);
pixelLabelID = floor((0:numClasses-1)/(numClasses-1)*255);
pxdsTruthLTENR = pixelLabelDatastore(folders,classNames,pixelLabelID,...
                                  FileExtensions=".hdf");

%% Analyze Dataset Statistics

tbl = countEachLabel(pxdsTruthLTENR);
frequency = tbl.PixelCount/sum(tbl.PixelCount);
figure
bar(1:numel(classNames),frequency)
grid on
xticks(1:numel(classNames)) 
xticklabels(tbl.Name)
xtickangle(45)
ylabel("Frequency")

%% Prepare Training, Validation, and Test Sets

[imdsTrain,pxdsTrain,imdsVal,pxdsVal,imdsTest,pxdsTest] = ...
  helperSpecSensePartitionData(imds,pxdsTruthLTENR,[80 10 10]);
cdsTrain = combine(imdsTrain,pxdsTrain);
cdsVal = combine(imdsVal,pxdsVal);
cdsTest = combine(imdsTest,pxdsTest);

%% Apply a transform to resize the image and pixel label data to the desired size.

cdsTrain = transform(cdsTrain, @(data)preprocessTrainingData(data,imageSize));
cdsVal = transform(cdsVal, @(data)preprocessTrainingData(data,imageSize));
cdsTest = transform(cdsTest, @(data)preprocessTrainingData(data,imageSize));


%% Balance Classes Using Class Weighting
imageFreq = tbl.PixelCount ./ tbl.ImagePixelCount;
classWeights = median(imageFreq) ./ imageFreq;
classWeights = classWeights/(sum(classWeights)+eps(class(classWeights)));


%% Select Training Options

mbs = 5;
opts = trainingOptions("sgdm",...
  MiniBatchSize = mbs,...
  MaxEpochs = 20, ...
  LearnRateSchedule = "piecewise",...
  InitialLearnRate = 0.02,...
  LearnRateDropPeriod = 10,...
  LearnRateDropFactor = 0.1,...
  ValidationData = cdsVal,...
  Shuffle="every-epoch",...
  OutputNetwork = "best-validation-loss",...
  Plots = 'training-progress');
%% Train Deep Neural Network
trainNow = true;
NetWorkname = "lUnetpp_AgSPPgconv";
layers = lUnetpp_AgSPPgconv;


if trainNow
  [net,trainInfo] = trainNetwork(cdsTrain,layers,opts); 
  save(sprintf('myNet_%s_%s',NetWorkname, ...
    datetime('now',format='yyyy_MM_dd_HH_mm')), 'net')
  save(sprintf('myNet_%s_%s',NetWorkname, ...
    datetime('now',format='yyyy_MM_dd_HH_mm')), 'trainInfo')
end


%% Test Deep Neural Network

%% Running semantic segmentation network
dataDir = fullfile(trainDir,"LTE_NR");
imdsLTENR = imageDatastore(dataDir,FileExtensions=".png");
pxdsResultsLTENR = semanticseg(imdsLTENR,net,MinibatchSize=mbs,WriteLocation=tempdir, ...
    Classes=classNames);

%% Evaluating semantic segmentation results
pxdsTruthLTENR = pixelLabelDatastore(dataDir,classNames,pixelLabelID,...
  FileExtensions=".hdf");
metrics = evaluateSemanticSegmentation(pxdsResultsLTENR,pxdsTruthLTENR);

%% Plot the normalized confusion matrix for all test frames.

cm = confusionchart(metrics.ConfusionMatrix.Variables, ...
  classNames, Normalization='row-normalized');
cm.Title = 'Confusion Matrix - Synthetic';

%% Separate the test data into captured and generated sets.

capturedIdx = contains(imdsTest.Files,'captured');
imdsTestCaptured = subset(imdsTest,capturedIdx);
pxdsTestCaptured = subset(pxdsTest,capturedIdx);
imdsTestGenerated = subset(imdsTest,~capturedIdx);
pxdsTestGenerated = subset(pxdsTest,~capturedIdx);

%% Repeat the same process, considering only the frames with captured data in the test set.

pxdsResultsCaptured = semanticseg(imdsTestCaptured,net,MinibatchSize=mbs,WriteLocation=tempdir, ...
    Classes=classNames);

metrics = evaluateSemanticSegmentation(pxdsResultsCaptured,pxdsTestCaptured);

%% Replot the normalized confusion matrix.
cm = confusionchart(metrics.ConfusionMatrix.Variables, ...
  classNames, Normalization="row-normalized");
cm.Title = "Normalized Confusion Matrix";

%% The confusion matrix shows that the network confuses NR signals with Noise or Unknown signals. Examining the captured signals reveals that the captured signals with file prefix CF3550 has very low SNR and the network is having a hard time to identify signals correctly.

CF3550Indices = contains(imdsTestCaptured.Files,'CF3550');
idx = find(CF3550Indices,1);
rcvdSpectrogram = readimage(imdsTestCaptured,idx);
trueLabels = readimage(pxdsTestCaptured,idx);
predictedLabels = readimage(pxdsResultsCaptured,idx);
figure
helperSpecSenseDisplayResults(rcvdSpectrogram,trueLabels,predictedLabels, ...
  classNames,250e6,0,frameDuration)

%% Test with captured data but exclude CF3550 frames.

imdsTestCaptured2 = subset(imdsTestCaptured,~CF3550Indices);
pxdsTestCaptured2 = subset(pxdsTestCaptured,~CF3550Indices);
pxdsResultsCaptured2 = semanticseg(imdsTestCaptured2,net,MinibatchSize=mbs,WriteLocation=tempdir, ...
    Classes=classNames);

metrics = evaluateSemanticSegmentation(pxdsResultsCaptured2,pxdsTestCaptured2);

%% Replot the normalized confusion matrix.

figure
cm = confusionchart(metrics.ConfusionMatrix.Variables, ...
  classNames, Normalization="row-normalized");
cm.Title = "Normalized Confusion Matrix";

%% Identify 5G NR and LTE Signals in Spectrogram

signals = find(~CF3550Indices);
numSignals = length(signals);
idx = 13;
rcvdSpectrogram = readimage(imdsTestCaptured,signals(idx));
trueLabels = readimage(pxdsTestCaptured,signals(idx));
predictedLabels = readimage(pxdsResultsCaptured,signals(idx));
figure
helperSpecSenseDisplayResults(rcvdSpectrogram,trueLabels,predictedLabels, ...
  classNames,250e6,0,frameDuration)


figure
helperSpecSenseDisplayIdentifiedSignals(rcvdSpectrogram,predictedLabels, ...
  classNames,250e6,0,frameDuration)

%% Test with Captured Data using SDR

runSDRSection = false;
if helperIsPlutoSDRInstalled()  
  radios = findPlutoRadio();
  if length(radios) >= 1
    runSDRSection = true;
  else
    disp("At least one ADALM-PLUTO radios is needed. Skipping SDR test.")
  end
else
    disp("Communications Toolbox Support Package for Analog Devices ADALM-PLUTO Radio not found.")
    disp("Click Add-Ons in the Home tab of the MATLAB toolstrip to install the support package.")
    disp("Skipping SDR test.")
end


if runSDRSection
  % Set up PlutoSDR receiver
  rx = sdrrx('Pluto');
  rx.CenterFrequency = 2.35e9;
  rx.BasebandSampleRate = sampleRate;
  rx.SamplesPerFrame = frameDuration*rx.BasebandSampleRate;
  rx.OutputDataType = 'single';
  rx.EnableBurstMode = true;
  rx.NumFramesInBurst = 1;
  Nfft = 4096;
  overlap = 10;

  meanAllScores = zeros([imageSize numel(classNames)]);
  segResults = zeros([imageSize 10]);
  for frameCnt=1:10
    rxWave = rx();
    rxSpectrogram = helperSpecSenseSpectrogramImage(rxWave,Nfft,sampleRate,imageSize);

    [segResults(:,:,frameCnt),scores,allScores] = semanticseg(rxSpectrogram,net);
    meanAllScores = (meanAllScores*(frameCnt-1) + allScores) / frameCnt;
  end
  release(rx)

  [~,predictedLabels] = max(meanAllScores,[],3);
  figure
  helperSpecSenseDisplayResults(rxSpectrogram,[],predictedLabels,classNames,...
    sampleRate,rx.CenterFrequency,frameDuration)
  figure
  freqBand = helperSpecSenseDisplayIdentifiedSignals(rxSpectrogram,predictedLabels,...
    classNames,sampleRate,rx.CenterFrequency,frameDuration)
else
  figure
  imshow('lte_capture_result1.png')
  figure
  imshow('lte_capture_result2.png')
  figure
  imshow('nr_capture_result1.png')
  figure
  imshow('nr_capture_result2.png')
end

