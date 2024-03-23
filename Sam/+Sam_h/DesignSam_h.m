net = dlnetwork;

tempNet = helperNnetOnnxLayerCustomInputLayerMultiOutput("image_embeddings",4,compose("Layer input must be a labeled dlarray with the dimension order shown in the ONNX model file.\nYou must pass the size:\n    (1, 256, 64, 64)\nThe dlarray must have a format string consisting of one 'U' for each dimension: 'dlarray(data, 'UUUU')'"),true,"in",["image_embeddings" "image_embeddingsNumDims"]);
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerCustomInputLayerMultiOutput("point_coords",3,compose("Layer input must be a labeled dlarray with the dimension order shown in the ONNX model file.\nYou must pass the size:\n    (1, num_points, 2)\nThe dlarray must have a format string consisting of one 'U' for each dimension: 'dlarray(data, 'UUU')'"),true,"in",["point_coords" "point_coordsNumDims"]);
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerCustomInputLayerMultiOutput("point_labels",2,compose("Layer input must be a labeled dlarray with the dimension order shown in the ONNX model file.\nYou must pass the size:\n    (1, num_points)\nThe dlarray must have a format string consisting of one 'U' for each dimension: 'dlarray(data, 'UU')'"),true,"in",["point_labels" "point_labelsNumDims"]);
net = addLayers(net,tempNet);

tempNet = [
    imageInputLayer([256 256 1],"Name","mask_input","Normalization","none")
    convolution2dLayer([2 2],4,"Name","x_mask_downscalin_41","Stride",[2 2])
    helperSamHReduceMeanToReduceMeanLayer1045("ReduceMean_To_ReduceMeanLayer1045","Unable to generate code for [1x1 ONNXParameters] object","in",["x_mask_downscalin_8" "x_mask_downscalin_11"])];
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerCustomInputLayerMultiOutput("has_mask_input",1,compose("Layer input must be a labeled dlarray with the dimension order shown in the ONNX model file.\nYou must pass the size:\n    (1, 1)\nThe dlarray must have a format string consisting of one 'U' for each dimension: 'dlarray(data, 'UU')'"),true,"in",["has_mask_input" "has_mask_inputNumDims"]);
net = addLayers(net,tempNet);

tempNet = [
    helperNnetOnnxLayerCustomInputLayerMultiOutput("orig_im_size",1,compose("Layer input must be a labeled dlarray with the dimension order shown in the ONNX model file.\nYou must pass the size:\n    (2, 1)\nThe dlarray must have a format string consisting of one 'U' for each dimension: 'dlarray(data, 'UU')'"),true,"in",["orig_im_size" "orig_im_sizeNumDims"])
    helperSamHCastToCastLayer1054("Cast_To_CastLayer1054","Unable to generate code for [1x1 ONNXParameters] object",["in1" "in2"],["x_Cast_8_output_0" "x_Cast_8_output_0NumDims"])];
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerElementwiseAffineLayer("x_mask_downscalin_42",1,9.99999997475243e-07,false,true,"in","out");
net = addLayers(net,tempNet);

tempNet = [
    helperSamHSqrtToDivLayer1050("Sqrt_To_DivLayer1050","Unable to generate code for [1x1 ONNXParameters] object",["in1" "in2"],"x_mask_downscalin_5")
    helperNnetOnnxLayerElementwiseAffineLayer("x_mask_downscalin_47","Unable to generate code for [1x1x4 single] object",0,true,false,"in","out")
    helperNnetOnnxLayerElementwiseAffineLayer("x_mask_downscalin_43",1,"Unable to generate code for [1x1x4 single] object",false,true,"in","out")];
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerElementwiseAffineLayer("x_mask_downscalin_57",0.70710676908493,0,true,false,"in","out");
net = addLayers(net,tempNet);

tempNet = [
    helperSamHErfToMulLayer1004("Erf_To_MulLayer1004","Unable to generate code for [1x1 ONNXParameters] object",["in1" "in2"],"x_mask_downscalin_19")
    helperNnetOnnxLayerElementwiseAffineLayer("x_mask_downscalin_60",0.5,0,true,false,"in","out")
    convolution2dLayer([2 2],16,"Name","x_mask_downscalin_61","Stride",[2 2])
    helperSamHReduceMeanToReduceMeanLayer1033("ReduceMean_To_ReduceMeanLayer1033","Unable to generate code for [1x1 ONNXParameters] object","in",["x_mask_downscalin_28" "x_mask_downscalin_31"])];
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerElementwiseAffineLayer("x_mask_downscalin_62",1,9.99999997475243e-07,false,true,"in","out");
net = addLayers(net,tempNet);

tempNet = [
    helperSamHSqrtToDivLayer1038("Sqrt_To_DivLayer1038","Unable to generate code for [1x1 ONNXParameters] object",["in1" "in2"],"x_mask_downscalin_25")
    helperNnetOnnxLayerElementwiseAffineLayer("x_mask_downscalin_67","Unable to generate code for [1x1x16 single] object",0,true,false,"in","out")
    helperNnetOnnxLayerElementwiseAffineLayer("x_mask_downscalin_63",1,"Unable to generate code for [1x1x16 single] object",false,true,"in","out")];
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerElementwiseAffineLayer("x_mask_downscalin_77",0.70710676908493,0,true,false,"in","out");
net = addLayers(net,tempNet);

tempNet = [
    helperSamHErfToMulLayer1009("Erf_To_MulLayer1009","Unable to generate code for [1x1 ONNXParameters] object",["in1" "in2"],"x_mask_downscalin_39")
    helperNnetOnnxLayerElementwiseAffineLayer("x_mask_downscalin_80",0.5,0,true,false,"in","out")
    convolution2dLayer([1 1],256,"Name","x_mask_downscalin_81")];
net = addLayers(net,tempNet);

tempNet = helperSamHUnsqueezeToReshapeLayer1127("Unsqueeze_To_ReshapeLayer1127","Unable to generate code for [1x1 ONNXParameters] object",["in1" "in2" "in3" "in4" "in5" "in6" "in7" "in8" "in9"],["iou_predictions" "x_Reshape_7_output_0" "x_Concat_10_output_0" "x_Concat_10_output_0NumDims"]);
net = addLayers(net,tempNet);

tempNet = [
    transposedConv2dLayer([2 2],64,"Name","x_output_upscalin_29","Stride",[2 2])
    helperSamHReduceMeanToReduceMeanLayer1021("ReduceMean_To_ReduceMeanLayer1021","Unable to generate code for [1x1 ONNXParameters] object","in",["x_output_upscalin_8" "x_output_upscalin_11"])];
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerElementwiseAffineLayer("x_output_upscalin_30",1,9.99999997475243e-07,false,true,"in","out");
net = addLayers(net,tempNet);

tempNet = [
    helperSamHSqrtToDivLayer1026("Sqrt_To_DivLayer1026","Unable to generate code for [1x1 ONNXParameters] object",["in1" "in2"],"x_output_upscalin_5")
    helperNnetOnnxLayerElementwiseAffineLayer("x_output_upscalin_35","Unable to generate code for [1x1x64 single] object",0,true,false,"in","out")
    helperNnetOnnxLayerElementwiseAffineLayer("x_output_upscalin_31",1,"Unable to generate code for [1x1x64 single] object",false,true,"in","out")];
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerElementwiseAffineLayer("x_output_upscalin_45",0.70710676908493,0,true,false,"in","out");
net = addLayers(net,tempNet);

tempNet = [
    helperSamHErfToMulLayer1014("Erf_To_MulLayer1014","Unable to generate code for [1x1 ONNXParameters] object",["in1" "in2"],"x_output_upscalin_19")
    helperNnetOnnxLayerElementwiseAffineLayer("x_output_upscalin_48",0.5,0,true,false,"in","out")
    transposedConv2dLayer([2 2],32,"Name","x_output_upscalin_49","Stride",[2 2])];
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerElementwiseAffineLayer("x_output_upscalin_54",0.70710676908493,0,true,false,"in","out");
net = addLayers(net,tempNet);

tempNet = helperSamHErfToResizeLayer1135("Erf_To_ResizeLayer1135","Unable to generate code for [1x1 ONNXParameters] object",["in1" "in2" "in3" "in4" "in5" "in6"],["masks" "low_res_masks"]);
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerCustomOutputLayer("masksOutput",compose("Layer outputs a labeled dlarray with the dimension order shown in the ONNX model file.\nOutput size is:\n    (Resizemasks_dim_0, Resizemasks_dim_1, Resizemasks_dim_2, Resizemasks_dim_3)"),"UUUU",true,"in","out");
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerCustomOutputLayer("iou_predictionsOutput",compose("Layer outputs a labeled dlarray with the dimension order shown in the ONNX model file.\nOutput size is:\n    (Gemmiou_predictions_dim_0, 4)"),"UU",true,"in","out");
net = addLayers(net,tempNet);

tempNet = helperNnetOnnxLayerCustomOutputLayer("low_res_masksOutput",compose("Layer outputs a labeled dlarray with the dimension order shown in the ONNX model file.\nOutput size is:\n    (Reshapelow_res_masks_dim_0, Reshapelow_res_masks_dim_1, Reshapelow_res_masks_dim_2, Reshapelow_res_masks_dim_3)"),"UUUU",true,"in","out");
net = addLayers(net,tempNet);

% clean up helper variable
clear tempNet;

net = connectLayers(net,"image_embeddings/image_embeddings","Unsqueeze_To_ReshapeLayer1127/in5");
net = connectLayers(net,"image_embeddings/image_embeddingsNumDims","Unsqueeze_To_ReshapeLayer1127/in9");
net = connectLayers(net,"point_coords/point_coords","Unsqueeze_To_ReshapeLayer1127/in1");
net = connectLayers(net,"point_coords/point_coordsNumDims","Unsqueeze_To_ReshapeLayer1127/in6");
net = connectLayers(net,"point_labels/point_labels","Unsqueeze_To_ReshapeLayer1127/in2");
net = connectLayers(net,"point_labels/point_labelsNumDims","Unsqueeze_To_ReshapeLayer1127/in7");
net = connectLayers(net,"has_mask_input/has_mask_input","Unsqueeze_To_ReshapeLayer1127/in3");
net = connectLayers(net,"has_mask_input/has_mask_inputNumDims","Unsqueeze_To_ReshapeLayer1127/in8");
net = connectLayers(net,"orig_im_size/orig_im_sizeNumDims","Cast_To_CastLayer1054/in2");
net = connectLayers(net,"ReduceMean_To_ReduceMeanLayer1045/x_mask_downscalin_8","x_mask_downscalin_42");
net = connectLayers(net,"ReduceMean_To_ReduceMeanLayer1045/x_mask_downscalin_11","Sqrt_To_DivLayer1050/in2");
net = connectLayers(net,"x_mask_downscalin_42","Sqrt_To_DivLayer1050/in1");
net = connectLayers(net,"x_mask_downscalin_43","x_mask_downscalin_57");
net = connectLayers(net,"x_mask_downscalin_43","Erf_To_MulLayer1004/in2");
net = connectLayers(net,"x_mask_downscalin_57","Erf_To_MulLayer1004/in1");
net = connectLayers(net,"ReduceMean_To_ReduceMeanLayer1033/x_mask_downscalin_28","x_mask_downscalin_62");
net = connectLayers(net,"ReduceMean_To_ReduceMeanLayer1033/x_mask_downscalin_31","Sqrt_To_DivLayer1038/in2");
net = connectLayers(net,"x_mask_downscalin_62","Sqrt_To_DivLayer1038/in1");
net = connectLayers(net,"x_mask_downscalin_63","x_mask_downscalin_77");
net = connectLayers(net,"x_mask_downscalin_63","Erf_To_MulLayer1009/in2");
net = connectLayers(net,"x_mask_downscalin_77","Erf_To_MulLayer1009/in1");
net = connectLayers(net,"x_mask_downscalin_81","Unsqueeze_To_ReshapeLayer1127/in4");
net = connectLayers(net,"Unsqueeze_To_ReshapeLayer1127/x_Reshape_7_output_0","x_output_upscalin_29");
net = connectLayers(net,"Unsqueeze_To_ReshapeLayer1127/x_Concat_10_output_0","Erf_To_ResizeLayer1135/in3");
net = connectLayers(net,"Unsqueeze_To_ReshapeLayer1127/x_Concat_10_output_0NumDims","Erf_To_ResizeLayer1135/in5");
net = connectLayers(net,"Unsqueeze_To_ReshapeLayer1127/iou_predictions","iou_predictionsOutput");
net = connectLayers(net,"ReduceMean_To_ReduceMeanLayer1021/x_output_upscalin_8","x_output_upscalin_30");
net = connectLayers(net,"ReduceMean_To_ReduceMeanLayer1021/x_output_upscalin_11","Sqrt_To_DivLayer1026/in2");
net = connectLayers(net,"x_output_upscalin_30","Sqrt_To_DivLayer1026/in1");
net = connectLayers(net,"x_output_upscalin_31","x_output_upscalin_45");
net = connectLayers(net,"x_output_upscalin_31","Erf_To_MulLayer1014/in2");
net = connectLayers(net,"x_output_upscalin_45","Erf_To_MulLayer1014/in1");
net = connectLayers(net,"x_output_upscalin_49","x_output_upscalin_54");
net = connectLayers(net,"x_output_upscalin_49","Erf_To_ResizeLayer1135/in2");
net = connectLayers(net,"x_output_upscalin_54","Erf_To_ResizeLayer1135/in1");
net = connectLayers(net,"Cast_To_CastLayer1054/x_Cast_8_output_0","Erf_To_ResizeLayer1135/in4");
net = connectLayers(net,"Cast_To_CastLayer1054/x_Cast_8_output_0NumDims","Erf_To_ResizeLayer1135/in6");
net = connectLayers(net,"Erf_To_ResizeLayer1135/masks","masksOutput");
net = connectLayers(net,"Erf_To_ResizeLayer1135/low_res_masks","low_res_masksOutput");

%% Define Function
function layer = helperNnetOnnxLayerCustomInputLayerMultiOutput(name,numDims,inputInformation,isInputForwardONNX,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type nnet.onnx.layer.CustomInputLayerMultiOutput.
end
function layer = helperNnetOnnxLayerCustomOutputLayer(name,outputInformation,dataFormat,isInputForwardONNX,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type nnet.onnx.layer.CustomOutputLayer.
end
function layer = helperNnetOnnxLayerElementwiseAffineLayer(name,scale,offset,doScale,doOffset,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type nnet.onnx.layer.ElementwiseAffineLayer.
end
function layer = helperSamHCastToCastLayer1054(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.Cast_To_CastLayer1054.
end
function layer = helperSamHErfToMulLayer1004(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.Erf_To_MulLayer1004.
end
function layer = helperSamHErfToMulLayer1009(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.Erf_To_MulLayer1009.
end
function layer = helperSamHErfToMulLayer1014(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.Erf_To_MulLayer1014.
end
function layer = helperSamHErfToResizeLayer1135(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.Erf_To_ResizeLayer1135.
end
function layer = helperSamHReduceMeanToReduceMeanLayer1021(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.ReduceMean_To_ReduceMeanLayer1021.
end
function layer = helperSamHReduceMeanToReduceMeanLayer1033(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.ReduceMean_To_ReduceMeanLayer1033.
end
function layer = helperSamHReduceMeanToReduceMeanLayer1045(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.ReduceMean_To_ReduceMeanLayer1045.
end
function layer = helperSamHSqrtToDivLayer1026(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.Sqrt_To_DivLayer1026.
end
function layer = helperSamHSqrtToDivLayer1038(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.Sqrt_To_DivLayer1038.
end
function layer = helperSamHSqrtToDivLayer1050(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.Sqrt_To_DivLayer1050.
end
function layer = helperSamHUnsqueezeToReshapeLayer1127(name,oNNXParams,inputNames,outputNames)
% Define this function before running the script.
% The function must create and return a layer of type Sam_h.Unsqueeze_To_ReshapeLayer1127.
end