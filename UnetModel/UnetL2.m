lUnetL2 = layerGraph();

tempLayers = [
    imageInputLayer([128 128 3],"Name","inputs","Normalization","rescale-zero-one")
    convolution2dLayer([3 3],64,"Name","Conv_00_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_0")
    convolution2dLayer([3 3],64,"Name","Conv_00_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_1")];
lUnetL2 = addLayers(lUnetL2,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_10_0","Stride",[2 2])
    convolution2dLayer([3 3],128,"Name","Conv_10_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_10_0")
    convolution2dLayer([3 3],128,"Name","Conv_10_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_10_1")];
lUnetL2 = addLayers(lUnetL2,tempLayers);



tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_20_0","Stride",[2 2])
    convolution2dLayer([3 3],1024,"Name","Conv_20_0","Padding",[1 1 1 1])
    convolution2dLayer([3 3],1024,"Name","Conv_20_1","Padding",[1 1 1 1])
    dropoutLayer(0.5,"Name","dropout_20")
    resize2dLayer("Name","resize-scale_20_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetL2 = addLayers(lUnetL2,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_21_0","Stride",[2 2])
    convolution2dLayer([3 3],1024,"Name","Conv_21_0","Padding",[1 1 1 1])
    convolution2dLayer([3 3],1024,"Name","Conv_21_1","Padding",[1 1 1 1])
    dropoutLayer(0.5,"Name","dropout_21")
    resize2dLayer("Name","resize-scale_21_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])
    ];

lUnetL2 = addLayers(lUnetL2,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_10_0")
    convolution2dLayer([3 3],128,"Name","Conv_10_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_10_2")
    convolution2dLayer([3 3],128,"Name","Conv_10_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_10_3")
    resize2dLayer("Name","resize-scale_10_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetL2 = addLayers(lUnetL2,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_00_0")
    convolution2dLayer([3 3],64,"Name","Conv_00_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_2")
    convolution2dLayer([3 3],64,"Name","Conv_00_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_3")
    convolution2dLayer([3 3],2,"Name","Conv_00_4","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_4")
    convolution2dLayer([3 3],1,"Name","Conv_00_5","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_5")
    sigmoidLayer("Name","sigmoidLayer_00_0")
    ];
lUnetL2 = addLayers(lUnetL2,tempLayers);

%% classification layer
classNames = ["Noise" "NR" "LTE" "Unknown"];

tempLayers = [
    convolution2dLayer([3 3],128,"Name","conv_Output_0","Padding",[1 1 1 1]);
    reluLayer("Name","Relu_Output_0")
    convolution2dLayer(1,numel(classNames))
    softmaxLayer("Name","Softmax")
    pixelClassificationLayer('Classes',classNames);
    ];

lUnetL2 = addLayers(lUnetL2,tempLayers);

% clean up helper variable
clear tempLayers;
%% Connection
lUnetL2 = connectLayers(lUnetL2,"Relu_00_1","MaxPool_10_0");
lUnetL2 = connectLayers(lUnetL2,"Relu_10_1","MaxPool_20_0");
lUnetL2 = connectLayers(lUnetL2,"resize-scale_20_0","MaxPool_21_0");
lUnetL2 = connectLayers(lUnetL2,"resize-scale_21_0","concat_10_0/in1");
lUnetL2 = connectLayers(lUnetL2,"resize-scale_10_0","concat_00_0/in1");
lUnetL2 = connectLayers(lUnetL2,"Relu_10_1","concat_10_0/in2");
lUnetL2 = connectLayers(lUnetL2,"Relu_00_1","concat_00_0/in2");

%% Output Layer connected
lUnetL2 = connectLayers(lUnetL2,"sigmoidLayer_00_0","conv_Output_0");

%% Plot Network
plot(lUnetL2);
analyzeNetwork(lUnetL2);
