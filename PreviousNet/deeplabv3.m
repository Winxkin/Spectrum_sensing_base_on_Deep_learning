deeplab = layerGraph();

%% Define layout network
tempLayers = imageInputLayer([128 128 3],"Name","data","Normalization","zscore");
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([7 7],64,"Name","conv1","BiasLearnRateFactor",0,"Padding",[3 3 3 3],"Stride",[2 2])
    batchNormalizationLayer("Name","bn_conv1")
    reluLayer("Name","conv1_relu")
    maxPooling2dLayer([3 3],"Name","pool1","Padding",[1 1 1 1],"Stride",[2 2])];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],64,"Name","res2a_branch2a","BiasLearnRateFactor",0,"Padding",[1 1 1 1])
    batchNormalizationLayer("Name","bn2a_branch2a")
    reluLayer("Name","res2a_branch2a_relu")
    convolution2dLayer([3 3],64,"Name","res2a_branch2b","BiasLearnRateFactor",0,"Padding",[1 1 1 1])
    batchNormalizationLayer("Name","bn2a_branch2b")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    additionLayer(2,"Name","res2a")
    reluLayer("Name","res2a_relu")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],64,"Name","res2b_branch2a","BiasLearnRateFactor",0,"Padding",[1 1 1 1])
    batchNormalizationLayer("Name","bn2b_branch2a")
    reluLayer("Name","res2b_branch2a_relu")
    convolution2dLayer([3 3],64,"Name","res2b_branch2b","BiasLearnRateFactor",0,"Padding",[1 1 1 1])
    batchNormalizationLayer("Name","bn2b_branch2b")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    additionLayer(2,"Name","res2b")
    reluLayer("Name","res2b_relu")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","res3a_branch2a","BiasLearnRateFactor",0,"Padding",[1 1 1 1],"Stride",[2 2])
    batchNormalizationLayer("Name","bn3a_branch2a")
    reluLayer("Name","res3a_branch2a_relu")
    convolution2dLayer([3 3],128,"Name","res3a_branch2b","BiasLearnRateFactor",0,"Padding",[1 1 1 1])
    batchNormalizationLayer("Name","bn3a_branch2b")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([1 1],128,"Name","res3a_branch1","BiasLearnRateFactor",0,"Stride",[2 2])
    batchNormalizationLayer("Name","bn3a_branch1")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    additionLayer(2,"Name","res3a")
    reluLayer("Name","res3a_relu")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],128,"Name","res3b_branch2a","BiasLearnRateFactor",0,"Padding",[1 1 1 1])
    batchNormalizationLayer("Name","bn3b_branch2a")
    reluLayer("Name","res3b_branch2a_relu")
    convolution2dLayer([3 3],128,"Name","res3b_branch2b","BiasLearnRateFactor",0,"Padding",[1 1 1 1])
    batchNormalizationLayer("Name","bn3b_branch2b")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    additionLayer(2,"Name","res3b")
    reluLayer("Name","res3b_relu")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],256,"Name","res4a_branch2a","BiasLearnRateFactor",0,"Padding","same","Stride",[2 2])
    batchNormalizationLayer("Name","bn4a_branch2a")
    reluLayer("Name","res4a_branch2a_relu")
    convolution2dLayer([3 3],256,"Name","res4a_branch2b","BiasLearnRateFactor",0,"Padding",[1 1 1 1])
    batchNormalizationLayer("Name","bn4a_branch2b")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([1 1],256,"Name","res4a_branch1","BiasLearnRateFactor",0,"Padding","same","Stride",[2 2])
    batchNormalizationLayer("Name","bn4a_branch1")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    additionLayer(2,"Name","res4a")
    reluLayer("Name","res4a_relu")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],256,"Name","res4b_branch2a","BiasLearnRateFactor",0,"Padding",[1 1 1 1])
    batchNormalizationLayer("Name","bn4b_branch2a")
    reluLayer("Name","res4b_branch2a_relu")
    convolution2dLayer([3 3],256,"Name","res4b_branch2b","BiasLearnRateFactor",0,"Padding",[1 1 1 1])
    batchNormalizationLayer("Name","bn4b_branch2b")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    additionLayer(2,"Name","res4b")
    reluLayer("Name","res4b_relu")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],512,"Name","res5a_branch2a","BiasLearnRateFactor",0,"Padding","same")
    batchNormalizationLayer("Name","bn5a_branch2a")
    reluLayer("Name","res5a_branch2a_relu")
    convolution2dLayer([3 3],512,"Name","res5a_branch2b","BiasLearnRateFactor",0,"DilationFactor",[2 2],"Padding","same")
    batchNormalizationLayer("Name","bn5a_branch2b")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([1 1],512,"Name","res5a_branch1","BiasLearnRateFactor",0)
    batchNormalizationLayer("Name","bn5a_branch1")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    additionLayer(2,"Name","res5a")
    reluLayer("Name","res5a_relu")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],512,"Name","res5b_branch2a","BiasLearnRateFactor",0,"DilationFactor",[2 2],"Padding","same")
    batchNormalizationLayer("Name","bn5b_branch2a")
    reluLayer("Name","res5b_branch2a_relu")
    convolution2dLayer([3 3],512,"Name","res5b_branch2b","BiasLearnRateFactor",0,"DilationFactor",[2 2],"Padding","same")
    batchNormalizationLayer("Name","bn5b_branch2b")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    additionLayer(2,"Name","res5b")
    reluLayer("Name","res5b_relu")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([1 1],256,"Name","aspp_Conv_1","BiasLearnRateFactor",0,"Padding","same","WeightLearnRateFactor",10)
    batchNormalizationLayer("Name","aspp_BatchNorm_1")
    reluLayer("Name","aspp_Relu_1")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],256,"Name","aspp_Conv_2","BiasLearnRateFactor",0,"DilationFactor",[2 2],"Padding","same","WeightLearnRateFactor",10)
    batchNormalizationLayer("Name","aspp_BatchNorm_2")
    reluLayer("Name","aspp_Relu_2")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],256,"Name","aspp_Conv_3","BiasLearnRateFactor",0,"DilationFactor",[4 4],"Padding","same","WeightLearnRateFactor",10)
    batchNormalizationLayer("Name","aspp_BatchNorm_3")
    reluLayer("Name","aspp_Relu_3")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([3 3],256,"Name","aspp_Conv_4","BiasLearnRateFactor",0,"DilationFactor",[8 8],"Padding","same","WeightLearnRateFactor",10)
    batchNormalizationLayer("Name","aspp_BatchNorm_4")
    reluLayer("Name","aspp_Relu_4")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    depthConcatenationLayer(4,"Name","catAspp")
    convolution2dLayer([1 1],256,"Name","dec_c1","BiasLearnRateFactor",0,"WeightLearnRateFactor",10)
    batchNormalizationLayer("Name","dec_bn1")
    reluLayer("Name","dec_relu1")
    transposedConv2dLayer([8 8],256,"Name","dec_upsample1","BiasLearnRateFactor",0,"Cropping",[2 2 2 2],"Stride",[4 4],"WeightLearnRateFactor",0)];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = [
    convolution2dLayer([1 1],48,"Name","dec_c2","BiasLearnRateFactor",0,"WeightLearnRateFactor",10)
    batchNormalizationLayer("Name","dec_bn2")
    reluLayer("Name","dec_relu2")];
deeplab = addLayers(deeplab,tempLayers);

tempLayers = crop2dLayer("centercrop","Name","dec_crop1");
deeplab = addLayers(deeplab,tempLayers);

%% Output Layer
classNames = ["Noise" "NR" "LTE" "Unknown"];

tempLayers = [
    depthConcatenationLayer(2,"Name","dec_cat1")
    convolution2dLayer([3 3],256,"Name","dec_c3","BiasLearnRateFactor",0,"Padding","same","WeightLearnRateFactor",10)
    batchNormalizationLayer("Name","dec_bn3")
    reluLayer("Name","dec_relu3")
    convolution2dLayer([3 3],256,"Name","dec_c4","BiasLearnRateFactor",0,"Padding","same","WeightLearnRateFactor",10)
    batchNormalizationLayer("Name","dec_bn4")
    reluLayer("Name","dec_relu4")
    convolution2dLayer([1 1],numel(classNames),"Name","scorer","BiasLearnRateFactor",0,"WeightLearnRateFactor",10)
    transposedConv2dLayer([8 8],numel(classNames),"Name","dec_upsample2","BiasLearnRateFactor",0,"Cropping",[2 2 2 2],"Stride",[4 4],"WeightLearnRateFactor",0)];
deeplab = addLayers(deeplab,tempLayers);



tempLayers = [
    crop2dLayer("centercrop","Name","dec_crop2")
    softmaxLayer("Name","softmax-out")
    pixelClassificationLayer('Classes',classNames)];
deeplab = addLayers(deeplab,tempLayers);

% clean up helper variable
clear tempLayers;

%% Connection
deeplab = connectLayers(deeplab,"data","conv1");
deeplab = connectLayers(deeplab,"data","dec_crop2/ref");
deeplab = connectLayers(deeplab,"pool1","res2a_branch2a");
deeplab = connectLayers(deeplab,"pool1","res2a/in2");
deeplab = connectLayers(deeplab,"bn2a_branch2b","res2a/in1");
deeplab = connectLayers(deeplab,"res2a_relu","res2b_branch2a");
deeplab = connectLayers(deeplab,"res2a_relu","res2b/in2");
deeplab = connectLayers(deeplab,"bn2b_branch2b","res2b/in1");
deeplab = connectLayers(deeplab,"res2b_relu","res3a_branch2a");
deeplab = connectLayers(deeplab,"res2b_relu","res3a_branch1");
deeplab = connectLayers(deeplab,"res2b_relu","dec_c2");
deeplab = connectLayers(deeplab,"bn3a_branch2b","res3a/in1");
deeplab = connectLayers(deeplab,"bn3a_branch1","res3a/in2");
deeplab = connectLayers(deeplab,"res3a_relu","res3b_branch2a");
deeplab = connectLayers(deeplab,"res3a_relu","res3b/in2");
deeplab = connectLayers(deeplab,"bn3b_branch2b","res3b/in1");
deeplab = connectLayers(deeplab,"res3b_relu","res4a_branch2a");
deeplab = connectLayers(deeplab,"res3b_relu","res4a_branch1");
deeplab = connectLayers(deeplab,"bn4a_branch2b","res4a/in1");
deeplab = connectLayers(deeplab,"bn4a_branch1","res4a/in2");
deeplab = connectLayers(deeplab,"res4a_relu","res4b_branch2a");
deeplab = connectLayers(deeplab,"res4a_relu","res4b/in2");
deeplab = connectLayers(deeplab,"bn4b_branch2b","res4b/in1");
deeplab = connectLayers(deeplab,"res4b_relu","res5a_branch2a");
deeplab = connectLayers(deeplab,"res4b_relu","res5a_branch1");
deeplab = connectLayers(deeplab,"bn5a_branch2b","res5a/in1");
deeplab = connectLayers(deeplab,"bn5a_branch1","res5a/in2");
deeplab = connectLayers(deeplab,"res5a_relu","res5b_branch2a");
deeplab = connectLayers(deeplab,"res5a_relu","res5b/in2");
deeplab = connectLayers(deeplab,"bn5b_branch2b","res5b/in1");
deeplab = connectLayers(deeplab,"res5b_relu","aspp_Conv_1");
deeplab = connectLayers(deeplab,"res5b_relu","aspp_Conv_2");
deeplab = connectLayers(deeplab,"res5b_relu","aspp_Conv_3");
deeplab = connectLayers(deeplab,"res5b_relu","aspp_Conv_4");
deeplab = connectLayers(deeplab,"aspp_Relu_1","catAspp/in1");
deeplab = connectLayers(deeplab,"aspp_Relu_2","catAspp/in2");
deeplab = connectLayers(deeplab,"aspp_Relu_3","catAspp/in3");
deeplab = connectLayers(deeplab,"aspp_Relu_4","catAspp/in4");
deeplab = connectLayers(deeplab,"dec_upsample1","dec_crop1/in");
deeplab = connectLayers(deeplab,"dec_relu2","dec_crop1/ref");
deeplab = connectLayers(deeplab,"dec_relu2","dec_cat1/in1");
deeplab = connectLayers(deeplab,"dec_crop1","dec_cat1/in2");
deeplab = connectLayers(deeplab,"dec_upsample2","dec_crop2/in");

%% Plot Network
plot(deeplab);
analyzeNetwork(deeplab);
