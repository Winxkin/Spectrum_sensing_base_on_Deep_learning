lUnetpp_AGgconv = layerGraph();

%% Define basic layer

tempLayers = [
    imageInputLayer([128 128 3],"Name","inputs","Normalization","none")
    convolution2dLayer([3 3],64,"Name","Conv_00_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_0")
    convolution2dLayer([3 3],64,"Name","Conv_00_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_1")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_10_0","Stride",[2 2])
    groupedConvolution2dLayer([3 3],64,4*2,"Name","Conv_10_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_10_0")
    groupedConvolution2dLayer([3 3],64,4*2,"Name","Conv_10_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_10_1")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_10_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,3,"Name","concat_01_0")
    groupedConvolution2dLayer([3 3],64,2*2,"Name","Conv_01_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_01_0")
    groupedConvolution2dLayer([3 3],64,2*2,"Name","Conv_01_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_01_1")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_20_0","Stride",[2 2])
    groupedConvolution2dLayer([3 3],64,8*2,"Name","Conv_20_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_20_0")
    groupedConvolution2dLayer([3 3],64,8*2,"Name","Conv_20_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_20_1")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_20_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_11_0")
    groupedConvolution2dLayer([3 3],64,4*2,"Name","Conv_11_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_11_0")
    groupedConvolution2dLayer([3 3],64,4*2,"Name","Conv_11_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_11_1")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_30_0","Stride",[2 2])
    groupedConvolution2dLayer([3 3],64,16*2,"Name","Conv_30_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_30_0")
    groupedConvolution2dLayer([3 3],64,16*2,"Name","Conv_30_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_30_1")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_30_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_21_0")
    groupedConvolution2dLayer([3 3],64,8*2,"Name","Conv_21_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_21_0")
    groupedConvolution2dLayer([3 3],64,8*2,"Name","Conv_21_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_21_1")
    resize2dLayer("Name","resize-scale_21_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_11_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,3,"Name","concat_02_0")
    groupedConvolution2dLayer([3 3],64,2*2,"Name","Conv_02_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_02_0")
    groupedConvolution2dLayer([3 3],64,2*2,"Name","Conv_02_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_02_1")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = dropoutLayer(0.5,"Name","dropout_40_0");
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_40_0","Stride",[2 2])
    groupedConvolution2dLayer([3 3],64,32*2,"Name","Conv_40_0","Padding",[1 1 1 1])
    groupedConvolution2dLayer([3 3],64,32*2,"Name","Conv_40_1","Padding",[1 1 1 1])
    dropoutLayer(0.5,"Name","dropout_40_1")
    resize2dLayer("Name","resize-scale_40_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_40_0")
    groupedConvolution2dLayer([3 3],64,16*2,"Name","Conv_40_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_40_2")
    groupedConvolution2dLayer([3 3],64,16*2,"Name","Conv_40_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_40_3")
    resize2dLayer("Name","resize-scale_40_1","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_31_0")
    groupedConvolution2dLayer([3 3],64,16*2,"Name","Conv_31_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_31_0")
    groupedConvolution2dLayer([3 3],64,16*2,"Name","Conv_31_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_31_1")
    dropoutLayer(0.5,"Name","dropout_31_0")
    resize2dLayer("Name","resize-scale_31_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,3,"Name","concat_22_0")
    groupedConvolution2dLayer([3 3],64,8*2,"Name","Conv_22_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_22_0")
    groupedConvolution2dLayer([3 3],64,8*2,"Name","Conv_22_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_22_1")
    resize2dLayer("Name","resize-scale_22_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,3,"Name","concat_12_0")
    groupedConvolution2dLayer([3 3],64,4*2,"Name","Conv_12_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_12_0")
    groupedConvolution2dLayer([3 3],64,4*2,"Name","Conv_12_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_12_1")
    resize2dLayer("Name","resize-scale_12_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,3,"Name","concat_13_0")
    groupedConvolution2dLayer([3 3],64,4*2,"Name","Conv_13_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_13_2")
    groupedConvolution2dLayer([3 3],64,4*2,"Name","Conv_13_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_13_3")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,4,"Name","concat_03_0")
    groupedConvolution2dLayer([3 3],64,2*2,"Name","Conv_03_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_03_0")
    groupedConvolution2dLayer([3 3],64,2*2,"Name","Conv_03_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_03_1")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,5,"Name","concat_04_0")
    groupedConvolution2dLayer([3 3],64,2*2,"Name","Conv_04_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_2")
    groupedConvolution2dLayer([3 3],64,2*2,"Name","Conv_04_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_3")
    convolution2dLayer([3 3],2,"Name","Conv_04_4","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_4")
    convolution2dLayer([3 3],1,"Name","Conv_04_5","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_5")
    sigmoidLayer("Name","sigmoidLayer_04_0")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

%% Attention gate

%% Layer 0 -> 4 gates
%% 01 position
tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_01_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_01_1","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_01_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_01_3","Padding","same")
    ];

lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_01_0")
    reluLayer("Name","reluAG_01_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_01_4","Padding","same")
    sigmoidLayer("Name","sigmoid_01_0")
    convolution2dLayer([1 1],4,"Name","ConvAG_01_5","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% interconnection
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_01_1","additionAG_01_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_01_3","additionAG_01_0/in2");

%% 02 position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_02_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_02_1","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_02_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_02_3","Padding","same")
    ];

lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_02_0")
    reluLayer("Name","reluAG_02_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_02_4","Padding","same")
    sigmoidLayer("Name","sigmoid_02_0")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% interconnection
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_02_1","additionAG_02_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_02_3","additionAG_02_0/in2");

%% 03 position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_03_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_03_1","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_03_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_03_3","Padding","same")
    ];

lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_03_0")
    reluLayer("Name","reluAG_03_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_03_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_03_0")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% interconnection
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_03_1","additionAG_03_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_03_3","additionAG_03_0/in2");

%% 04 Position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_04_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_04_1","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_04_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_04_3","Padding","same")
    ];

lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_04_0")
    reluLayer("Name","reluAG_04_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_04_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_04_0")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% interconnection
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_04_1","additionAG_04_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_04_3","additionAG_04_0/in2");

%% Layer 1 -> 3 gates

%% 11 position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_11_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_11_1","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_11_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_11_3","Padding","same")
    ];

lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_11_0")
    reluLayer("Name","reluAG_11_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_11_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_11_0")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% interconnection
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_11_1","additionAG_11_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_11_3","additionAG_11_0/in2");

%% 12 Position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_12_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_12_1","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_12_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_12_3","Padding","same")
    ];

lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_12_0")
    reluLayer("Name","reluAG_12_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_12_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_12_0")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% interconnection
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_12_1","additionAG_12_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_12_3","additionAG_12_0/in2");

%% 13 Position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_13_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_13_1","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_13_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_13_3","Padding","same")
    ];

lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_13_0")
    reluLayer("Name","reluAG_13_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_13_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_13_0")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% interconnection
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_13_1","additionAG_13_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_13_3","additionAG_13_0/in2");

%% Layer 2 -> 2 gates
%% 21 Position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_21_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_21_1","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_21_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_21_3","Padding","same")
    ];

lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_21_0")
    reluLayer("Name","reluAG_21_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_21_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_21_0")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% interconnection
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_21_1","additionAG_21_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_21_3","additionAG_21_0/in2");

%% 22 Position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_22_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_22_1","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_22_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_22_3","Padding","same")
    ];

lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_22_0")
    reluLayer("Name","reluAG_22_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_22_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_22_0")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% interconnection
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_22_1","additionAG_22_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_22_3","additionAG_22_0/in2");

%% Layer 3 -> 1 gate
%% 31 Position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_31_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_31_1","Padding","same")
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_31_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_31_3","Padding","same")
    ];

lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_31_0")
    reluLayer("Name","reluAG_31_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_31_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_31_0")];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% interconnection
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_31_1","additionAG_31_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_31_3","additionAG_31_0/in2");


%% Ouput Layer
%% classification layer
classNames = ["Noise" "NR" "LTE" "Unknown"];

tempLayers = [
    convolution2dLayer([3 3],128,"Name","conv_Output_0","Padding",[1 1 1 1]);
    reluLayer("Name","Relu_Output_0")
    convolution2dLayer(1,numel(classNames))
    softmaxLayer("Name","Softmax")
    pixelClassificationLayer('Classes',classNames);
    ];
lUnetpp_AGgconv = addLayers(lUnetpp_AGgconv,tempLayers);

% clean up helper variable
clear tempLayers;


%% Connection

lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_00_1","MaxPool_10_0");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_00_1","concat_01_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_00_1","concat_02_0/in3");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_00_1","concat_03_0/in3");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_00_1","concat_04_0/in5");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_10_1","resize-scale_10_0");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_10_1","MaxPool_20_0");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_10_1","concat_11_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_10_1","concat_12_0/in3");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_10_0","concat_01_0/in2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_01_1","concat_02_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_01_1","concat_03_0/in4");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_01_1","concat_04_0/in4");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_20_1","resize-scale_20_0");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_20_1","MaxPool_30_0");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_20_1","concat_21_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_20_0","concat_11_0/in2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_20_0","concat_22_0/in3");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_30_1","resize-scale_30_0");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_30_1","dropout_40_0");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_30_0","concat_21_0/in2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_30_0","concat_31_0/in2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_11_1","resize-scale_11_0");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_11_1","concat_12_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_11_0","concat_02_0/in2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_11_0","concat_13_0/in3");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"dropout_40_0","MaxPool_40_0");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"dropout_40_0","concat_40_0/in2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_40_0","concat_40_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_40_1","concat_31_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_31_0","concat_22_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_02_1","concat_03_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_02_1","concat_04_0/in3");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_21_0","concat_22_0/in2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_21_0","concat_12_0/in2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_22_0","concat_13_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_12_0","concat_13_0/in2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_12_0","concat_03_0/in2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_13_3","concat_04_0/in1");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_03_1","concat_04_0/in2");

%% Connection with attention gate
% 01
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"Relu_00_1","ConvAG_01_2");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"resize-scale_10_0","ConvAG_01_0");
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"ConvAG_01_5","concat_01_0/in3");

%% Connect to output layer
lUnetpp_AGgconv = connectLayers(lUnetpp_AGgconv,"sigmoidLayer_04_0","conv_Output_0");

%% Plot
plot(lUnetpp_AGgconv);