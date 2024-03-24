function helperSpecSenseTrainingData(numFrames,imageSize,trainDir,numSF,outFs)
%helperSpecSenseTrainingData Training data for spectrum sensing
%   helperSpecSenseTrainingData(N,S,DIR,NSF,FS) generates training data for
%   the Spectrum Sensing with Deep Learning to Identify 5G and LTE Signals
%   example. Traning data is the image of the spectrogram of baseband
%   frames together with the pixel labels. The function generates N groups
%   of frames where each group has an LTE only frame, 5G only frame and a
%   frame that contains both 5G and LTE signals. Single signal images are
%   saved in DIR. Combined signal images are saved to DIR/LTE_NR. The
%   images have a size of S, which is a 1x2 vector or integers. The sample
%   rate of the signals is FS. Each frame is NSF subframes long.
%
%   5G NR signals are based on SISO configuration for frequency range 1
%   (FR1). LTE signals are based on SISO configuration with frequency
%   division duplexing (FDD). 
%
%   See also helperSpecSenseNRSignal, helperSpecSenseLTESignal.

%   Copyright 2021 The MathWorks, Inc.

combinedDir = fullfile(trainDir,'LTE_NR');
if ~exist(combinedDir,'dir')
  mkdir(combinedDir)
end

files = dir(fullfile(combinedDir,'*.png'));

maxFrameNum = 2;
for p=1:length(files)
  frameNum = str2double(strtok(strtok(files(p).name, 'LTE_NR_frame_'), '.'));
  if frameNum > maxFrameNum
    maxFrameNum = frameNum;
  end
end

% 5G Parameters
SCSVec = [15 30];
BandwidthVec = [10:5:30 40 50]; % [60 80 90 100]
maxTimeShift = numSF;  % Time shift in milliseconds
SSBPeriodVec = 20; %[5 10 20 40 80 160] 20 is most frequenctly found OTA

% LTE Parameters
RCVec = {'R.2','R.6','R.8','R.9'};
TrBlkOffVec = {1,2,3,4,5,6,7,8};

% Channel Parameters
SNRdBVec = {40, 50, 100};   % dB
DopplerVec = {0, 10, 500};
CenterFrequencyVec = 4e9;

if exist("gcp","file")
  pool = gcp('nocreate');
  if isempty(pool)
    pool = parpool;
  end
  numWorkers = pool.NumWorkers;
else
  numWorkers = 1;
end
numFramesPerWorker = ceil(numFrames / numWorkers);

tStart = tic;
parfor parIdx=1:numWorkers
  frameIdx = maxFrameNum - numFramesPerWorker*(numWorkers-1) - numWorkers;
  if frameIdx < 0
    frameIdx = 0;
  end
  while frameIdx < numFramesPerWorker
    % Generate 5G signal
    scs = SCSVec(randi([1 length(SCSVec)])); %#ok<*PFBNS> 
    nrChBW = BandwidthVec(randi([1 length(BandwidthVec)]));
    timeShift = rand()*maxTimeShift;
    SSBPeriod = SSBPeriodVec(randi([1 length(SSBPeriodVec)]));
    [txWave5G, waveinfo5G] = helperSpecSenseNRSignal(scs,nrChBW,SSBPeriod,timeShift,numSF,outFs);
    
    % Generate LTE signal
    RC = RCVec{randi([1 length(RCVec)])};
    timeShift = rand()*maxTimeShift;
    TrBlkOff = TrBlkOffVec{randi([1 length(TrBlkOffVec)])};
    [txWaveLTE, waveinfoLTE] = helperSpecSenseLTESignal(RC,timeShift,TrBlkOff,numSF,outFs);

    % Decide on channel parameters
    SNRdB = SNRdBVec{randi([1 length(SNRdBVec)])};
    Doppler = DopplerVec{randi([1 length(DopplerVec)])};
    Fc = CenterFrequencyVec(randi([1 length(CenterFrequencyVec)]));
    
    % Save channel impared 5G signal spectrogram and pixel labels
    sr = waveinfo5G.ResourceGrids.Info.SampleRate;
    rxWave5G = multipathChannel5G(txWave5G,sr,Doppler,Fc);
    [rxWave5G,freqOff] = shiftInFrequency(rxWave5G,waveinfo5G.Bandwidth,sr,imageSize(2));
    rxWave5G = awgn(rxWave5G,SNRdB);

    params5G = struct();
    params5G.SCS = scs;
    params5G.BW = nrChBW;
    params5G.SSBPeriod = SSBPeriod;
    params5G.SNRdB = SNRdB;
    params5G.Doppler = Doppler;
    params5G.Info = waveinfo5G;
    saveSpectrogramImage(rxWave5G,sr,trainDir,'NR',imageSize,frameIdx+(numFramesPerWorker*(parIdx-1)));
    freqPos = freqOff' + [-waveinfo5G.Bandwidth/2 +waveinfo5G.Bandwidth/2]';
    savePixelLabelImage({[]}, freqPos, {'NR'}, {'Noise','NR','LTE'}, sr, params5G, trainDir, imageSize, frameIdx+(numFramesPerWorker*(parIdx-1)))

    % Save channel impared LTE signal spectrogram and pixel labels
    rxWaveLTE = multipathChannelLTE(txWaveLTE,waveinfoLTE.SampleRate,Doppler);
    [rxWaveLTE,freqOff] = shiftInFrequency(rxWaveLTE, ...
      waveinfoLTE.Bandwidth, ...
      waveinfoLTE.SampleRate, imageSize(2));
    rxWaveLTE = awgn(rxWaveLTE,SNRdB);

    paramsLTE = struct();
    paramsLTE.RC = RC;
    paramsLTE.SNRdB = SNRdB;
    paramsLTE.TrBlkOff = TrBlkOff;
    paramsLTE.Doppler = Doppler;
    paramsLTE.Info = waveinfoLTE;
    saveSpectrogramImage(rxWaveLTE,waveinfoLTE.SampleRate,trainDir,'LTE',imageSize,frameIdx+(numFramesPerWorker*(parIdx-1)));
    freqPos = freqOff' + [-waveinfoLTE.Bandwidth/2 +waveinfoLTE.Bandwidth/2]';
    savePixelLabelImage({[]}, freqPos, {'LTE'}, {'Noise','NR','LTE'}, waveinfoLTE.SampleRate, paramsLTE, trainDir, imageSize, frameIdx+(numFramesPerWorker*(parIdx-1)))

    % Save combined image
    assert(waveinfo5G.ResourceGrids.Info.SampleRate == waveinfoLTE.SampleRate)

    sr = waveinfoLTE.SampleRate;
    comb = comm.MultibandCombiner("InputSampleRate",sr, ...
      "OutputSampleRateSource","Property",...
      "OutputSampleRate",sr);
    % Decide on the frequency space between LTE and 5G
    maxFreqSpace = (sr - waveinfo5G.Bandwidth - waveinfoLTE.Bandwidth);
    if maxFreqSpace < 0
      continue
    end
    freqSpace = round(rand()*maxFreqSpace/1e6)*1e6;
    freqPerPixel = sr / imageSize(2);
    maxStartFreq = sr - (waveinfo5G.Bandwidth + waveinfoLTE.Bandwidth + freqSpace) - freqPerPixel;

    % Decide if 5G or LTE is on the left
    LTEFirst = randi([0 1]);
    if LTEFirst
      combIn = [txWaveLTE, txWave5G];
      labels = {'LTE','NR'};
      startFreq = round(rand()*maxStartFreq/1e6)*1e6 - sr/2 + waveinfoLTE.Bandwidth/2;
      bwMatrix = [-waveinfoLTE.Bandwidth/2 +waveinfoLTE.Bandwidth/2; -waveinfo5G.Bandwidth/2 +waveinfo5G.Bandwidth/2]';
    else
      combIn = [txWave5G txWaveLTE];
      labels = {'NR','LTE'};
      startFreq = round(rand()*maxStartFreq/1e6)*1e6 - sr/2 + waveinfo5G.Bandwidth/2;
      bwMatrix = [-waveinfo5G.Bandwidth/2 +waveinfo5G.Bandwidth/2; -waveinfoLTE.Bandwidth/2 +waveinfoLTE.Bandwidth/2]';
    end
    comb.FrequencyOffsets = [startFreq startFreq+waveinfoLTE.Bandwidth/2 + freqSpace + waveinfo5G.Bandwidth/2];
    txWave = comb(combIn);

    % Pass through channel
    rxWaveChan = multipathChannel5G(txWave, sr, Doppler, Fc);

    % Add noise
    rxWave = awgn(rxWaveChan,SNRdB);

    % Create spectrogram image
    paramsComb = struct();
    paramsComb.SCS = scs;
    paramsComb.BW = nrChBW;
    paramsComb.SNRdB = SNRdB;
    paramsComb.Doppler = Doppler;
    paramsComb.RC = RC;
    paramsComb.SNRdB = SNRdB;
    paramsComb.TrBlkOff = TrBlkOff;
    paramsComb.Doppler = Doppler;
    saveSpectrogramImage(rxWave,sr,fullfile(trainDir,'LTE_NR'),...
      'LTE_NR',imageSize,frameIdx+(numFramesPerWorker*(parIdx-1)));
    freqPos = comb.FrequencyOffsets + bwMatrix;
    savePixelLabelImage({[],[]}, freqPos, labels, {'Noise','NR','LTE'}, ...
      sr, paramsComb, fullfile(trainDir,'LTE_NR'), imageSize, ...
      frameIdx+(numFramesPerWorker*(parIdx-1)))

    frameIdx = frameIdx + 1;
    if mod(frameIdx,10) == 0
      elapsedTime = seconds(toc(tStart));
      elapsedTime.Format = "hh:mm:ss";
      disp(string(elapsedTime) + ": Worker " + parIdx + ...
        " generated "  + frameIdx + " frames")
    end
  end
  elapsedTime = seconds(toc(tStart));
  elapsedTime.Format = "hh:mm:ss";
  disp(string(elapsedTime) + ": Worker " + parIdx + ...
    " generated "  + frameIdx + " frames")
end
end

% Helper Functions
function [y,freqOff] = shiftInFrequency(x, bw, sr, numFreqPixels)
freqOffset = comm.PhaseFrequencyOffset(...
  'SampleRate',sr);

maxFreqShift = (sr-bw) / 2 - sr/numFreqPixels;
freqOff = (2*rand()-1)*maxFreqShift;
freqOffset.FrequencyOffset = freqOff;
y = freqOffset(x);
end

function y = multipathChannel5G(x, sr, doppler, fc)
% Pass through channel
chan = nrCDLChannel('DelayProfile','Custom',... % one path with
  'SampleRate',sr,...
  'MaximumDopplerShift',doppler,...
  'CarrierFrequency',fc,...
  'Seed', randi(10e3,1,1)); % Random seed to create varying doppler
chan.TransmitAntennaArray.Size = [1 1 1 1 1];
chan.TransmitAntennaArray.Element = 'isotropic';
chan.ReceiveAntennaArray.Size = [1 1 1 1 1];
y = chan(x);
end

function y = multipathChannelLTE(x, sr, doppler)
chan.DelayProfile = 'Custom';
chan.AveragePathGaindB = 0; % single path (LoS) with 0 dB gain and no delay
chan.PathDelays = 0;
chan.NRxAnts = 1;
chan.MIMOCorrelation = 'Low';
chan.Seed = randi(10e3,1,1); % Random seed to create varying doppler
chan.InitPhase = 'Random';
chan.NTerms = 16;
chan.InitTime = 0;
chan.SamplingRate = sr;
chan.DopplerFreq = doppler;

y = lteFadingChannel(chan,x);
end

function saveSpectrogramImage(rxWave,sr,folder,label,imageSize, idx)
Nfft = 4096;

rxSpectrogram = helperSpecSenseSpectrogramImage(rxWave,Nfft,sr,imageSize);

% Create file name
fname = fullfile(folder, [label '_frame_' strrep(num2str(idx),' ','')]);
fname = fname + ".png";
imwrite(rxSpectrogram, fname)
end

function savePixelLabelImage(timePos, freqPos, label, pixelClassNames, sr, params, folder, imSize, idx)
data = uint8(zeros(imSize));
for p=1:length(label)
  pixelValue = floor((find(strcmp(label{p}, pixelClassNames))-1)*255/(numel(pixelClassNames)-1));

  freqPerPixel = sr / imSize(2);
  freqPixels = floor((sr/2 + freqPos(:,p)) / freqPerPixel) + 1;
  if isempty(timePos{p})
    timePixels = 1:imSize(1);
  end
  data(timePixels,freqPixels(1):freqPixels(2)) = uint8(pixelValue);
end

% Create file name
if numel(label) == 1
  lbl = label{1};
else
  lbl = 'LTE_NR';
end
fname = fullfile(folder, [lbl '_frame_' strrep(num2str(idx),' ','')]);
fnameLabels = fname + ".hdf";
imwrite(data,fnameLabels,'hdf');

fnameParams = fname + ".mat";
save(fnameParams, "params")
end
