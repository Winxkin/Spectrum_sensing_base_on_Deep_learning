addpath("SpectrumSensingWithDeepLearning5GLTEExample\");

trainDirRoot = fullfile(pwd,"TrainingData");
trainDir = fullfile(trainDirRoot,"128x128_Augmentation");
imageSize = [128 128];
classNames = ["Noise" "NR" "LTE" "Unknown"];
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
  helperSpecSensePartitionData(imds,pxdsTruthLTENR,[100 0 0]);
cdsTrain = combine(imdsTrain,pxdsTrain);

% Step 4: Define Data Augmentation
augmenter = imageDataAugmenter( ...
    'RandXReflection', true, ...    % Random horizontal reflection
    'RandYReflection', true, ...    % Random vertical reflection
    'RandRotation', [-45 45], ...   % Random rotation between -10 to 10 degrees
    'RandScale', [0.8 1.2]);        % Random scaling between 0.8 to 1.2

% Step 5: Create Augmented Datastores

cdsTrainCombined = cdsTrain.UnderlyingDatastores{1};
augCds = augmentedImageDatastore(imageSize, cdsTrainCombined, 'DataAugmentation', augmenter);

% Define output folders for images and labels
outputImageFolder = 'TrainingData\test';  % Specify the folder to save augmented images
outputLabelFolder = 'TrainingData\test';  % Specify the folder to save augmented labels

% Loop through augmented data and save images and labels
reset(augCds); % Reset to start from the beginning
while hasdata(augCds)
    [image, label] = read(augCds); % Read augmented image and label
    
    [~, filenameimg, ~] = fileparts(augCds.Files);
    %[~, filenameimg, ~] = fileparts(augCds.Files);
    % Generate unique filenames for images and labels
    imageFilename = fullfile(outputImageFolder, sprintf(filenameimg));
    %labelFilename = fullfile(outputLabelFolder, sprintf(filenameimg));
    
    % Save augmented image
    imwrite(image, imageFilename);
    
    % Save augmented label
    %h5write(labelFilename, '/label', label); % Assuming the label is a matrix
    
    % Optionally, you can save labels as PNG or any other appropriate format
    
    disp(['Saved augmented data ', num2str(augCds.CurrentIndex)]);
end