addpath(fullfile(pwd,'Gen_data'))

% Generating Sepctrum Data
imageSize = [256 256];    % pixels
sampleRate = 61.44e6;     % Hz
numSubFrames = 40;        % corresponds to 40 ms
frameDuration = numSubFrames*1e-3;    % seconds
trainDir = fullfile(pwd,'TrainingData');

generateTrainData = false;
trainNow = false;

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

%Train Deep Neural Network
baseNetwork = 'xception';
lgraph = deeplabv3plusLayers(imageSize,numel(classNames),baseNetwork);


%Balance Classes Using Class Weighting

imageFreq = tbl.PixelCount ./ tbl.ImagePixelCount;
classWeights = median(imageFreq) ./ imageFreq;

pxLayer = pixelClassificationLayer('Name','labels','Classes',tbl.Name,'ClassWeights',classWeights);
lgraph = replaceLayer(lgraph,"classification",pxLayer);

%Select Training Options
opts = trainingOptions("sgdm",...
    MiniBatchSize = 40,...
    MaxEpochs = 20, ...
    LearnRateSchedule = "piecewise",...
    InitialLearnRate = 0.02,...
    LearnRateDropPeriod = 10,...
    LearnRateDropFactor = 0.1,...
    ValidationData = cdsVal,...
    ValidationPatience = 5,...
    Shuffle="every-epoch",...
    OutputNetwork = "best-validation-loss",...
    Plots = 'training-progress')

if trainNow
    [net,trainInfo] = trainNetwork(cdsTrain,lgraph,opts); %#ok<UNRCH>
else
    load specSenseTrainedNet net
end

