function helperSpecSenseDownloadData()
%helperSpecSenseDownloadData Download data files
%   helperSpecSenseDownloadData downloads data files used by the
%   spectrum sensing for 5G and LTE signals examples.

%   Copyright 2021 The MathWorks, Inc.

dataFileName = "SpectrumSenseTrainingDataNetwork.tar.gz";
expFileNames = {'license.txt','specSenseTrainedNet.mat',...
  'license_semantic_segmentation_network.txt',...
  fullfile('TrainingData','NR_frame_102.png'),...
  fullfile('TrainingData','NR_frame_102.hdf'),...
  fullfile('TrainingData','NR_frame_102.mat'),...
  fullfile('TrainingData','LTE_frame_54.png'),...
  fullfile('TrainingData','LTE_frame_54.hdf'),...
  fullfile('TrainingData','LTE_frame_54.mat'),...
  fullfile('TrainingData','LTE_NR','LTE_NR_frame_867.png'),...
  fullfile('TrainingData','LTE_NR','LTE_NR_frame_867.hdf'),...
  fullfile('TrainingData','LTE_NR','LTE_NR_frame_867.mat'),...
  };

url = "https://www.mathworks.com/supportfiles/spc/SpectrumSensing/" ...
  + dataFileName;

dstFolder = pwd;

helperDownloadDataFile(url, ...
  dataFileName, ...
  expFileNames, ...
  dstFolder);
end

function helperDownloadDataFile(url, archive, expFileNames, dstFolder)
%helperDownloadDataFile Download and uncompress data file from URL
%   helperDownloadDataFile(URL,DATAFILE,EXPFILES,DST) downloads and
%   uncompresses DATAFILE from URL to DST folder. EXPFILES is a list of
%   expected uncompressed files.

[~, ~, fExt] = fileparts(archive);

skipExtract = true;
for p=1:length(expFileNames)
  tmpFileName = fullfile(dstFolder, expFileNames{p});
  if ~exist(tmpFileName, 'file')
    skipExtract = false;
    break
  end
end

if skipExtract
  disp("Files already exist. Skipping download and extract.")
else
  switch fExt
    case '.gz'
      fprintf("Starting download of data files from:\n\t%s\n", url)
      fileFullPath = matlab.internal.examples.downloadSupportFile('spc/SpectrumSensing',...
        archive);
      disp('Download complete. Extracting files.')
      untar(fileFullPath, dstFolder);
      disp("Extract complete.")
 end
end
end