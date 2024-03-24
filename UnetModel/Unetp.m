lUnetp = layerGraph();

%% Define basic layer for Unet network

tempLayers = [
    imageInputLayer([256 256 3],"Name","inputs","Normalization","none")
    convolution2dLayer([3 3],64,"Name","Conv_00_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_0")
    convolution2dLayer([3 3],64,"Name","Conv_00_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_00_1")];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_10_0","Stride",[2 2])
    convolution2dLayer([3 3],128,"Name","Conv_10_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_10_0")
    convolution2dLayer([3 3],128,"Name","Conv_10_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_10_1")];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_10_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_01_0")
    convolution2dLayer([3 3],64,"Name","Conv_01_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_01_0")
    convolution2dLayer([3 3],64,"Name","Conv_01_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_01_1")];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_20_0","Stride",[2 2])
    convolution2dLayer([3 3],256,"Name","Conv_20_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_20_0")
    convolution2dLayer([3 3],256,"Name","Conv_20_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_20_1")];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_20_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_11_0")
    convolution2dLayer([3 3],128,"Name","Conv_11_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_11_0")
    convolution2dLayer([3 3],128,"Name","Conv_11_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_11_1")];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_30_0","Stride",[2 2])
    convolution2dLayer([3 3],512,"Name","Conv_30_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_30_0")
    convolution2dLayer([3 3],512,"Name","Conv_30_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_30_1")];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_30_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_21_0")
    convolution2dLayer([3 3],256,"Name","Conv_21_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_21_0")
    convolution2dLayer([3 3],256,"Name","Conv_21_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_21_1")
    resize2dLayer("Name","resize-scale_21_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = resize2dLayer("Name","resize-scale_11_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_02_0")
    convolution2dLayer([3 3],64,"Name","Conv_02_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_02_0")
    convolution2dLayer([3 3],64,"Name","Conv_02_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_02_1")];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = dropoutLayer(0.5,"Name","dropout_40_0");
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_40_0","Stride",[2 2])
    convolution2dLayer([3 3],1024,"Name","Conv_40_0","Padding",[1 1 1 1])
    convolution2dLayer([3 3],1024,"Name","Conv_40_1","Padding",[1 1 1 1])
    dropoutLayer(0.5,"Name","dropout_40_1")
    resize2dLayer("Name","resize-scale_40_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_40_0")
    convolution2dLayer([3 3],512,"Name","Conv_40_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_40_2")
    convolution2dLayer([3 3],512,"Name","Conv_40_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_40_3")
    resize2dLayer("Name","resize-scale_40_1","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_31_0")
    convolution2dLayer([3 3],512,"Name","Conv_31_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_31_0")
    convolution2dLayer([3 3],512,"Name","Conv_31_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_31_1")
    dropoutLayer(0.5,"Name","dropout_31_0")
    resize2dLayer("Name","resize-scale_31_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_22_0")
    convolution2dLayer([3 3],256,"Name","Conv_22_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_22_0")
    convolution2dLayer([3 3],256,"Name","Conv_22_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_22_1")
    resize2dLayer("Name","resize-scale_22_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_12_0")
    convolution2dLayer([3 3],128,"Name","Conv_12_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_12_0")
    convolution2dLayer([3 3],128,"Name","Conv_12_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_12_1")
    resize2dLayer("Name","resize-scale_12_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_13_0")
    convolution2dLayer([3 3],128,"Name","Conv_13_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_13_2")
    convolution2dLayer([3 3],128,"Name","Conv_13_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_13_3")];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_03_0")
    convolution2dLayer([3 3],64,"Name","Conv_03_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_03_0")
    convolution2dLayer([3 3],64,"Name","Conv_03_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_03_1")];
lUnetp = addLayers(lUnetp,tempLayers);

tempLayers = [
    concatenationLayer(3,5,"Name","concat_04_0")
    convolution2dLayer([3 3],64,"Name","Conv_04_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_2")
    convolution2dLayer([3 3],64,"Name","Conv_04_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_3")
    convolution2dLayer([3 3],2,"Name","Conv_04_4","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_4")
    convolution2dLayer([3 3],1,"Name","Conv_04_5","Padding",[1 1 1 1])
    reluLayer("Name","Relu_04_5")
    sigmoidLayer("Name","sigmoidLayer_04_0")];
lUnetp = addLayers(lUnetp,tempLayers);

%% classification layer
numofclass = 3;
tempLayers = [
    maxPooling2dLayer([5 5],"Name","maxpooling","Padding","same")
    fullyConnectedLayer(numofclass,"Name","fullyconnected")
    classificationLayer("Name","classoutput")
    ];
lUnetp = addLayers(lUnetp,tempLayers);

% clean up helper variable
clear tempLayers;

%% Connection
lUnetp = connectLayers(lUnetp,"Relu_00_1","MaxPool_10_0");
lUnetp = connectLayers(lUnetp,"Relu_00_1","concat_01_0/in1");
lUnetp = connectLayers(lUnetp,"Relu_00_1","concat_04_0/in5");
lUnetp = connectLayers(lUnetp,"Relu_10_1","resize-scale_10_0");
lUnetp = connectLayers(lUnetp,"Relu_10_1","MaxPool_20_0");
lUnetp = connectLayers(lUnetp,"Relu_10_1","concat_11_0/in1");
lUnetp = connectLayers(lUnetp,"resize-scale_10_0","concat_01_0/in2");
lUnetp = connectLayers(lUnetp,"Relu_01_1","concat_02_0/in1");
lUnetp = connectLayers(lUnetp,"Relu_01_1","concat_04_0/in4");
lUnetp = connectLayers(lUnetp,"Relu_20_1","resize-scale_20_0");
lUnetp = connectLayers(lUnetp,"Relu_20_1","MaxPool_30_0");
lUnetp = connectLayers(lUnetp,"Relu_20_1","concat_21_0/in1");
lUnetp = connectLayers(lUnetp,"resize-scale_20_0","concat_11_0/in2");
lUnetp = connectLayers(lUnetp,"Relu_30_1","resize-scale_30_0");
lUnetp = connectLayers(lUnetp,"Relu_30_1","dropout_40_0");
lUnetp = connectLayers(lUnetp,"resize-scale_30_0","concat_21_0/in2");
lUnetp = connectLayers(lUnetp,"resize-scale_30_0","concat_31_0/in2");
lUnetp = connectLayers(lUnetp,"Relu_11_1","resize-scale_11_0");
lUnetp = connectLayers(lUnetp,"Relu_11_1","concat_12_0/in1");
lUnetp = connectLayers(lUnetp,"resize-scale_11_0","concat_02_0/in2");
lUnetp = connectLayers(lUnetp,"dropout_40_0","MaxPool_40_0");
lUnetp = connectLayers(lUnetp,"dropout_40_0","concat_40_0/in2");
lUnetp = connectLayers(lUnetp,"resize-scale_40_0","concat_40_0/in1");
lUnetp = connectLayers(lUnetp,"resize-scale_40_1","concat_31_0/in1");
lUnetp = connectLayers(lUnetp,"resize-scale_31_0","concat_22_0/in1");
lUnetp = connectLayers(lUnetp,"Relu_02_1","concat_03_0/in1");
lUnetp = connectLayers(lUnetp,"Relu_02_1","concat_04_0/in3");
lUnetp = connectLayers(lUnetp,"resize-scale_21_0","concat_22_0/in2");
lUnetp = connectLayers(lUnetp,"resize-scale_21_0","concat_12_0/in2");
lUnetp = connectLayers(lUnetp,"resize-scale_22_0","concat_13_0/in1");
lUnetp = connectLayers(lUnetp,"resize-scale_12_0","concat_13_0/in2");
lUnetp = connectLayers(lUnetp,"resize-scale_12_0","concat_03_0/in2");
lUnetp = connectLayers(lUnetp,"Relu_13_3","concat_04_0/in1");
lUnetp = connectLayers(lUnetp,"Relu_03_1","concat_04_0/in2");
lUnetp = connectLayers(lUnetp,"sigmoidLayer_04_0","maxpooling");

plot(lUnetp);

