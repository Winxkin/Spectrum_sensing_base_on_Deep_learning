%Train Deep Neural Network
imageSize = [256 256];

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