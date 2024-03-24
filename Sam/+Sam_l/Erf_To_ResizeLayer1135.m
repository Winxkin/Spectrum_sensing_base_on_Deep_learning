classdef Erf_To_ResizeLayer1135 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.
    
    %#codegen
    %#ok<*PROPLC>
    %#ok<*NBRAK>
    %#ok<*INUSL>
    %#ok<*VARARG>
    
    properties (Learnable)
        onnx__Unsqueeze_1657
        onnx__Unsqueeze_1659
        onnx__Unsqueeze_1661
        onnx__Unsqueeze_1666
        onnx__Unsqueeze_1670
        onnx__Unsqueeze_1672
    end
    
    properties
        ONNXParams         % An ONNXParameters object containing parameters used by this layer.
    end
    
    methods
        function this = Erf_To_ResizeLayer1135(name, onnxParams)
            this.Name = name;
            this.NumInputs = 6;
            this.NumOutputs = 2;
            this.OutputNames = {'masks', 'low_res_masks'};
            this.ONNXParams = onnxParams;
            this.onnx__Unsqueeze_1657 = onnxParams.Learnables.onnx__Unsqueeze_1657;
            this.onnx__Unsqueeze_1659 = onnxParams.Learnables.onnx__Unsqueeze_1659;
            this.onnx__Unsqueeze_1661 = onnxParams.Learnables.onnx__Unsqueeze_1661;
            this.onnx__Unsqueeze_1666 = onnxParams.Learnables.onnx__Unsqueeze_1666;
            this.onnx__Unsqueeze_1670 = onnxParams.Learnables.onnx__Unsqueeze_1670;
            this.onnx__Unsqueeze_1672 = onnxParams.Learnables.onnx__Unsqueeze_1672;
        end
        
        function [masks, low_res_masks] = predict(this, x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, x_Concat_10_output_0NumDims, x_Cast_8_output_0NumDims)
            if isdlarray(x_output_upscalin_25)
                x_output_upscalin_25 = stripdims(x_output_upscalin_25);
            end
            if isdlarray(x_output_upscalin_20)
                x_output_upscalin_20 = stripdims(x_output_upscalin_20);
            end
            if isdlarray(x_Concat_10_output_0)
                x_Concat_10_output_0 = stripdims(x_Concat_10_output_0);
            end
            if isdlarray(x_Cast_8_output_0)
                x_Cast_8_output_0 = stripdims(x_Cast_8_output_0);
            end
            x_output_upscalin_25NumDims = 4;
            x_output_upscalin_20NumDims = 4;
            x_Concat_10_output_0NumDims = numel(x_Concat_10_output_0NumDims);
            x_Cast_8_output_0NumDims = numel(x_Cast_8_output_0NumDims);
            onnxParams = this.ONNXParams;
            onnxParams.Learnables.onnx__Unsqueeze_1657 = this.onnx__Unsqueeze_1657;
            onnxParams.Learnables.onnx__Unsqueeze_1659 = this.onnx__Unsqueeze_1659;
            onnxParams.Learnables.onnx__Unsqueeze_1661 = this.onnx__Unsqueeze_1661;
            onnxParams.Learnables.onnx__Unsqueeze_1666 = this.onnx__Unsqueeze_1666;
            onnxParams.Learnables.onnx__Unsqueeze_1670 = this.onnx__Unsqueeze_1670;
            onnxParams.Learnables.onnx__Unsqueeze_1672 = this.onnx__Unsqueeze_1672;
            [masks, low_res_masks, masksNumDims, low_res_masksNumDims] = Erf_To_ResizeFcn(x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, x_output_upscalin_25NumDims, x_output_upscalin_20NumDims, x_Concat_10_output_0NumDims, x_Cast_8_output_0NumDims, onnxParams, 'Training', false, ...
                'InputDataPermutation', {[4 3 1 2], [4 3 1 2], ['as-is'], ['as-is'], ['as-is'], ['as-is'], ['as-is'], ['as-is']}, ...
                'OutputDataPermutation', {['as-is'], ['as-is'], ['as-is'], ['as-is']});
            if any(cellfun(@(A)~isnumeric(A) && ~islogical(A), {masks, low_res_masks}))
                fprintf('Runtime error in network. At least one output of custom layer ''%s'' is a non-numeric, non-logical value.\n', 'Erf_To_ResizeLayer1135');
                error(message('nnet_cnn_onnx:onnx:BadCustomLayerRuntimeOutput', 'Erf_To_ResizeLayer1135'));
            end
            masks = dlarray(single(masks), repmat('U', 1, max(2, masksNumDims)));
            low_res_masks = dlarray(single(low_res_masks), repmat('U', 1, max(2, low_res_masksNumDims)));
            if ~coder.target('MATLAB')
                masks = extractdata(masks);
                low_res_masks = extractdata(low_res_masks);
            end
        end
        
        function [masks, low_res_masks] = forward(this, x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, x_Concat_10_output_0NumDims, x_Cast_8_output_0NumDims)
            if isdlarray(x_output_upscalin_25)
                x_output_upscalin_25 = stripdims(x_output_upscalin_25);
            end
            if isdlarray(x_output_upscalin_20)
                x_output_upscalin_20 = stripdims(x_output_upscalin_20);
            end
            if isdlarray(x_Concat_10_output_0)
                x_Concat_10_output_0 = stripdims(x_Concat_10_output_0);
            end
            if isdlarray(x_Cast_8_output_0)
                x_Cast_8_output_0 = stripdims(x_Cast_8_output_0);
            end
            x_output_upscalin_25NumDims = 4;
            x_output_upscalin_20NumDims = 4;
            x_Concat_10_output_0NumDims = numel(x_Concat_10_output_0NumDims);
            x_Cast_8_output_0NumDims = numel(x_Cast_8_output_0NumDims);
            onnxParams = this.ONNXParams;
            onnxParams.Learnables.onnx__Unsqueeze_1657 = this.onnx__Unsqueeze_1657;
            onnxParams.Learnables.onnx__Unsqueeze_1659 = this.onnx__Unsqueeze_1659;
            onnxParams.Learnables.onnx__Unsqueeze_1661 = this.onnx__Unsqueeze_1661;
            onnxParams.Learnables.onnx__Unsqueeze_1666 = this.onnx__Unsqueeze_1666;
            onnxParams.Learnables.onnx__Unsqueeze_1670 = this.onnx__Unsqueeze_1670;
            onnxParams.Learnables.onnx__Unsqueeze_1672 = this.onnx__Unsqueeze_1672;
            [masks, low_res_masks, masksNumDims, low_res_masksNumDims] = Erf_To_ResizeFcn(x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, x_output_upscalin_25NumDims, x_output_upscalin_20NumDims, x_Concat_10_output_0NumDims, x_Cast_8_output_0NumDims, onnxParams, 'Training', true, ...
                'InputDataPermutation', {[4 3 1 2], [4 3 1 2], ['as-is'], ['as-is'], ['as-is'], ['as-is'], ['as-is'], ['as-is']}, ...
                'OutputDataPermutation', {['as-is'], ['as-is'], ['as-is'], ['as-is']});
            if any(cellfun(@(A)~isnumeric(A) && ~islogical(A), {masks, low_res_masks}))
                fprintf('Runtime error in network. At least one output of custom layer ''%s'' is a non-numeric, non-logical value.\n', 'Erf_To_ResizeLayer1135');
                error(message('nnet_cnn_onnx:onnx:BadCustomLayerRuntimeOutput', 'Erf_To_ResizeLayer1135'));
            end
            masks = dlarray(single(masks), repmat('U', 1, max(2, masksNumDims)));
            low_res_masks = dlarray(single(low_res_masks), repmat('U', 1, max(2, low_res_masksNumDims)));
            if ~coder.target('MATLAB')
                masks = extractdata(masks);
                low_res_masks = extractdata(low_res_masks);
            end
        end
    end
end

function [masks, low_res_masks, masksNumDims, low_res_masksNumDims, state] = Erf_To_ResizeFcn(x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, x_output_upscalin_25NumDims, x_output_upscalin_20NumDims, x_Concat_10_output_0NumDims, x_Cast_8_output_0NumDims, params, varargin)
%ERF_TO_RESIZEFCN Function implementing an imported ONNX network.
%
% THIS FILE WAS AUTO-GENERATED BY importONNXFunction.
% ONNX Operator Set Version: 17
%
% Variable names in this function are taken from the original ONNX file.
%
% [MASKS, LOW_RES_MASKS] = Erf_To_ResizeFcn(X_OUTPUT_UPSCALIN_25, X_OUTPUT_UPSCALIN_20, X_CONCAT_10_OUTPUT_0, X_CAST_8_OUTPUT_0, PARAMS)
%			- Evaluates the imported ONNX network ERF_TO_RESIZEFCN with input(s)
%			X_OUTPUT_UPSCALIN_25, X_OUTPUT_UPSCALIN_20, X_CONCAT_10_OUTPUT_0, X_CAST_8_OUTPUT_0 and the imported network parameters in PARAMS. Returns
%			network output(s) in MASKS, LOW_RES_MASKS.
%
% [MASKS, LOW_RES_MASKS, STATE] = Erf_To_ResizeFcn(X_OUTPUT_UPSCALIN_25, X_OUTPUT_UPSCALIN_20, X_CONCAT_10_OUTPUT_0, X_CAST_8_OUTPUT_0, PARAMS)
%			- Additionally returns state variables in STATE. When training,
%			use this form and set TRAINING to true.
%
% [__] = Erf_To_ResizeFcn(X_OUTPUT_UPSCALIN_25, X_OUTPUT_UPSCALIN_20, X_CONCAT_10_OUTPUT_0, X_CAST_8_OUTPUT_0, PARAMS, 'NAME1', VAL1, 'NAME2', VAL2, ...)
%			- Specifies additional name-value pairs described below:
%
% 'Training'
% 			Boolean indicating whether the network is being evaluated for
%			prediction or training. If TRAINING is true, state variables
%			will be updated.
%
% 'InputDataPermutation'
%			'auto' - Automatically attempt to determine the permutation
%			 between the dimensions of the input data and the dimensions of
%			the ONNX model input. For example, the permutation from HWCN
%			(MATLAB standard) to NCHW (ONNX standard) uses the vector
%			[4 3 1 2]. See the documentation for IMPORTONNXFUNCTION for
%			more information about automatic permutation.
%
%			'none' - Input(s) are passed in the ONNX model format. See 'Inputs'.
%
%			numeric vector - The permutation vector describing the
%			transformation between input data dimensions and the expected
%			ONNX input dimensions.%
%			cell array - If the network has multiple inputs, each cell
%			contains 'auto', 'none', or a numeric vector.
%
% 'OutputDataPermutation'
%			'auto' - Automatically attempt to determine the permutation
%			between the dimensions of the output and a conventional MATLAB
%			dimension ordering. For example, the permutation from NC (ONNX
%			standard) to CN (MATLAB standard) uses the vector [2 1]. See
%			the documentation for IMPORTONNXFUNCTION for more information
%			about automatic permutation.
%
%			'none' - Return output(s) as given by the ONNX model. See 'Outputs'.
%
%			numeric vector - The permutation vector describing the
%			transformation between the ONNX output dimensions and the
%			desired output dimensions.%
%			cell array - If the network has multiple outputs, each cell
%			contains 'auto', 'none' or a numeric vector.
%
% Inputs:
% -------
% X_OUTPUT_UPSCALIN_25, X_OUTPUT_UPSCALIN_20, X_CONCAT_10_OUTPUT_0, X_CAST_8_OUTPUT_0
%			- Input(s) to the ONNX network.
%			  The input size(s) expected by the ONNX file are:
%				  X_OUTPUT_UPSCALIN_25:		[Unknown, Unknown, Unknown, Unknown]				Type: FLOAT
%				  X_OUTPUT_UPSCALIN_20:		[Unknown, Unknown, Unknown, Unknown]				Type: FLOAT
%				  X_CONCAT_10_OUTPUT_0:		[1, 1]				Type: FLOAT
%				  X_CAST_8_OUTPUT_0:		[1, 1]				Type: FLOAT
%			  By default, the function will try to permute the input(s)
%			  into this dimension ordering. If the default is incorrect,
%			  use the 'InputDataPermutation' argument to control the
%			  permutation.
%
%
% PARAMS	- Network parameters returned by 'importONNXFunction'.
%
%
% Outputs:
% --------
% MASKS, LOW_RES_MASKS
%			- Output(s) of the ONNX network.
%			  Without permutation, the size(s) of the outputs are:
%				  MASKS:		[Resizemasks_dim_0, Resizemasks_dim_1, Resizemasks_dim_2, Resizemasks_dim_3]				Type: FLOAT
%				  LOW_RES_MASKS:		[Reshapelow_res_masks_dim_0, Reshapelow_res_masks_dim_1, Reshapelow_res_masks_dim_2, Reshapelow_res_masks_dim_3]				Type: FLOAT
%			  By default, the function will try to permute the output(s)
%			  from this dimension ordering into a conventional MATLAB
%			  ordering. If the default is incorrect, use the
%			  'OutputDataPermutation' argument to control the permutation.
%
% STATE		- (Optional) State variables. When TRAINING is true, these will
% 			  have been updated from the original values in PARAMS.State.
%
%
%  See also importONNXFunction

% Preprocess the input data and arguments:
[x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, Training, outputDataPerms, anyDlarrayInputs] = preprocessInput(x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, params, varargin{:});
% Put all variables into a single struct to implement dynamic scoping:
[Vars, NumDims] = packageVariables(params, {'x_output_upscalin_25', 'x_output_upscalin_20', 'x_Concat_10_output_0', 'x_Cast_8_output_0'}, {x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0}, [x_output_upscalin_25NumDims x_output_upscalin_20NumDims x_Concat_10_output_0NumDims x_Cast_8_output_0NumDims]);
% Call the top-level graph function:
[masks, low_res_masks, masksNumDims, low_res_masksNumDims, state] = Erf_To_ResizeGraph1128(x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, NumDims.x_output_upscalin_25, NumDims.x_output_upscalin_20, NumDims.x_Concat_10_output_0, NumDims.x_Cast_8_output_0, Vars, NumDims, Training, params.State);
% Postprocess the output data
[masks, low_res_masks] = postprocessOutput(masks, low_res_masks, outputDataPerms, anyDlarrayInputs, Training, varargin{:});
end

function [masks, low_res_masks, masksNumDims1133, low_res_masksNumDims1134, state] = Erf_To_ResizeGraph1128(x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, x_output_upscalin_25NumDims1129, x_output_upscalin_20NumDims1130, x_Concat_10_output_0NumDims1131, x_Cast_8_output_0NumDims1132, Vars, NumDims, Training, state)
% Function implementing the graph 'Erf_To_ResizeGraph1128'
% Update Vars and NumDims from the graph's formal input parameters. Note that state variables are already in Vars.
Vars.x_output_upscalin_25 = x_output_upscalin_25;
NumDims.x_output_upscalin_25 = x_output_upscalin_25NumDims1129;
Vars.x_output_upscalin_20 = x_output_upscalin_20;
NumDims.x_output_upscalin_20 = x_output_upscalin_20NumDims1130;
Vars.x_Concat_10_output_0 = x_Concat_10_output_0;
NumDims.x_Concat_10_output_0 = x_Concat_10_output_0NumDims1131;
Vars.x_Cast_8_output_0 = x_Cast_8_output_0;
NumDims.x_Cast_8_output_0 = x_Cast_8_output_0NumDims1132;

% Execute the operators:
% Erf:
Vars.x_output_upscalin_26 = erf(Vars.x_output_upscalin_25);
NumDims.x_output_upscalin_26 = NumDims.x_output_upscalin_25;

% Add:
Vars.x_output_upscalin_21 = Vars.x_output_upscalin_26 + Vars.x_output_upscalin_22;
NumDims.x_output_upscalin_21 = max(NumDims.x_output_upscalin_26, NumDims.x_output_upscalin_22);

% Mul:
Vars.x_output_upscalin_28 = Vars.x_output_upscalin_20 .* Vars.x_output_upscalin_21;
NumDims.x_output_upscalin_28 = max(NumDims.x_output_upscalin_20, NumDims.x_output_upscalin_21);

% Mul:
Vars.x_output_upscalin_27 = Vars.x_output_upscalin_28 .* Vars.x_output_upscalin_23;
NumDims.x_output_upscalin_27 = max(NumDims.x_output_upscalin_28, NumDims.x_output_upscalin_23);

% Shape:
[Vars.x_Shape_12_output_0, NumDims.x_Shape_12_output_0] = onnxShape(Vars.x_output_upscalin_27, NumDims.x_output_upscalin_27);

% Gather:
[Vars.x_Gather_11_output_0, NumDims.x_Gather_11_output_0] = onnxGather(Vars.x_Shape_12_output_0, Vars.x_Constant_69_output, 0, NumDims.x_Shape_12_output_0, NumDims.x_Constant_69_output);

% Shape:
[Vars.x_Shape_13_output_0, NumDims.x_Shape_13_output_0] = onnxShape(Vars.x_output_upscalin_27, NumDims.x_output_upscalin_27);

% Gather:
[Vars.x_Gather_12_output_0, NumDims.x_Gather_12_output_0] = onnxGather(Vars.x_Shape_13_output_0, Vars.x_Constant_70_output, 0, NumDims.x_Shape_13_output_0, NumDims.x_Constant_70_output);

% Shape:
[Vars.x_Shape_14_output_0, NumDims.x_Shape_14_output_0] = onnxShape(Vars.x_output_upscalin_27, NumDims.x_output_upscalin_27);

% Gather:
[Vars.x_Gather_13_output_0, NumDims.x_Gather_13_output_0] = onnxGather(Vars.x_Shape_14_output_0, Vars.x_Constant_71_output, 0, NumDims.x_Shape_14_output_0, NumDims.x_Constant_71_output);

% Shape:
[Vars.x_Shape_15_output_0, NumDims.x_Shape_15_output_0] = onnxShape(Vars.x_output_upscalin_27, NumDims.x_output_upscalin_27);

% Gather:
[Vars.x_Gather_14_output_0, NumDims.x_Gather_14_output_0] = onnxGather(Vars.x_Shape_15_output_0, Vars.x_Constant_72_output, 0, NumDims.x_Shape_15_output_0, NumDims.x_Constant_72_output);

% Mul:
Vars.x_Mul_11_output_0 = Vars.x_Gather_13_output_0 .* Vars.x_Gather_14_output_0;
NumDims.x_Mul_11_output_0 = max(NumDims.x_Gather_13_output_0, NumDims.x_Gather_14_output_0);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_13_outpu] = prepareUnsqueezeArgs(Vars.x_Gather_11_output_0, Vars.onnx__Unsqueeze_1657, NumDims.x_Gather_11_output_0);
Vars.x_Unsqueeze_13_outpu = reshape(Vars.x_Gather_11_output_0, shape);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_14_outpu] = prepareUnsqueezeArgs(Vars.x_Gather_12_output_0, Vars.onnx__Unsqueeze_1659, NumDims.x_Gather_12_output_0);
Vars.x_Unsqueeze_14_outpu = reshape(Vars.x_Gather_12_output_0, shape);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_15_outpu] = prepareUnsqueezeArgs(Vars.x_Mul_11_output_0, Vars.onnx__Unsqueeze_1661, NumDims.x_Mul_11_output_0);
Vars.x_Unsqueeze_15_outpu = reshape(Vars.x_Mul_11_output_0, shape);

% Concat:
[Vars.x_Concat_11_output_0, NumDims.x_Concat_11_output_0] = onnxConcat(0, {Vars.x_Unsqueeze_13_outpu, Vars.x_Unsqueeze_14_outpu, Vars.x_Unsqueeze_15_outpu}, [NumDims.x_Unsqueeze_13_outpu, NumDims.x_Unsqueeze_14_outpu, NumDims.x_Unsqueeze_15_outpu]);

% Reshape:
[shape, NumDims.x_Reshape_8_output_0] = prepareReshapeArgs(Vars.x_output_upscalin_27, Vars.x_Concat_11_output_0, NumDims.x_output_upscalin_27, 0);
Vars.x_Reshape_8_output_0 = reshape(Vars.x_output_upscalin_27, shape{:});

% MatMul:
[Vars.x_MatMul_1_output_0, NumDims.x_MatMul_1_output_0] = onnxMatMul(Vars.x_Concat_10_output_0, Vars.x_Reshape_8_output_0, NumDims.x_Concat_10_output_0, NumDims.x_Reshape_8_output_0);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_16_outpu] = prepareUnsqueezeArgs(Vars.x_Gather_11_output_0, Vars.onnx__Unsqueeze_1666, NumDims.x_Gather_11_output_0);
Vars.x_Unsqueeze_16_outpu = reshape(Vars.x_Gather_11_output_0, shape);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_17_outpu] = prepareUnsqueezeArgs(Vars.x_Gather_13_output_0, Vars.onnx__Unsqueeze_1670, NumDims.x_Gather_13_output_0);
Vars.x_Unsqueeze_17_outpu = reshape(Vars.x_Gather_13_output_0, shape);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_18_outpu] = prepareUnsqueezeArgs(Vars.x_Gather_14_output_0, Vars.onnx__Unsqueeze_1672, NumDims.x_Gather_14_output_0);
Vars.x_Unsqueeze_18_outpu = reshape(Vars.x_Gather_14_output_0, shape);

% Concat:
[Vars.x_Concat_12_output_0, NumDims.x_Concat_12_output_0] = onnxConcat(0, {Vars.x_Unsqueeze_16_outpu, Vars.x_Constant_73_output, Vars.x_Unsqueeze_17_outpu, Vars.x_Unsqueeze_18_outpu}, [NumDims.x_Unsqueeze_16_outpu, NumDims.x_Constant_73_output, NumDims.x_Unsqueeze_17_outpu, NumDims.x_Unsqueeze_18_outpu]);

% Reshape:
[shape, NumDims.low_res_masks] = prepareReshapeArgs(Vars.x_MatMul_1_output_0, Vars.x_Concat_12_output_0, NumDims.x_MatMul_1_output_0, 0);
Vars.low_res_masks = reshape(Vars.x_MatMul_1_output_0, shape{:});

% Shape:
[Vars.x_Shape_16_output_0, NumDims.x_Shape_16_output_0] = onnxShape(Vars.low_res_masks, NumDims.low_res_masks);

% Slice:
[Indices, NumDims.x_Slice_7_output_0] = prepareSliceArgs(Vars.x_Shape_16_output_0, Vars.x_Constant_75_output, Vars.x_Constant_76_output, Vars.x_Constant_74_output, '', NumDims.x_Shape_16_output_0);
Vars.x_Slice_7_output_0 = subsref(Vars.x_Shape_16_output_0, Indices);

% Concat:
[Vars.x_Concat_13_output_0, NumDims.x_Concat_13_output_0] = onnxConcat(0, {Vars.x_Slice_7_output_0, Vars.x_Constant_77_output}, [NumDims.x_Slice_7_output_0, NumDims.x_Constant_77_output]);

% Resize:
[DLTScales, DLTSizes, dataFormat, Method, GeometricTransformMode, NearestRoundingMode, NumDims.x_Resize_output_0] = prepareResize11Args(dlarray([]), dlarray([]), Vars.x_Concat_13_output_0, "half_pixel", "linear", "floor", NumDims.low_res_masks);
if isempty(DLTScales)
    Vars.x_Resize_output_0 = dlresize(Vars.low_res_masks, 'OutputSize', DLTSizes, 'DataFormat', dataFormat, 'Method', Method, 'GeometricTransformMode', GeometricTransformMode, 'NearestRoundingMode', NearestRoundingMode);
else
    Vars.x_Resize_output_0 = dlresize(Vars.low_res_masks, 'Scale', DLTScales, 'DataFormat', dataFormat, 'Method', Method, 'GeometricTransformMode', GeometricTransformMode, 'NearestRoundingMode', NearestRoundingMode);
end

% Slice:
[Indices, NumDims.x_Slice_8_output_0] = prepareSliceArgs(Vars.x_Resize_output_0, Vars.x_Constant_79_output, Vars.x_Constant_80_output, Vars.x_Constant_78_output, Vars.x_Constant_81_output, NumDims.x_Resize_output_0);
Vars.x_Slice_8_output_0 = subsref(Vars.x_Resize_output_0, Indices);

% Slice:
[Indices, NumDims.x_Slice_9_output_0] = prepareSliceArgs(Vars.x_Slice_8_output_0, Vars.x_Constant_83_output, Vars.x_Constant_84_output, Vars.x_Constant_82_output, Vars.x_Constant_85_output, NumDims.x_Slice_8_output_0);
Vars.x_Slice_9_output_0 = subsref(Vars.x_Slice_8_output_0, Indices);

% Shape:
[Vars.x_Shape_17_output_0, NumDims.x_Shape_17_output_0] = onnxShape(Vars.x_Slice_9_output_0, NumDims.x_Slice_9_output_0);

% Slice:
[Indices, NumDims.x_Slice_10_output_0] = prepareSliceArgs(Vars.x_Shape_17_output_0, Vars.x_Constant_87_output, Vars.x_Constant_88_output, Vars.x_Constant_86_output, '', NumDims.x_Shape_17_output_0);
Vars.x_Slice_10_output_0 = subsref(Vars.x_Shape_17_output_0, Indices);

% Concat:
[Vars.x_Concat_15_output_0, NumDims.x_Concat_15_output_0] = onnxConcat(0, {Vars.x_Slice_10_output_0, Vars.x_Cast_8_output_0}, [NumDims.x_Slice_10_output_0, NumDims.x_Cast_8_output_0]);

% Resize:
[DLTScales, DLTSizes, dataFormat, Method, GeometricTransformMode, NearestRoundingMode, NumDims.masks] = prepareResize11Args(dlarray([]), dlarray([]), Vars.x_Concat_15_output_0, "half_pixel", "linear", "floor", NumDims.x_Slice_9_output_0);
if isempty(DLTScales)
    Vars.masks = dlresize(Vars.x_Slice_9_output_0, 'OutputSize', DLTSizes, 'DataFormat', dataFormat, 'Method', Method, 'GeometricTransformMode', GeometricTransformMode, 'NearestRoundingMode', NearestRoundingMode);
else
    Vars.masks = dlresize(Vars.x_Slice_9_output_0, 'Scale', DLTScales, 'DataFormat', dataFormat, 'Method', Method, 'GeometricTransformMode', GeometricTransformMode, 'NearestRoundingMode', NearestRoundingMode);
end

% Set graph output arguments from Vars and NumDims:
masks = Vars.masks;
masksNumDims1133 = NumDims.masks;
low_res_masks = Vars.low_res_masks;
low_res_masksNumDims1134 = NumDims.low_res_masks;
% Set output state from Vars:
state = updateStruct(state, Vars);
end

function [inputDataPerms, outputDataPerms, Training] = parseInputs(x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, numDataOutputs, params, varargin)
% Function to validate inputs to Erf_To_ResizeFcn:
p = inputParser;
isValidArrayInput = @(x)isnumeric(x) || isstring(x);
isValidONNXParameters = @(x)isa(x, 'ONNXParameters');
addRequired(p, 'x_output_upscalin_25', isValidArrayInput);
addRequired(p, 'x_output_upscalin_20', isValidArrayInput);
addRequired(p, 'x_Concat_10_output_0', isValidArrayInput);
addRequired(p, 'x_Cast_8_output_0', isValidArrayInput);
addRequired(p, 'params', isValidONNXParameters);
addParameter(p, 'InputDataPermutation', 'auto');
addParameter(p, 'OutputDataPermutation', 'auto');
addParameter(p, 'Training', false);
parse(p, x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, params, varargin{:});
inputDataPerms = p.Results.InputDataPermutation;
outputDataPerms = p.Results.OutputDataPermutation;
Training = p.Results.Training;
if isnumeric(inputDataPerms)
    inputDataPerms = {inputDataPerms};
end
if isstring(inputDataPerms) && isscalar(inputDataPerms) || ischar(inputDataPerms)
    inputDataPerms = repmat({inputDataPerms},1,4);
end
if isnumeric(outputDataPerms)
    outputDataPerms = {outputDataPerms};
end
if isstring(outputDataPerms) && isscalar(outputDataPerms) || ischar(outputDataPerms)
    outputDataPerms = repmat({outputDataPerms},1,numDataOutputs);
end
end

function [x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, Training, outputDataPerms, anyDlarrayInputs] = preprocessInput(x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, params, varargin)
% Parse input arguments
[inputDataPerms, outputDataPerms, Training] = parseInputs(x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0, 2, params, varargin{:});
anyDlarrayInputs = any(cellfun(@(x)isa(x, 'dlarray'), {x_output_upscalin_25, x_output_upscalin_20, x_Concat_10_output_0, x_Cast_8_output_0}));
% Make the input variables into unlabelled dlarrays:
x_output_upscalin_25 = makeUnlabeledDlarray(x_output_upscalin_25);
x_output_upscalin_20 = makeUnlabeledDlarray(x_output_upscalin_20);
x_Concat_10_output_0 = makeUnlabeledDlarray(x_Concat_10_output_0);
x_Cast_8_output_0 = makeUnlabeledDlarray(x_Cast_8_output_0);
% Permute inputs if requested:
x_output_upscalin_25 = permuteInputVar(x_output_upscalin_25, inputDataPerms{1}, 4);
x_output_upscalin_20 = permuteInputVar(x_output_upscalin_20, inputDataPerms{2}, 4);
x_Concat_10_output_0 = permuteInputVar(x_Concat_10_output_0, inputDataPerms{3}, 0);
x_Cast_8_output_0 = permuteInputVar(x_Cast_8_output_0, inputDataPerms{4}, 0);
end

function [masks, low_res_masks] = postprocessOutput(masks, low_res_masks, outputDataPerms, anyDlarrayInputs, Training, varargin)
% Set output type:
if ~anyDlarrayInputs && ~Training
    if isdlarray(masks)
        masks = extractdata(masks);
    end
    if isdlarray(low_res_masks)
        low_res_masks = extractdata(low_res_masks);
    end
end
% Permute outputs if requested:
masks = permuteOutputVar(masks, outputDataPerms{1}, 4);
low_res_masks = permuteOutputVar(low_res_masks, outputDataPerms{2}, 4);
end


%% dlarray functions implementing ONNX operators:

function [Y, numDimsY] = onnxConcat(ONNXAxis, XCell, numDimsXArray)
% Concatentation that treats all empties the same. Necessary because
% dlarray.cat does not allow, for example, cat(1, 1x1, 1x0) because the
% second dimension sizes do not match.
numDimsY = numDimsXArray(1);
XCell(cellfun(@isempty, XCell)) = [];
if isempty(XCell)
    Y = dlarray([]);
else
    if ONNXAxis<0
        ONNXAxis = ONNXAxis + numDimsY;
    end
    DLTAxis = numDimsY - ONNXAxis;
    Y = cat(DLTAxis, XCell{:});
end
end

function [Y, numDimsY] = onnxGather(X, ONNXIdx, ONNXAxis, numDimsX, numDimsIdx)
% Function implementing the ONNX Gather operator

% In ONNX, 'Gather' first indexes into dimension ONNXAxis of data, using
% the contents of ONNXIdx as the indices. Then, it reshapes the ONNXAxis
% into the shape of ONNXIdx.
%   Example 1:
% Suppose data has shape [2 3 4 5], ONNXIdx has shape [6 7], and axis=1.
% The result has shape [2 6 7 4 5].
%   Example 2:
% Suppose data has shape [2 3 4 5], ONNXIdx has shape [6], and axis=1.
% The result has shape [2 6 4 5].
%   Example 3:
% Suppose data has shape [2 3 4 5], ONNXIdx has shape [] (a scalar), and axis=1.
% The result has shape [2 4 5].
%
% Since we're using reverse indexing relative to ONNX, in this function
% data and ONNXIdx both have reversed dimension ordering.
numDimsY = numDimsIdx + (numDimsX - 1);
if isempty(X)
    Y = X;
    return;
end
% (1) First, do the subsref part of Gather
if ONNXAxis<0
    ONNXAxis = ONNXAxis + numDimsX;                                 % Axis can be negative. Convert it to its positive equivalent.
end
dltAxis = numDimsX - ONNXAxis;                                      % Convert axis to DLT. ONNXAxis is origin 0 and we index from the end
ONNXIdx(ONNXIdx<0) = ONNXIdx(ONNXIdx<0) + size(X, dltAxis);         % ONNXIdx can have negative components. Make them positive.
dltIdx  = extractdata(ONNXIdx) + 1;                                 % ONNXIdx is origin-0 in ONNX, so add 1 to get dltIdx
% Use subsref to index into data
Indices.subs = repmat({':'}, 1, numDimsX);
Indices.subs{dltAxis} = dltIdx(:);                                  % Index as a column to ensure the output is 1-D in the indexed dimension (for now).
Indices.type = '()';
Y = subsref(X, Indices);
% (2) Now do the reshaping part of Gather
shape = size(Y, 1:numDimsX);
if numDimsIdx == 0
    % Delete the indexed dimension
    shape(dltAxis) = [];
elseif numDimsIdx > 1
    % Reshape the indexed dimension into the shape of ONNXIdx
    shape = [shape(1:dltAxis-1) size(ONNXIdx, 1:numDimsIdx) shape(dltAxis+1:end)];
end
% Extend the shape to 2D so it's valid MATLAB
if numel(shape) < 2
    shape = [shape ones(1,2-numel(shape))];
end
Y = reshape(Y, shape);
end

function [D, numDimsD] = onnxMatMul(A, B, numDimsA, numDimsB)
% Implements the ONNX MatMul operator.

% If B is 1-D, temporarily extend it to a row vector
if numDimsB==1
    B = B(:)';
end
maxNumDims = max(numDimsA, numDimsB);
numDimsD = maxNumDims;
if maxNumDims > 2
    % Removes dlarray formats if only one of the input dlarrays is formatted.
    if sum([isempty(dims(A)), isempty(dims(B))]) == 1
        D = pagemtimes(stripdims(B), stripdims(A));
    else
        %computes matrix product of corresponding pages of input arrays A and
        %B.
        D = pagemtimes(B, A);
    end
else
    D = B * A;
    if numDimsA==1 || numDimsB==1
        D = D(:);
        numDimsD = 1;
    end
end
end

function [Y, numDimsY] = onnxShape(X, numDimsX)
% Implements the ONNX Shape operator
% Return the reverse ONNX shape as a 1D column vector
switch numDimsX
    case 0
        if isempty(X)
            Y = dlarray(0);
        else
            Y = dlarray(1);
        end
    case 1
        if isempty(X)
            Y = dlarray(0);
        else
            Y = dlarray(size(X,1));
        end
    otherwise
        Y = dlarray(fliplr(size(X, 1:numDimsX))');
end
numDimsY = 1;
end

function [DLTShape, numDimsY] = prepareReshapeArgs(X, ONNXShape, numDimsX, allowzero)
% Prepares arguments for implementing the ONNX Reshape operator
ONNXShape = flip(extractdata(ONNXShape));            % First flip the shape to make it correspond to the dimensions of X.
% In ONNX, 0 means "unchanged" if allowzero is false, and -1 means "infer". In DLT, there is no
% "unchanged", and [] means "infer".
DLTShape = num2cell(ONNXShape);                      % Make a cell array so we can include [].
% Replace zeros with the actual size if allowzero is true
if any(ONNXShape==0) && allowzero==0
    i0 = find(ONNXShape==0);
    DLTShape(i0) = num2cell(size(X, numDimsX - numel(ONNXShape) + i0));  % right-align the shape vector and dims
end
if any(ONNXShape == -1)
    % Replace -1 with []
    i = ONNXShape == -1;
    DLTShape{i} = [];
end
if numel(DLTShape)==1
    DLTShape = [DLTShape 1];
end
numDimsY = numel(ONNXShape);
end

function [DLTScales, DLTSizes, dataFormat, Method, GeometricTransformMode, NearestRoundingMode, numDimsY] = prepareResize11Args(...
    ONNXRoi, ONNXScales, ONNXSizes, coordinate_transformation_mode, mode, nearest_mode, numDimsX)
% Prepares arguments for implementing the ONNX Resize-11 operator

% ONNXScales and ONNXSizes are in ONNX dimension ordering. ONNXRoi is
% ignored because it only takes effect when coordinate_transformation_mode
% is "tf_crop_and_resize", which is not supported.
DLTScales = flip(extractdata(ONNXScales(:)'));
DLTSizes = flip(extractdata(ONNXSizes(:)'));
switch coordinate_transformation_mode
    case "half_pixel"
        GeometricTransformMode = "half-pixel";
    case "asymmetric"
        GeometricTransformMode = "asymmetric";
    otherwise
        assert(false);
end
switch mode
    case "nearest"
        Method = "nearest";
    case "linear"
        Method = "linear";
    otherwise
        assert(false);
end
switch nearest_mode
    case "floor"
        NearestRoundingMode = "floor";
    otherwise
        NearestRoundingMode = "round";
end
dataFormat = repmat('S', [1 numDimsX]);
numDimsY = numDimsX;
end

function [S, numDimsY] = prepareSliceArgs(X, Starts, Ends, Axes, Steps, numDimsX)
% Prepares arguments for implementing the ONNX Slice operator

% Starts, Ends and Axes are all origin 0. Axes refer to the ONNX dimension
% ordering, but X uses the reverse, DLT ordering. Starts, Ends, Axes, and
% Steps correspond positionally. Axes and Steps may be omitted, with
% defaults described in the ONNX spec.

% Set default Axes and Steps if not supplied
if isempty(Axes)
    Axes = 0:numDimsX-1;   % All axes
end
Axes(Axes<0) = Axes(Axes<0) + numDimsX; % Handle negative Axes.
if isempty(Steps)
    Steps = ones(1, numel(Starts));
end
% Init all dims to :
S.subs = repmat({':'}, 1, numDimsX);
S.type = '()';
% Set Starts and Ends for each axis
for i = 1:numel(Axes)
    DLTDim = numDimsX - Axes(i);                                               % The DLT dim is the reverse of the ONNX dim.
    % "If a negative value is passed for any of the start or end indices,
    % it represents number of elements before the end of that dimension."
    if Starts(i) < 0
        Starts(i) = size(X,DLTDim) + Starts(i);
    end
    if Ends(i) < 0
        Ends(i) = max(-1, size(X,DLTDim) + Ends(i));                        % The -1 case is when we're slicing backward and want to include 0.
    end
    % "If the value passed to start or end is larger than the n (the number
    % of elements in this dimension), it represents n."
    if Starts(i) > size(X,DLTDim)
        Starts(i) = size(X,DLTDim);
    end
    if Ends(i) > size(X,DLTDim)
        Ends(i) = size(X,DLTDim);
    end
    if Steps(i) > 0
        S.subs{DLTDim} = 1 + (Starts(i) : Steps(i) : Ends(i)-1);            % 1 + (Origin 0 indexing with end index excluded)
    else
        S.subs{DLTDim} = 1 + (Starts(i) : Steps(i) : Ends(i)+1);            % 1 + (Origin 0 indexing with end index excluded)
    end
end
numDimsY = numDimsX;
end

function [newShape, numDimsY] = prepareUnsqueezeArgs(X, ONNXAxes, numDimsX)
% Prepares arguments for implementing the ONNX Unsqueeze operator
numDimsY = numDimsX + numel(ONNXAxes);
ONNXAxes = extractdata(ONNXAxes);
ONNXAxes(ONNXAxes<0) = ONNXAxes(ONNXAxes<0) + numDimsY;
ONNXAxes = sort(ONNXAxes);                                              % increasing order
if numDimsY == 1
    newShape = size(X);
else
    DLTAxes  = flip(numDimsY - ONNXAxes);                                  % increasing order
    newShape = ones(1, numDimsY);
    posToSet = setdiff(1:numDimsY, DLTAxes, 'stable');
    newShape(posToSet) = size(X, 1:numel(posToSet));
end
end

%% Utility functions:

function s = appendStructs(varargin)
% s = appendStructs(s1, s2,...). Assign all fields in s1, s2,... into s.
if isempty(varargin)
    s = struct;
else
    s = varargin{1};
    for i = 2:numel(varargin)
        fromstr = varargin{i};
        fs = fieldnames(fromstr);
        for j = 1:numel(fs)
            s.(fs{j}) = fromstr.(fs{j});
        end
    end
end
end

function checkInputSize(inputShape, expectedShape, inputName)

if numel(expectedShape)==0
    % The input is a scalar
    if ~isequal(inputShape, [1 1])
        inputSizeStr = makeSizeString(inputShape);
        error(message('nnet_cnn_onnx:onnx:InputNeedsResize',inputName, "[1,1]", inputSizeStr));
    end
elseif numel(expectedShape)==1
    % The input is a vector
    if ~shapeIsColumnVector(inputShape) || ~iSizesMatch({inputShape(1)}, expectedShape)
        expectedShape{2} = 1;
        expectedSizeStr = makeSizeString(expectedShape);
        inputSizeStr = makeSizeString(inputShape);
        error(message('nnet_cnn_onnx:onnx:InputNeedsResize',inputName, expectedSizeStr, inputSizeStr));
    end
else
    % The input has 2 dimensions or more
    
    % The input dimensions have been reversed; flip them back to compare to the
    % expected ONNX shape.
    inputShape = fliplr(inputShape);
    
    % If the expected shape has fewer dims than the input shape, error.
    if numel(expectedShape) < numel(inputShape)
        expectedSizeStr = strjoin(["[", strjoin(string(expectedShape), ","), "]"], "");
        error(message('nnet_cnn_onnx:onnx:InputHasGreaterNDims', inputName, expectedSizeStr));
    end
    
    % Prepad the input shape with trailing ones up to the number of elements in
    % expectedShape
    inputShape = num2cell([ones(1, numel(expectedShape) - length(inputShape)) inputShape]);
    
    % Find the number of variable size dimensions in the expected shape
    numVariableInputs = sum(cellfun(@(x) isa(x, 'char') || isa(x, 'string'), expectedShape));
    
    % Find the number of input dimensions that are not in the expected shape
    % and cannot be represented by a variable dimension
    nonMatchingInputDims = setdiff(string(inputShape), string(expectedShape));
    numNonMatchingInputDims  = numel(nonMatchingInputDims) - numVariableInputs;
    
    expectedSizeStr = makeSizeString(expectedShape);
    inputSizeStr = makeSizeString(inputShape);
    if numNonMatchingInputDims == 0 && ~iSizesMatch(inputShape, expectedShape)
        % The actual and expected input dimensions match, but in
        % a different order. The input needs to be permuted.
        error(message('nnet_cnn_onnx:onnx:InputNeedsPermute',inputName, expectedSizeStr, inputSizeStr));
    elseif numNonMatchingInputDims > 0
        % The actual and expected input sizes do not match.
        error(message('nnet_cnn_onnx:onnx:InputNeedsResize',inputName, expectedSizeStr, inputSizeStr));
    end
end
end

function doesMatch = iSizesMatch(inputShape, expectedShape)
% Check whether the input and expected shapes match, in order.
% Size elements match if (1) the elements are equal, or (2) the expected
% size element is a variable (represented by a character vector or string)
doesMatch = true;
for i=1:numel(inputShape)
    if ~(isequal(inputShape{i},expectedShape{i}) || ischar(expectedShape{i}) || isstring(expectedShape{i}))
        doesMatch = false;
        return
    end
end
end

function sizeStr = makeSizeString(shape)
sizeStr = strjoin(["[", strjoin(string(shape), ","), "]"], "");
end

function isVec = shapeIsColumnVector(shape)
if numel(shape) == 2 && shape(2) == 1
    isVec = true;
else
    isVec = false;
end
end
function X = makeUnlabeledDlarray(X)
% Make numeric X into an unlabelled dlarray
if isa(X, 'dlarray')
    X = stripdims(X);
elseif isnumeric(X)
    if isinteger(X)
        % Make ints double so they can combine with anything without
        % reducing precision
        X = double(X);
    end
    X = dlarray(X);
end
end

function [Vars, NumDims] = packageVariables(params, inputNames, inputValues, inputNumDims)
% inputNames, inputValues are cell arrays. inputRanks is a numeric vector.
Vars = appendStructs(params.Learnables, params.Nonlearnables, params.State);
NumDims = params.NumDimensions;
% Add graph inputs
for i = 1:numel(inputNames)
    Vars.(inputNames{i}) = inputValues{i};
    NumDims.(inputNames{i}) = inputNumDims(i);
end
end

function X = permuteInputVar(X, userDataPerm, onnxNDims)
% Returns reverse-ONNX ordering
if onnxNDims == 0
    return;
elseif onnxNDims == 1 && isvector(X)
    X = X(:);
    return;
elseif isnumeric(userDataPerm)
    % Permute into reverse ONNX ordering
    if numel(userDataPerm) ~= onnxNDims
        error(message('nnet_cnn_onnx:onnx:InputPermutationSize', numel(userDataPerm), onnxNDims));
    end
    perm = fliplr(userDataPerm);
elseif isequal(userDataPerm, 'auto') && onnxNDims == 4
    % Permute MATLAB HWCN to reverse onnx (WHCN)
    perm = [2 1 3 4];
elseif isequal(userDataPerm, 'as-is')
    % Do not permute the input
    perm = 1:ndims(X);
else
    % userDataPerm is either 'none' or 'auto' with no default, which means
    % it's already in onnx ordering, so just make it reverse onnx
    perm = max(2,onnxNDims):-1:1;
end
X = permute(X, perm);
end

function Y = permuteOutputVar(Y, userDataPerm, onnxNDims)
switch onnxNDims
    case 0
        perm = [];
    case 1
        if isnumeric(userDataPerm)
            % Use the user's permutation because Y is a column vector which
            % already matches ONNX.
            perm = userDataPerm;
        elseif isequal(userDataPerm, 'auto')
            % Treat the 1D onnx vector as a 2D column and transpose it
            perm = [2 1];
        else
            % userDataPerm is 'none'. Leave Y alone because it already
            % matches onnx.
            perm = [];
        end
    otherwise
        % ndims >= 2
        if isnumeric(userDataPerm)
            % Use the inverse of the user's permutation. This is not just the
            % flip of the permutation vector.
            perm = onnxNDims + 1 - userDataPerm;
        elseif isequal(userDataPerm, 'auto')
            if onnxNDims == 2
                % Permute reverse ONNX CN to DLT CN (do nothing)
                perm = [];
            elseif onnxNDims == 4
                % Permute reverse onnx (WHCN) to MATLAB HWCN
                perm = [2 1 3 4];
            else
                % User wants the output in ONNX ordering, so just reverse it from
                % reverse onnx
                perm = onnxNDims:-1:1;
            end
        elseif isequal(userDataPerm, 'as-is')
            % Do not permute the input
            perm = 1:ndims(Y);
        else
            % userDataPerm is 'none', so just make it reverse onnx
            perm = onnxNDims:-1:1;
        end
end
if ~isempty(perm)
    Y = permute(Y, perm);
end
end

function s = updateStruct(s, t)
% Set all existing fields in s from fields in t, ignoring extra fields in t.
for name = transpose(fieldnames(s))
    s.(name{1}) = t.(name{1});
end
end
