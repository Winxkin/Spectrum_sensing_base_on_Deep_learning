lgraph = layerGraph();

tempLayers = [
    imageInputLayer([256 256 3],"Name","inputs","Normalization","none")
    convolution2dLayer([3 3],64,"Name","Conv_1_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_1_0")
    convolution2dLayer([3 3],64,"Name","Conv_1_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_1_1")];
lgraph = addLayers(lgraph,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_2_0","Stride",[2 2])
    convolution2dLayer([3 3],128,"Name","Conv_2_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_2_0")
    convolution2dLayer([3 3],128,"Name","Conv_2_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_2_1")];
lgraph = addLayers(lgraph,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_3_0","Stride",[2 2])
    convolution2dLayer([3 3],256,"Name","Conv_3_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_3_0")
    convolution2dLayer([3 3],256,"Name","Conv_3_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_3_1")];
lgraph = addLayers(lgraph,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_4_0","Stride",[2 2])
    convolution2dLayer([3 3],512,"Name","Conv_4_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_4_0")
    convolution2dLayer([3 3],512,"Name","Conv_4_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_4_1")
    dropoutLayer(0.5,"Name","dropout_5_0")];
lgraph = addLayers(lgraph,tempLayers);

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_5_0","Stride",[2 2])
    convolution2dLayer([3 3],1024,"Name","Conv_5_0","Padding",[1 1 1 1])
    convolution2dLayer([3 3],1024,"Name","Conv_5_1","Padding",[1 1 1 1])
    dropoutLayer(0.5,"Name","dropout")
    resize2dLayer("Name","resize-scale_5_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lgraph = addLayers(lgraph,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_4_0")
    convolution2dLayer([3 3],512,"Name","Conv_4_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_4_2")
    convolution2dLayer([3 3],512,"Name","Conv_4_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_4_3")
    resize2dLayer("Name","resize-scale_4_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lgraph = addLayers(lgraph,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_3_0")
    convolution2dLayer([3 3],256,"Name","Conv_3_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_3_2")
    convolution2dLayer([3 3],256,"Name","Conv_3_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_3_3")
    resize2dLayer("Name","resize-scale_3_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lgraph = addLayers(lgraph,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_2_0")
    convolution2dLayer([3 3],128,"Name","Conv_2_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_2_2")
    convolution2dLayer([3 3],128,"Name","Conv_2_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_2_3")
    resize2dLayer("Name","resize-scale_2_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2])];
lgraph = addLayers(lgraph,tempLayers);

tempLayers = [
    concatenationLayer(3,2,"Name","concat_1_0")
    convolution2dLayer([3 3],64,"Name","Conv_1_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_1_2")
    convolution2dLayer([3 3],64,"Name","Conv_1_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_1_3")
    convolution2dLayer([3 3],2,"Name","Conv_1_4","Padding",[1 1 1 1])
    reluLayer("Name","Relu_1_4")
    convolution2dLayer([3 3],1,"Name","Conv_1_5","Padding",[1 1 1 1])
    reluLayer("Name","Relu_1_5")
    sigmoidLayer("Name","sigmoidLayer_1_0")];
lgraph = addLayers(lgraph,tempLayers);

% clean up helper variable
clear tempLayers;

% clean up helper variable
clear tempLayers;
%% Connection
lgraph = connectLayers(lgraph,"Relu_1_1","MaxPool_2_0");
lgraph = connectLayers(lgraph,"Relu_1_1","concat_1_0/in2");
lgraph = connectLayers(lgraph,"Relu_2_1","MaxPool_3_0");
lgraph = connectLayers(lgraph,"Relu_2_1","concat_2_0/in2");
lgraph = connectLayers(lgraph,"Relu_3_1","MaxPool_4_0");
lgraph = connectLayers(lgraph,"Relu_3_1","concat_3_0/in2");
lgraph = connectLayers(lgraph,"dropout_5_0","MaxPool_5_0");
lgraph = connectLayers(lgraph,"dropout_5_0","concat_4_0/in2");
lgraph = connectLayers(lgraph,"resize-scale_5_0","concat_4_0/in1");
lgraph = connectLayers(lgraph,"resize-scale_4_0","concat_3_0/in1");
lgraph = connectLayers(lgraph,"resize-scale_3_0","concat_2_0/in1");
lgraph = connectLayers(lgraph,"resize-scale_2_0","concat_1_0/in1");

plot(lgraph);

