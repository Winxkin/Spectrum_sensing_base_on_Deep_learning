lUnetpp_AgSPPgconv = layerGraph();

%% Define basic layer

tempLayers = [
    imageInputLayer([128 128 3],"Name","inputs","Normalization","none")
    convolution2dLayer([3 3],64,"Name","Conv_00_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_0")
    convolution2dLayer([3 3],64,"Name","Conv_00_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_1")];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_10_0","Stride",[2 2])
    groupedConvolution2dLayer([3 3],32,4*4,"Name","Conv_10_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_10_0")
    groupedConvolution2dLayer([3 3],32,4*4,"Name","Conv_10_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_10_1")];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_10_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_01_0")
    groupedConvolution2dLayer([3 3],32,2*4,"Name","Conv_01_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_01_0")
    groupedConvolution2dLayer([3 3],32,2*4,"Name","Conv_01_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_01_1")];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_20_0","Stride",[2 2])
    groupedConvolution2dLayer([3 3],32,8*4,"Name","Conv_20_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_20_0")
    groupedConvolution2dLayer([3 3],32,8*4,"Name","Conv_20_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_20_1")];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_20_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_11_0")
    groupedConvolution2dLayer([3 3],32,4*4,"Name","Conv_11_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_11_0")
    groupedConvolution2dLayer([3 3],32,4*4,"Name","Conv_11_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_11_1")];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_30_0","Stride",[2 2])
    groupedConvolution2dLayer([3 3],32,16*4,"Name","Conv_30_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_30_0")
    groupedConvolution2dLayer([3 3],32,16*4,"Name","Conv_30_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_30_1")];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_30_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_21_0")
    groupedConvolution2dLayer([3 3],32,8*4,"Name","Conv_21_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_21_0")
    groupedConvolution2dLayer([3 3],32,8*4,"Name","Conv_21_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_21_1")
    resize2dLayer("Name","resize-scale_21_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_11_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,3,"Name","concat_02_0")
    groupedConvolution2dLayer([3 3],32,2*4,"Name","Conv_02_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_02_0")
    groupedConvolution2dLayer([3 3],32,2*4,"Name","Conv_02_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_02_1")];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = dropoutLayer(0.5,"Name","dropout_40_0");
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_40_0","Stride",[2 2])
    groupedConvolution2dLayer([3 3],32,32*4,"Name","Conv_40_0","Padding",[1 1 1 1])
    groupedConvolution2dLayer([3 3],32,32*4,"Name","Conv_40_1","Padding",[1 1 1 1])
    dropoutLayer(0.5,"Name","dropout_40_1")
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers =   resize2dLayer("Name","resize-scale_40_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_40_0")
    groupedConvolution2dLayer([3 3],32,16*4,"Name","Conv_40_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_40_2")
    groupedConvolution2dLayer([3 3],32,16*4,"Name","Conv_40_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_40_3")
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_31_0")
    groupedConvolution2dLayer([3 3],32,16*4,"Name","Conv_31_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_31_0")
    groupedConvolution2dLayer([3 3],32,16*4,"Name","Conv_31_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_31_1")
    dropoutLayer(0.5,"Name","dropout_31_0")
    resize2dLayer("Name","resize-scale_31_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,3,"Name","concat_22_0")
    groupedConvolution2dLayer([3 3],32,8*4,"Name","Conv_22_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_22_0")
    groupedConvolution2dLayer([3 3],32,8*4,"Name","Conv_22_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_22_1")
    resize2dLayer("Name","resize-scale_22_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,3,"Name","concat_12_0")
    groupedConvolution2dLayer([3 3],32,4*4,"Name","Conv_12_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_12_0")
    groupedConvolution2dLayer([3 3],32,4*4,"Name","Conv_12_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_12_1")
    resize2dLayer("Name","resize-scale_12_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,3,"Name","concat_13_0")
    groupedConvolution2dLayer([3 3],32,4*4,"Name","Conv_13_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_13_2")
    groupedConvolution2dLayer([3 3],32,4*4,"Name","Conv_13_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_13_3")
    resize2dLayer("Name","resize-scale_13_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,4,"Name","concat_03_0")
    groupedConvolution2dLayer([3 3],32,2*4,"Name","Conv_03_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_03_0")
    groupedConvolution2dLayer([3 3],32,2*4,"Name","Conv_03_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_03_1")];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    concatenationLayer(3,5,"Name","concat_04_0")
    groupedConvolution2dLayer([3 3],32,2*4,"Name","Conv_04_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_2")
    groupedConvolution2dLayer([3 3],32,2*4,"Name","Conv_04_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_3")
    convolution2dLayer([3 3],2,"Name","Conv_04_4","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_4")
    convolution2dLayer([3 3],1,"Name","Conv_04_5","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_5")
    sigmoidLayer("Name","sigmoidLayer_04_0")];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

%% ASSP Layer

tempLayers = convolution2dLayer([3 3],64,"Name","ASSP_conv_01","Padding","same");
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = convolution2dLayer([3 3],128,"Name","ASSP_conv_02","DilationFactor",[2 2],"Padding","same");
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = convolution2dLayer([3 3],192,"Name","ASSP_conv_03","DilationFactor",[3 3],"Padding","same");
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);


tempLayers = concatenationLayer(3,7,"Name","ASSP_concat_01");
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ASSP_conv_01","ASSP_concat_01/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ASSP_conv_02","ASSP_concat_01/in2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ASSP_conv_03","ASSP_concat_01/in3");

%% Convolution to connect upper layers with ASSP module
tempLayers = convolution2dLayer([3 3],32,'stride',16,"Name","conv_00_2","Padding","same");
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);
tempLayers = convolution2dLayer([3 3],32,'stride',8,"Name","conv_10_2","Padding","same");
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);
tempLayers = convolution2dLayer([3 3],32,'stride',4,"Name","conv_20_2","Padding","same");
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);
tempLayers = convolution2dLayer([3 3],32,'stride',2,"Name","conv_30_2","Padding","same");
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);


%% Attention gate

%% Layer 0

%% 04 Position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_04_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_04_1","Padding","same")
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_04_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_04_3","Padding","same")
    ];

lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_04_0")
    reluLayer("Name","reluAG_04_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_04_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_04_0")
    convolution2dLayer([1 1],8,"Name","ConvAG_04_5","Padding","same")
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

% interconnection
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_04_1","additionAG_04_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_04_3","additionAG_04_0/in2");

%% Layer 1


%% 13 Position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_13_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_13_1","Padding","same")
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_13_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_13_3","Padding","same")
    ];

lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_13_0")
    reluLayer("Name","reluAG_13_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_13_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_13_0")
    convolution2dLayer([1 1],16,"Name","ConvAG_13_5","Padding","same")
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

% interconnection
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_13_1","additionAG_13_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_13_3","additionAG_13_0/in2");

%% Layer 2 

%% 22 Position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_22_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_22_1","Padding","same")
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_22_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_22_3","Padding","same")
    ];

lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_22_0")
    reluLayer("Name","reluAG_22_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_22_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_22_0")
    convolution2dLayer([1 1],32,"Name","ConvAG_22_5","Padding","same")
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

% interconnection
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_22_1","additionAG_22_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_22_3","additionAG_22_0/in2");

%% Layer 3
%% 31 Position
tempLayers = [
    convolution2dLayer([3 3],64,"Name","ConvAG_31_0","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_31_1","Padding","same")
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","ConvAG_31_2","Padding","same")
    convolution2dLayer([1 1],128,"Name","ConvAG_31_3","Padding","same")
    ];

lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

tempLayers = [
    additionLayer(2,"Name","additionAG_31_0")
    reluLayer("Name","reluAG_31_0")
    convolution2dLayer([1 1],1,"Name","ConvAG_31_4","Padding","same")
    sigmoidLayer("Name","sigmoidAG_31_0")
    convolution2dLayer([1 1],64,"Name","ConvAG_31_5","Padding","same")
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

% interconnection
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_31_1","additionAG_31_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_31_3","additionAG_31_0/in2");


%% classification layer
classNames = ["Noise" "NR" "LTE" "Unknown"];

tempLayers = [
    convolution2dLayer([3 3],128,"Name","conv_Output_0","Padding",[1 1 1 1]);
    reluLayer("Name","Relu_Output_0")
    convolution2dLayer(1,numel(classNames))
    softmaxLayer("Name","Softmax")
    pixelClassificationLayer('Classes',classNames);
    ];
lUnetpp_AgSPPgconv = addLayers(lUnetpp_AgSPPgconv,tempLayers);

% clean up helper variable
clear tempLayers;


%% Connection

lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_00_1","MaxPool_10_0");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_00_1","concat_01_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_00_1","concat_02_0/in3");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_00_1","concat_03_0/in3");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_00_1","concat_04_0/in5");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_10_1","resize-scale_10_0");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_10_1","MaxPool_20_0");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_10_1","concat_11_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_10_1","concat_12_0/in3");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_10_0","concat_01_0/in2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_01_1","concat_02_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_01_1","concat_03_0/in4");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_01_1","concat_04_0/in4");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_20_1","resize-scale_20_0");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_20_1","MaxPool_30_0");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_20_1","concat_21_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_20_0","concat_11_0/in2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_20_1","concat_22_0/in3");           %fixed
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_30_1","resize-scale_30_0");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_30_1","dropout_40_0");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_30_0","concat_21_0/in2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_30_1","concat_31_0/in2");           %Fixed
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_11_1","resize-scale_11_0");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_11_1","concat_12_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_11_0","concat_02_0/in2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_11_1","concat_13_0/in3");           % fixed
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"dropout_40_0","MaxPool_40_0");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"dropout_40_0","concat_40_0/in2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_40_0","concat_40_0/in1");
%lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_40_3","concat_31_0/in1");          % fixed
%lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_31_0","concat_22_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_02_1","concat_03_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_02_1","concat_04_0/in3");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_21_1","concat_22_0/in2");           % fixed
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_21_0","concat_12_0/in2");
%lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_22_0","concat_13_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_12_1","concat_13_0/in2");           % fixed
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_12_0","concat_03_0/in2");
%lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_13_0","concat_04_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_03_1","concat_04_0/in2");

%% Connect to ASSP module
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"dropout_40_1","ASSP_conv_01");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"dropout_40_1","ASSP_conv_02");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"dropout_40_1","ASSP_conv_03");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ASSP_concat_01/out","resize-scale_40_0");

lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_00_1","conv_00_2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_10_1","conv_10_2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_20_1","conv_20_2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_30_1","conv_30_2");

lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"conv_00_2","ASSP_concat_01/in4");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"conv_10_2","ASSP_concat_01/in5");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"conv_20_2","ASSP_concat_01/in6");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"conv_30_2","ASSP_concat_01/in7");

%% Connect to Attention gates
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_03_1","ConvAG_04_2"); 
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_04_5","concat_04_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_13_0","ConvAG_04_0");

lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_12_1","ConvAG_13_2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_13_5","concat_13_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_22_0","ConvAG_13_0");

lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_21_1","ConvAG_22_2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_22_5","concat_22_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"resize-scale_31_0","ConvAG_22_0");

lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_30_1","ConvAG_31_2");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"ConvAG_31_5","concat_31_0/in1");
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"Relu_40_3","ConvAG_31_0");


%% Connect to output layer
lUnetpp_AgSPPgconv = connectLayers(lUnetpp_AgSPPgconv,"sigmoidLayer_04_0","conv_Output_0");

%% Plot
plot(lUnetpp_AgSPPgconv);

analyzeNetwork(lUnetpp_AgSPPgconv);