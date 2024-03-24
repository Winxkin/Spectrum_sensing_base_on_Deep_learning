lgraph = layerGraph();

%% Layer 1 Down scale
tempLayers = [
    imageInputLayer([256 256 3],"Name","inputs","Normalization","none")
    convolution2dLayer([3 3],64,"Name","Conv_1_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_1_0")
    convolution2dLayer([3 3],64,"Name","Conv_1_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_1_1")];
lgraph = addLayers(lgraph,tempLayers);

%% Layer 2 Down scale

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_2_0","Stride",[2 2])
    convolution2dLayer([3 3],128,"Name","Conv_2_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_2_0")
    convolution2dLayer([3 3],128,"Name","Conv_2_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_2_1")];
lgraph = addLayers(lgraph,tempLayers);
%% Layer 3 Down scale

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_3_0","Stride",[2 2])
    convolution2dLayer([3 3],256,"Name","Conv_3_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_3_0")
    convolution2dLayer([3 3],256,"Name","Conv_3_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_3_1")];
lgraph = addLayers(lgraph,tempLayers);

%% Layer 4 Down scale

tempLayers = [
    maxPooling2dLayer([2 2],"Name","MaxPool_4_0","Stride",[2 2])
    convolution2dLayer([3 3],512,"Name","Conv_4_0","Padding",[1 1 1 1])
    reluLayer("Name","Relu_4_0")
    convolution2dLayer([3 3],512,"Name","Conv_4_1","Padding",[1 1 1 1])
    reluLayer("Name","Relu_4_1")];
lgraph = addLayers(lgraph,tempLayers);

%% Layer 5 Last layer
tempLayers = [
    dropoutLayer(0.5,"Name",'dropout_5_0');
    maxPooling2dLayer([2 2],"Name","MaxPool_5_0","Stride",[2 2]);
    convolution2dLayer([3 3],1024,"Name","Conv_5_0","Padding",[1 1 1 1]);
    convolution2dLayer([3 3],1024,"Name","Conv_5_1","Padding",[1 1 1 1]);
    dropoutLayer(0.5);
    resize2dLayer("Name","resize-scale_5_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
    ];
lgraph = addLayers(lgraph,tempLayers);


%% Layer 4 Up scale
tempLayers = [
    concatenationLayer(3,2,"Name","concat_4_0");
    convolution2dLayer([3 3],512,"Name","Conv_4_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_4_2")
    convolution2dLayer([3 3],512,"Name","Conv_4_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_4_3")
    resize2dLayer("Name","resize-scale_4_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
    ];
lgraph = addLayers(lgraph,tempLayers);


%% Layer 3 Up scale
tempLayers = [
    concatenationLayer(3,2,"Name","concat_3_0");
    convolution2dLayer([3 3],256,"Name","Conv_3_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_3_2")
    convolution2dLayer([3 3],256,"Name","Conv_3_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_3_3")
    resize2dLayer("Name","resize-scale_3_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
    ];
lgraph = addLayers(lgraph,tempLayers);
%% Layer 2 up scale

tempLayers = [
    concatenationLayer(3,2,"Name","concat_2_0");
    convolution2dLayer([3 3],128,"Name","Conv_2_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_2_2")
    convolution2dLayer([3 3],128,"Name","Conv_2_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_2_3")
    resize2dLayer("Name","resize-scale_2_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
    ];
lgraph = addLayers(lgraph,tempLayers);

%% Layer 1 up scale

tempLayers = [
    concatenationLayer(3,2,"Name","concat_1_0");
    convolution2dLayer([3 3],64,"Name","Conv_1_2","Padding",[1 1 1 1])
    reluLayer("Name","Relu_1_2")
    convolution2dLayer([3 3],64,"Name","Conv_1_3","Padding",[1 1 1 1])
    reluLayer("Name","Relu_1_3")
    resize2dLayer("Name","resize-scale_1_0","GeometricTransformMode","half-pixel","Method","bilinear","NearestRoundingMode","round","Scale",[2 2]);
    ];
lgraph = addLayers(lgraph,tempLayers);
