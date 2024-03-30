
%% Generating training data
imageSize = {[256 256], [128 128]};    % pixels
sampleRate = 61.44e6;     % Hz
numSubFrames = 40;        % corresponds to 40 ms
frameDuration = numSubFrames*1e-3;    % seconds
trainDirRoot = fullfile(pwd,"TrainingData");
classNames = ["Noise" "NR" "LTE" "Unknown"];
trainingDataSource = "Generated data";
useCapturedData = true;
if trainingDataSource == "Generated data"
  numFramesPerStandard = 5000;
  saveChannelInfo = false;
  helperSpecSenseTrainingData(numFramesPerStandard,classNames,imageSize, ...
      trainDirRoot,numSubFrames,sampleRate,saveChannelInfo);
end

%% 