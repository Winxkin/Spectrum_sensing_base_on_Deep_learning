function varargout = helperSpecSenseDisplayIdentifiedSignals(rcvdSpect,segResults,classNames,sr,fc,to)
%helperSpecSenseDisplayIdentifiedSignals Label identified signals
%   helperSpecSenseDisplayIdentifiedSignals(P,SEG,C,FS,FC,TF) displays the
%   identified signals and their bands over the spectrogram, P. SEG is the
%   semantic segmentation results, C is the possible class names, FS is the
%   sampling rate, FC is the center frequency, and TF is the frame time. 
%
%   FB = helperSpecSenseDisplayIdentifiedSignals(...) returns the estimated
%   frequency bands as a cell array, where the first cell contains results
%   for C(1) and the second cell contains the results for C(2). Each cell
%   contains a 1x2 array where the first element is the minimum frequency
%   and the second element is the maximum frequency for the corresponding
%   class. 

%   Copyright 2021 The MathWorks, Inc.

imageSize = size(segResults);
numClasses = numel(classNames);
cmap = cool(numClasses);

freqDim = 2;  % Put frequency on the x-axis
timeDim = 1;  % Put time on the y-axis

maskedImg = rcvdSpect;
for p=1:numel(classNames)-1  % Do not include Noise
  % Find the frequency band that contains pth class most probably. Assumes
  % a single band with type p
  regionOfInterest = mode(double(segResults)==p,timeDim);
  % Find the starting frequency of the band
  fminPixel = find(regionOfInterest, 1, 'first');
  fmin = fminPixel * (sr/imageSize(timeDim)) - sr/2;
  % Find the ending frequency of the band
  fmaxPixel = find(regionOfInterest, 1, 'last');
  fmax = fmaxPixel * (sr/imageSize(timeDim)) - sr/2;
  freqBound{p} = [fmin fmax] + fc; %#ok<AGROW>

  % Add mask with label
  if ~isempty(fminPixel)
    maskSig = false(imageSize);
    if freqDim == 2
      loc = [fminPixel+5 10];
      maskSig(:,fminPixel:fmaxPixel) = true;
    else
      loc = [10 fminPixel+5];
      maskSig(fminPixel:fmaxPixel,:) = true;
    end
    maskedImg = insertObjectMask(maskedImg,maskSig,'Color',cmap(p,:),'Opacity',0.3,'LineWidth',3);
    maskedImg = insertText(maskedImg,loc,classNames(p),'BoxColor','w','BoxOpacity',0.3);
  end
end

t = linspace(-to,0,imageSize(1)) * 1e3;
f = (linspace(-sr/2,sr/2,imageSize(2)) + fc)/1e6;

if freqDim == 2
  imagesc(f,t,maskedImg)
  xlabel('Frequency (MHz)')
  ylabel('Time (ms)')
else
  imagesc(t,f,maskedImg)
  xlabel('Time (ms)')
  ylabel('Frequency (MHz)')
end
ca = gca;
% Flip the tick labels to put the correct labels. image functions flip the
% data while displaying. Flipping the data would present the label upside
% down. 
ca.YTickLabel = flipud(ca.YTickLabel);
h = colorbar;
colormap(h,parula(256))
title('Labeled spectrogram')
if nargout > 0
  varargout{1} = freqBound;
end