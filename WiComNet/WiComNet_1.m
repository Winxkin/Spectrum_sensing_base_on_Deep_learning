wicomnet_1 = layerGraph();

%% Define Encoder Path (reference by Unet)
%% Block 00
tempLayers = [imageInputLayer([128 128 3],"Name","inputs","Normalization","rescale-zero-one")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_00_0","Padding","same")
    batchNormalizationLayer("Name","batchnorm_00_0")
    convolution2dLayer([1 1],64,"Name","conv_00_0","Padding","same")
    reluLayer("Name","Relu_00_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_00_1","Padding","same")
    batchNormalizationLayer("Name","batchnorm_00_1")
    convolution2dLayer([1 1],64,"Name","conv_00_1","Padding","same")
    reluLayer("Name","Relu_00_1")
    ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [additionLayer(2,"Name","addition_00_0")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [maxPooling2dLayer([2 2],"Name","MaxPool_00_0","Stride",[2 2])];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);


tempLayers = [convolution2dLayer([1 1],64,"Name","conv_00_2","Padding","same")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

wicomnet_1 = connectLayers(wicomnet_1,"inputs","groupedconv_00_0");
wicomnet_1 = connectLayers(wicomnet_1,"inputs","conv_00_2");
wicomnet_1 = connectLayers(wicomnet_1,"Relu_00_1","addition_00_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"conv_00_2","addition_00_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"addition_00_0/out","MaxPool_00_0");

%% Block 10
tempLayers = [
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_10_0","Padding","same")
    batchNormalizationLayer("Name","batchnorm_10_0")
    convolution2dLayer([1 1],128,"Name","conv_10_0","Padding","same")
    reluLayer("Name","Relu_10_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_10_1","Padding","same")
    batchNormalizationLayer("Name","batchnorm_10_1")
    convolution2dLayer([1 1],128,"Name","conv_10_1","Padding","same")
    reluLayer("Name","Relu_10_1")
    ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [additionLayer(2,"Name","addition_10_0")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [maxPooling2dLayer([2 2],"Name","MaxPool_10_0","Stride",[2 2])];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [convolution2dLayer([1 1],128,"Name","conv_10_2","Padding","same")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

wicomnet_1 = connectLayers(wicomnet_1,"MaxPool_00_0","groupedconv_10_0");
wicomnet_1 = connectLayers(wicomnet_1,"MaxPool_00_0","conv_10_2");
wicomnet_1 = connectLayers(wicomnet_1,"Relu_10_1","addition_10_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"conv_10_2","addition_10_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"addition_10_0/out","MaxPool_10_0");

%% Block 20
tempLayers = [
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_20_0","Padding","same")
    batchNormalizationLayer("Name","batchnorm_20_0")
    convolution2dLayer([1 1],256,"Name","conv_20_0","Padding","same")
    reluLayer("Name","Relu_20_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_20_1","Padding","same")
    batchNormalizationLayer("Name","batchnorm_20_1")
    convolution2dLayer([1 1],256,"Name","conv_20_1","Padding","same")
    reluLayer("Name","Relu_20_1")
    ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [additionLayer(2,"Name","addition_20_0")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [maxPooling2dLayer([2 2],"Name","MaxPool_20_0","Stride",[2 2])];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [convolution2dLayer([1 1],256,"Name","conv_20_2","Padding","same")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

wicomnet_1 = connectLayers(wicomnet_1,"MaxPool_10_0","groupedconv_20_0");
wicomnet_1 = connectLayers(wicomnet_1,"MaxPool_10_0","conv_20_2");
wicomnet_1 = connectLayers(wicomnet_1,"Relu_20_1","addition_20_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"conv_20_2","addition_20_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"addition_20_0/out","MaxPool_20_0");

%% Block 30
tempLayers = [
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_30_0","Padding","same")
    batchNormalizationLayer("Name","batchnorm_30_0")
    convolution2dLayer([1 1],512,"Name","conv_30_0","Padding","same")
    reluLayer("Name","Relu_30_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_30_1","Padding","same")
    batchNormalizationLayer("Name","batchnorm_30_1")
    convolution2dLayer([1 1],512,"Name","conv_30_1","Padding","same")
    reluLayer("Name","Relu_30_1")
    ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [additionLayer(2,"Name","addition_30_0")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [
    dropoutLayer(0.5,"Name","dropout_30_0")
    maxPooling2dLayer([2 2],"Name","MaxPool_30_0","Stride",[2 2])
    ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);


tempLayers = [convolution2dLayer([1 1],512,"Name","conv_30_2","Padding","same")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

wicomnet_1 = connectLayers(wicomnet_1,"MaxPool_20_0","groupedconv_30_0");
wicomnet_1 = connectLayers(wicomnet_1,"MaxPool_20_0","conv_30_2");
wicomnet_1 = connectLayers(wicomnet_1,"Relu_30_1","addition_30_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"conv_30_2","addition_30_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"addition_30_0/out","dropout_30_0");

%% Deep Layer
%% Block 40 (Deepest layer)
tempLayers = [
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_40_0","Padding","same")
    batchNormalizationLayer("Name","batchnorm_40_0")
    convolution2dLayer([1 1],1024,"Name","conv_40_0","Padding","same")
    reluLayer("Name","Relu_40_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_40_1","Padding","same")
    batchNormalizationLayer("Name","batchnorm_40_1")
    convolution2dLayer([1 1],1024,"Name","conv_40_1","Padding","same")
    reluLayer("Name","Relu_40_1")
  ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [
    additionLayer(2,"Name","addition_40_0")
    dropoutLayer(0.5,"Name","dropout_40_0")
    resize2dLayer("Name","resize-scale_40_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])
   ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [convolution2dLayer([1 1],1024,"Name","conv_40_2","Padding","same")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

wicomnet_1 = connectLayers(wicomnet_1,"MaxPool_30_0","groupedconv_40_0");
wicomnet_1 = connectLayers(wicomnet_1,"MaxPool_30_0","conv_40_2");
wicomnet_1 = connectLayers(wicomnet_1,"Relu_40_1","addition_40_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"conv_40_2","addition_40_0/in2");

%% Define Decoder Path (reference by Unet)
%% Block 31
tempLayers = [
    concatenationLayer(3,2,"Name","concat_31_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_31_0","Padding","same")
    batchNormalizationLayer("Name","batchnorm_31_0")
    convolution2dLayer([1 1],512,"Name","conv_31_0","Padding","same")
    reluLayer("Name","Relu_31_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_31_1","Padding","same")
    batchNormalizationLayer("Name","batchnorm_31_1")
    convolution2dLayer([1 1],512,"Name","conv_31_1","Padding","same")
    reluLayer("Name","Relu_31_1")
    ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [additionLayer(2,"Name","addition_31_0")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [resize2dLayer("Name","resize-scale_31_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [convolution2dLayer([1 1],512,"Name","conv_31_2","Padding","same")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

wicomnet_1 = connectLayers(wicomnet_1,"resize-scale_40_0","concat_31_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"addition_30_0/out","concat_31_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"resize-scale_40_0","conv_31_2");
wicomnet_1 = connectLayers(wicomnet_1,"Relu_31_1","addition_31_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"conv_31_2","addition_31_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"addition_31_0/out","resize-scale_31_0");

%% Block 21
tempLayers = [
    concatenationLayer(3,2,"Name","concat_21_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_21_0","Padding","same")
    batchNormalizationLayer("Name","batchnorm_21_0")
    convolution2dLayer([1 1],256,"Name","conv_21_0","Padding","same")
    reluLayer("Name","Relu_21_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_21_1","Padding","same")
    batchNormalizationLayer("Name","batchnorm_21_1")
    convolution2dLayer([1 1],256,"Name","conv_21_1","Padding","same")
    reluLayer("Name","Relu_21_1")
    ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [additionLayer(2,"Name","addition_21_0")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [resize2dLayer("Name","resize-scale_21_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [convolution2dLayer([1 1],256,"Name","conv_21_2","Padding","same")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

wicomnet_1 = connectLayers(wicomnet_1,"resize-scale_31_0","concat_21_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"addition_20_0/out","concat_21_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"resize-scale_31_0","conv_21_2");
wicomnet_1 = connectLayers(wicomnet_1,"Relu_21_1","addition_21_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"conv_21_2","addition_21_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"addition_21_0/out","resize-scale_21_0");

%% Block 11
tempLayers = [
    concatenationLayer(3,2,"Name","concat_11_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_11_0","Padding","same")
    batchNormalizationLayer("Name","batchnorm_11_0")
    convolution2dLayer([1 1],128,"Name","conv_11_0","Padding","same")
    reluLayer("Name","Relu_11_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_11_1","Padding","same")
    batchNormalizationLayer("Name","batchnorm_11_1")
    convolution2dLayer([1 1],128,"Name","conv_11_1","Padding","same")
    reluLayer("Name","Relu_11_1")
    ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [additionLayer(2,"Name","addition_11_0")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [resize2dLayer("Name","resize-scale_11_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [convolution2dLayer([1 1],128,"Name","conv_11_2","Padding","same")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

wicomnet_1 = connectLayers(wicomnet_1,"resize-scale_21_0","concat_11_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"addition_10_0/out","concat_11_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"resize-scale_21_0","conv_11_2");
wicomnet_1 = connectLayers(wicomnet_1,"Relu_11_1","addition_11_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"conv_11_2","addition_11_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"addition_11_0/out","resize-scale_11_0");

%% Block 01
tempLayers = [
    concatenationLayer(3,2,"Name","concat_01_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_01_0","Padding","same")
    batchNormalizationLayer("Name","batchnorm_01_0")
    convolution2dLayer([1 1],64,"Name","conv_01_0","Padding","same")
    reluLayer("Name","Relu_01_0")
    groupedConvolution2dLayer([3 3],1,"channel-wise","Name","groupedconv_01_1","Padding","same")
    batchNormalizationLayer("Name","batchnorm_01_1")
    convolution2dLayer([1 1],64,"Name","conv_01_1","Padding","same")
    reluLayer("Name","Relu_01_1")
    ];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

tempLayers = [additionLayer(2,"Name","addition_01_0")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);


tempLayers = [convolution2dLayer([1 1],64,"Name","conv_01_2","Padding","same")];
wicomnet_1 = addLayers(wicomnet_1,tempLayers);

wicomnet_1 = connectLayers(wicomnet_1,"resize-scale_11_0","concat_01_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"addition_00_0/out","concat_01_0/in2");
wicomnet_1 = connectLayers(wicomnet_1,"resize-scale_11_0","conv_01_2");
wicomnet_1 = connectLayers(wicomnet_1,"Relu_01_1","addition_01_0/in1");
wicomnet_1 = connectLayers(wicomnet_1,"conv_01_2","addition_01_0/in2");

%% classification layer
classNames = ["Noise" "NR" "LTE" "Unknown"];

tempLayers = [
    convolution2dLayer([3 3],128,"Name","conv_Output_0","Padding",[1 1 1 1]);
    reluLayer("Name","Relu_Output_0")
    convolution2dLayer(1,numel(classNames))
    softmaxLayer("Name","Softmax_output")
    pixelClassificationLayer('Classes',classNames);
    ];

wicomnet_1 = addLayers(wicomnet_1,tempLayers);

% clean up helper variable
clear tempLayers;

%% Output Layer connected
wicomnet_1 = connectLayers(wicomnet_1,"addition_01_0/out","conv_Output_0");

%% Plot Network
plot(wicomnet_1);
analyzeNetwork(wicomnet_1);