classdef Unsqueeze_To_ReshapeLayer1127 < nnet.layer.Layer & nnet.layer.Formattable
    % A custom layer auto-generated while importing an ONNX network.
    
    %#codegen
    %#ok<*PROPLC>
    %#ok<*NBRAK>
    %#ok<*INUSL>
    %#ok<*VARARG>
    
    properties (Learnable)
        mask_decoder_iou_p_1
        mask_decoder_iou_p_2
        mask_decoder_iou_p_3
        mask_decoder_iou_p_4
        mask_decoder_iou_p_5
        mask_decoder_iou_pre
        mask_decoder_outp_1
        mask_decoder_outp_10
        mask_decoder_outp_11
        mask_decoder_outp_12
        mask_decoder_outp_13
        mask_decoder_outp_14
        mask_decoder_outp_15
        mask_decoder_outp_16
        mask_decoder_outp_17
        mask_decoder_outp_18
        mask_decoder_outp_19
        mask_decoder_outp_2
        mask_decoder_outp_20
        mask_decoder_outp_21
        mask_decoder_outp_22
        mask_decoder_outp_23
        mask_decoder_outp_3
        mask_decoder_outp_4
        mask_decoder_outp_5
        mask_decoder_outp_6
        mask_decoder_outp_7
        mask_decoder_outp_8
        mask_decoder_outp_9
        mask_decoder_output_
        mask_decoder_tran_14
        mask_decoder_tran_15
        mask_decoder_tran_16
        mask_decoder_tran_17
        mask_decoder_tran_18
        mask_decoder_tran_19
        mask_decoder_tran_20
        mask_decoder_tran_21
        mask_decoder_tran_36
        mask_decoder_tran_37
        mask_decoder_tran_38
        mask_decoder_tran_39
        mask_decoder_tran_40
        mask_decoder_tran_41
        mask_decoder_tran_42
        mask_decoder_tran_43
        mask_decoder_tran_48
        mask_decoder_tran_49
        model_prompt_enco_7
        onnx__Expand_1573
        onnx__MatMul_1578
        onnx__MatMul_1579
        onnx__MatMul_1580
        onnx__MatMul_1584
        onnx__MatMul_1585
        onnx__MatMul_1586
        onnx__MatMul_1587
        onnx__MatMul_1591
        onnx__MatMul_1592
        onnx__MatMul_1593
        onnx__MatMul_1594
        onnx__MatMul_1595
        onnx__MatMul_1596
        onnx__MatMul_1600
        onnx__MatMul_1601
        onnx__MatMul_1602
        onnx__MatMul_1603
        onnx__MatMul_1607
        onnx__MatMul_1608
        onnx__MatMul_1609
        onnx__MatMul_1610
        onnx__MatMul_1614
        onnx__MatMul_1615
        onnx__MatMul_1616
        onnx__MatMul_1617
        onnx__MatMul_1618
        onnx__MatMul_1619
        onnx__MatMul_1623
        onnx__MatMul_1624
        onnx__MatMul_1625
        onnx__MatMul_1626
        onnx__MatMul_1630
        onnx__Unsqueeze_1019
        onnx__Unsqueeze_1021
        onnx__Unsqueeze_1023
        onnx__Unsqueeze_1056
        onnx__Unsqueeze_1058
        onnx__Unsqueeze_1062
        onnx__Unsqueeze_1080
        onnx__Unsqueeze_1082
        onnx__Unsqueeze_1086
        onnx__Unsqueeze_1103
        onnx__Unsqueeze_1105
        onnx__Unsqueeze_1109
        onnx__Unsqueeze_1134
        onnx__Unsqueeze_1136
        onnx__Unsqueeze_1138
        onnx__Unsqueeze_1179
        onnx__Unsqueeze_1181
        onnx__Unsqueeze_1185
        onnx__Unsqueeze_1203
        onnx__Unsqueeze_1205
        onnx__Unsqueeze_1209
        onnx__Unsqueeze_1226
        onnx__Unsqueeze_1228
        onnx__Unsqueeze_1232
        onnx__Unsqueeze_1257
        onnx__Unsqueeze_1259
        onnx__Unsqueeze_1261
        onnx__Unsqueeze_1293
        onnx__Unsqueeze_1295
        onnx__Unsqueeze_1299
        onnx__Unsqueeze_1317
        onnx__Unsqueeze_1319
        onnx__Unsqueeze_1323
        onnx__Unsqueeze_1340
        onnx__Unsqueeze_1342
        onnx__Unsqueeze_1346
        onnx__Unsqueeze_1371
        onnx__Unsqueeze_1373
        onnx__Unsqueeze_1375
        onnx__Unsqueeze_1396
        onnx__Unsqueeze_1398
        onnx__Unsqueeze_1400
        onnx__Unsqueeze_1402
        onnx__Unsqueeze_591
        onnx__Unsqueeze_593
        onnx__Unsqueeze_597
        onnx__Unsqueeze_615
        onnx__Unsqueeze_617
        onnx__Unsqueeze_621
        onnx__Unsqueeze_638
        onnx__Unsqueeze_640
        onnx__Unsqueeze_644
        onnx__Unsqueeze_669
        onnx__Unsqueeze_671
        onnx__Unsqueeze_673
        onnx__Unsqueeze_705
        onnx__Unsqueeze_707
        onnx__Unsqueeze_711
        onnx__Unsqueeze_729
        onnx__Unsqueeze_731
        onnx__Unsqueeze_735
        onnx__Unsqueeze_752
        onnx__Unsqueeze_754
        onnx__Unsqueeze_758
        onnx__Unsqueeze_783
        onnx__Unsqueeze_785
        onnx__Unsqueeze_787
        onnx__Unsqueeze_828
        onnx__Unsqueeze_830
        onnx__Unsqueeze_834
        onnx__Unsqueeze_852
        onnx__Unsqueeze_854
        onnx__Unsqueeze_858
        onnx__Unsqueeze_875
        onnx__Unsqueeze_877
        onnx__Unsqueeze_881
        onnx__Unsqueeze_906
        onnx__Unsqueeze_908
        onnx__Unsqueeze_910
        onnx__Unsqueeze_941
        onnx__Unsqueeze_943
        onnx__Unsqueeze_947
        onnx__Unsqueeze_965
        onnx__Unsqueeze_967
        onnx__Unsqueeze_971
        onnx__Unsqueeze_988
        onnx__Unsqueeze_990
        onnx__Unsqueeze_994
        x_Constant_17_output
        x_Constant_19_output
        x_Constant_26_output
        x_Constant_27_output
        x_Constant_28_output
        x_Constant_42_output
        x_Constant_43_output
        x_Constant_44_output
        x_Constant_65_output
        x_Constant_66_output
        x_Constant_67_output
        x_Constant_68_output
        x_Constant_6_output_
        x_pe_layer_Constan_1
    end
    
    properties
        ONNXParams         % An ONNXParameters object containing parameters used by this layer.
    end
    
    methods
        function this = Unsqueeze_To_ReshapeLayer1127(name, onnxParams)
            this.Name = name;
            this.NumInputs = 9;
            this.NumOutputs = 4;
            this.OutputNames = {'iou_predictions', 'x_Reshape_7_output_0', 'x_Concat_10_output_0', 'x_Concat_10_output_0NumDims'};
            this.ONNXParams = onnxParams;
            this.mask_decoder_iou_p_1 = onnxParams.Learnables.mask_decoder_iou_p_1;
            this.mask_decoder_iou_p_2 = onnxParams.Learnables.mask_decoder_iou_p_2;
            this.mask_decoder_iou_p_3 = onnxParams.Learnables.mask_decoder_iou_p_3;
            this.mask_decoder_iou_p_4 = onnxParams.Learnables.mask_decoder_iou_p_4;
            this.mask_decoder_iou_p_5 = onnxParams.Learnables.mask_decoder_iou_p_5;
            this.mask_decoder_iou_pre = onnxParams.Learnables.mask_decoder_iou_pre;
            this.mask_decoder_outp_1 = onnxParams.Learnables.mask_decoder_outp_1;
            this.mask_decoder_outp_10 = onnxParams.Learnables.mask_decoder_outp_10;
            this.mask_decoder_outp_11 = onnxParams.Learnables.mask_decoder_outp_11;
            this.mask_decoder_outp_12 = onnxParams.Learnables.mask_decoder_outp_12;
            this.mask_decoder_outp_13 = onnxParams.Learnables.mask_decoder_outp_13;
            this.mask_decoder_outp_14 = onnxParams.Learnables.mask_decoder_outp_14;
            this.mask_decoder_outp_15 = onnxParams.Learnables.mask_decoder_outp_15;
            this.mask_decoder_outp_16 = onnxParams.Learnables.mask_decoder_outp_16;
            this.mask_decoder_outp_17 = onnxParams.Learnables.mask_decoder_outp_17;
            this.mask_decoder_outp_18 = onnxParams.Learnables.mask_decoder_outp_18;
            this.mask_decoder_outp_19 = onnxParams.Learnables.mask_decoder_outp_19;
            this.mask_decoder_outp_2 = onnxParams.Learnables.mask_decoder_outp_2;
            this.mask_decoder_outp_20 = onnxParams.Learnables.mask_decoder_outp_20;
            this.mask_decoder_outp_21 = onnxParams.Learnables.mask_decoder_outp_21;
            this.mask_decoder_outp_22 = onnxParams.Learnables.mask_decoder_outp_22;
            this.mask_decoder_outp_23 = onnxParams.Learnables.mask_decoder_outp_23;
            this.mask_decoder_outp_3 = onnxParams.Learnables.mask_decoder_outp_3;
            this.mask_decoder_outp_4 = onnxParams.Learnables.mask_decoder_outp_4;
            this.mask_decoder_outp_5 = onnxParams.Learnables.mask_decoder_outp_5;
            this.mask_decoder_outp_6 = onnxParams.Learnables.mask_decoder_outp_6;
            this.mask_decoder_outp_7 = onnxParams.Learnables.mask_decoder_outp_7;
            this.mask_decoder_outp_8 = onnxParams.Learnables.mask_decoder_outp_8;
            this.mask_decoder_outp_9 = onnxParams.Learnables.mask_decoder_outp_9;
            this.mask_decoder_output_ = onnxParams.Learnables.mask_decoder_output_;
            this.mask_decoder_tran_14 = onnxParams.Learnables.mask_decoder_tran_14;
            this.mask_decoder_tran_15 = onnxParams.Learnables.mask_decoder_tran_15;
            this.mask_decoder_tran_16 = onnxParams.Learnables.mask_decoder_tran_16;
            this.mask_decoder_tran_17 = onnxParams.Learnables.mask_decoder_tran_17;
            this.mask_decoder_tran_18 = onnxParams.Learnables.mask_decoder_tran_18;
            this.mask_decoder_tran_19 = onnxParams.Learnables.mask_decoder_tran_19;
            this.mask_decoder_tran_20 = onnxParams.Learnables.mask_decoder_tran_20;
            this.mask_decoder_tran_21 = onnxParams.Learnables.mask_decoder_tran_21;
            this.mask_decoder_tran_36 = onnxParams.Learnables.mask_decoder_tran_36;
            this.mask_decoder_tran_37 = onnxParams.Learnables.mask_decoder_tran_37;
            this.mask_decoder_tran_38 = onnxParams.Learnables.mask_decoder_tran_38;
            this.mask_decoder_tran_39 = onnxParams.Learnables.mask_decoder_tran_39;
            this.mask_decoder_tran_40 = onnxParams.Learnables.mask_decoder_tran_40;
            this.mask_decoder_tran_41 = onnxParams.Learnables.mask_decoder_tran_41;
            this.mask_decoder_tran_42 = onnxParams.Learnables.mask_decoder_tran_42;
            this.mask_decoder_tran_43 = onnxParams.Learnables.mask_decoder_tran_43;
            this.mask_decoder_tran_48 = onnxParams.Learnables.mask_decoder_tran_48;
            this.mask_decoder_tran_49 = onnxParams.Learnables.mask_decoder_tran_49;
            this.model_prompt_enco_7 = onnxParams.Learnables.model_prompt_enco_7;
            this.onnx__Expand_1573 = onnxParams.Learnables.onnx__Expand_1573;
            this.onnx__MatMul_1578 = onnxParams.Learnables.onnx__MatMul_1578;
            this.onnx__MatMul_1579 = onnxParams.Learnables.onnx__MatMul_1579;
            this.onnx__MatMul_1580 = onnxParams.Learnables.onnx__MatMul_1580;
            this.onnx__MatMul_1584 = onnxParams.Learnables.onnx__MatMul_1584;
            this.onnx__MatMul_1585 = onnxParams.Learnables.onnx__MatMul_1585;
            this.onnx__MatMul_1586 = onnxParams.Learnables.onnx__MatMul_1586;
            this.onnx__MatMul_1587 = onnxParams.Learnables.onnx__MatMul_1587;
            this.onnx__MatMul_1591 = onnxParams.Learnables.onnx__MatMul_1591;
            this.onnx__MatMul_1592 = onnxParams.Learnables.onnx__MatMul_1592;
            this.onnx__MatMul_1593 = onnxParams.Learnables.onnx__MatMul_1593;
            this.onnx__MatMul_1594 = onnxParams.Learnables.onnx__MatMul_1594;
            this.onnx__MatMul_1595 = onnxParams.Learnables.onnx__MatMul_1595;
            this.onnx__MatMul_1596 = onnxParams.Learnables.onnx__MatMul_1596;
            this.onnx__MatMul_1600 = onnxParams.Learnables.onnx__MatMul_1600;
            this.onnx__MatMul_1601 = onnxParams.Learnables.onnx__MatMul_1601;
            this.onnx__MatMul_1602 = onnxParams.Learnables.onnx__MatMul_1602;
            this.onnx__MatMul_1603 = onnxParams.Learnables.onnx__MatMul_1603;
            this.onnx__MatMul_1607 = onnxParams.Learnables.onnx__MatMul_1607;
            this.onnx__MatMul_1608 = onnxParams.Learnables.onnx__MatMul_1608;
            this.onnx__MatMul_1609 = onnxParams.Learnables.onnx__MatMul_1609;
            this.onnx__MatMul_1610 = onnxParams.Learnables.onnx__MatMul_1610;
            this.onnx__MatMul_1614 = onnxParams.Learnables.onnx__MatMul_1614;
            this.onnx__MatMul_1615 = onnxParams.Learnables.onnx__MatMul_1615;
            this.onnx__MatMul_1616 = onnxParams.Learnables.onnx__MatMul_1616;
            this.onnx__MatMul_1617 = onnxParams.Learnables.onnx__MatMul_1617;
            this.onnx__MatMul_1618 = onnxParams.Learnables.onnx__MatMul_1618;
            this.onnx__MatMul_1619 = onnxParams.Learnables.onnx__MatMul_1619;
            this.onnx__MatMul_1623 = onnxParams.Learnables.onnx__MatMul_1623;
            this.onnx__MatMul_1624 = onnxParams.Learnables.onnx__MatMul_1624;
            this.onnx__MatMul_1625 = onnxParams.Learnables.onnx__MatMul_1625;
            this.onnx__MatMul_1626 = onnxParams.Learnables.onnx__MatMul_1626;
            this.onnx__MatMul_1630 = onnxParams.Learnables.onnx__MatMul_1630;
            this.onnx__Unsqueeze_1019 = onnxParams.Learnables.onnx__Unsqueeze_1019;
            this.onnx__Unsqueeze_1021 = onnxParams.Learnables.onnx__Unsqueeze_1021;
            this.onnx__Unsqueeze_1023 = onnxParams.Learnables.onnx__Unsqueeze_1023;
            this.onnx__Unsqueeze_1056 = onnxParams.Learnables.onnx__Unsqueeze_1056;
            this.onnx__Unsqueeze_1058 = onnxParams.Learnables.onnx__Unsqueeze_1058;
            this.onnx__Unsqueeze_1062 = onnxParams.Learnables.onnx__Unsqueeze_1062;
            this.onnx__Unsqueeze_1080 = onnxParams.Learnables.onnx__Unsqueeze_1080;
            this.onnx__Unsqueeze_1082 = onnxParams.Learnables.onnx__Unsqueeze_1082;
            this.onnx__Unsqueeze_1086 = onnxParams.Learnables.onnx__Unsqueeze_1086;
            this.onnx__Unsqueeze_1103 = onnxParams.Learnables.onnx__Unsqueeze_1103;
            this.onnx__Unsqueeze_1105 = onnxParams.Learnables.onnx__Unsqueeze_1105;
            this.onnx__Unsqueeze_1109 = onnxParams.Learnables.onnx__Unsqueeze_1109;
            this.onnx__Unsqueeze_1134 = onnxParams.Learnables.onnx__Unsqueeze_1134;
            this.onnx__Unsqueeze_1136 = onnxParams.Learnables.onnx__Unsqueeze_1136;
            this.onnx__Unsqueeze_1138 = onnxParams.Learnables.onnx__Unsqueeze_1138;
            this.onnx__Unsqueeze_1179 = onnxParams.Learnables.onnx__Unsqueeze_1179;
            this.onnx__Unsqueeze_1181 = onnxParams.Learnables.onnx__Unsqueeze_1181;
            this.onnx__Unsqueeze_1185 = onnxParams.Learnables.onnx__Unsqueeze_1185;
            this.onnx__Unsqueeze_1203 = onnxParams.Learnables.onnx__Unsqueeze_1203;
            this.onnx__Unsqueeze_1205 = onnxParams.Learnables.onnx__Unsqueeze_1205;
            this.onnx__Unsqueeze_1209 = onnxParams.Learnables.onnx__Unsqueeze_1209;
            this.onnx__Unsqueeze_1226 = onnxParams.Learnables.onnx__Unsqueeze_1226;
            this.onnx__Unsqueeze_1228 = onnxParams.Learnables.onnx__Unsqueeze_1228;
            this.onnx__Unsqueeze_1232 = onnxParams.Learnables.onnx__Unsqueeze_1232;
            this.onnx__Unsqueeze_1257 = onnxParams.Learnables.onnx__Unsqueeze_1257;
            this.onnx__Unsqueeze_1259 = onnxParams.Learnables.onnx__Unsqueeze_1259;
            this.onnx__Unsqueeze_1261 = onnxParams.Learnables.onnx__Unsqueeze_1261;
            this.onnx__Unsqueeze_1293 = onnxParams.Learnables.onnx__Unsqueeze_1293;
            this.onnx__Unsqueeze_1295 = onnxParams.Learnables.onnx__Unsqueeze_1295;
            this.onnx__Unsqueeze_1299 = onnxParams.Learnables.onnx__Unsqueeze_1299;
            this.onnx__Unsqueeze_1317 = onnxParams.Learnables.onnx__Unsqueeze_1317;
            this.onnx__Unsqueeze_1319 = onnxParams.Learnables.onnx__Unsqueeze_1319;
            this.onnx__Unsqueeze_1323 = onnxParams.Learnables.onnx__Unsqueeze_1323;
            this.onnx__Unsqueeze_1340 = onnxParams.Learnables.onnx__Unsqueeze_1340;
            this.onnx__Unsqueeze_1342 = onnxParams.Learnables.onnx__Unsqueeze_1342;
            this.onnx__Unsqueeze_1346 = onnxParams.Learnables.onnx__Unsqueeze_1346;
            this.onnx__Unsqueeze_1371 = onnxParams.Learnables.onnx__Unsqueeze_1371;
            this.onnx__Unsqueeze_1373 = onnxParams.Learnables.onnx__Unsqueeze_1373;
            this.onnx__Unsqueeze_1375 = onnxParams.Learnables.onnx__Unsqueeze_1375;
            this.onnx__Unsqueeze_1396 = onnxParams.Learnables.onnx__Unsqueeze_1396;
            this.onnx__Unsqueeze_1398 = onnxParams.Learnables.onnx__Unsqueeze_1398;
            this.onnx__Unsqueeze_1400 = onnxParams.Learnables.onnx__Unsqueeze_1400;
            this.onnx__Unsqueeze_1402 = onnxParams.Learnables.onnx__Unsqueeze_1402;
            this.onnx__Unsqueeze_591 = onnxParams.Learnables.onnx__Unsqueeze_591;
            this.onnx__Unsqueeze_593 = onnxParams.Learnables.onnx__Unsqueeze_593;
            this.onnx__Unsqueeze_597 = onnxParams.Learnables.onnx__Unsqueeze_597;
            this.onnx__Unsqueeze_615 = onnxParams.Learnables.onnx__Unsqueeze_615;
            this.onnx__Unsqueeze_617 = onnxParams.Learnables.onnx__Unsqueeze_617;
            this.onnx__Unsqueeze_621 = onnxParams.Learnables.onnx__Unsqueeze_621;
            this.onnx__Unsqueeze_638 = onnxParams.Learnables.onnx__Unsqueeze_638;
            this.onnx__Unsqueeze_640 = onnxParams.Learnables.onnx__Unsqueeze_640;
            this.onnx__Unsqueeze_644 = onnxParams.Learnables.onnx__Unsqueeze_644;
            this.onnx__Unsqueeze_669 = onnxParams.Learnables.onnx__Unsqueeze_669;
            this.onnx__Unsqueeze_671 = onnxParams.Learnables.onnx__Unsqueeze_671;
            this.onnx__Unsqueeze_673 = onnxParams.Learnables.onnx__Unsqueeze_673;
            this.onnx__Unsqueeze_705 = onnxParams.Learnables.onnx__Unsqueeze_705;
            this.onnx__Unsqueeze_707 = onnxParams.Learnables.onnx__Unsqueeze_707;
            this.onnx__Unsqueeze_711 = onnxParams.Learnables.onnx__Unsqueeze_711;
            this.onnx__Unsqueeze_729 = onnxParams.Learnables.onnx__Unsqueeze_729;
            this.onnx__Unsqueeze_731 = onnxParams.Learnables.onnx__Unsqueeze_731;
            this.onnx__Unsqueeze_735 = onnxParams.Learnables.onnx__Unsqueeze_735;
            this.onnx__Unsqueeze_752 = onnxParams.Learnables.onnx__Unsqueeze_752;
            this.onnx__Unsqueeze_754 = onnxParams.Learnables.onnx__Unsqueeze_754;
            this.onnx__Unsqueeze_758 = onnxParams.Learnables.onnx__Unsqueeze_758;
            this.onnx__Unsqueeze_783 = onnxParams.Learnables.onnx__Unsqueeze_783;
            this.onnx__Unsqueeze_785 = onnxParams.Learnables.onnx__Unsqueeze_785;
            this.onnx__Unsqueeze_787 = onnxParams.Learnables.onnx__Unsqueeze_787;
            this.onnx__Unsqueeze_828 = onnxParams.Learnables.onnx__Unsqueeze_828;
            this.onnx__Unsqueeze_830 = onnxParams.Learnables.onnx__Unsqueeze_830;
            this.onnx__Unsqueeze_834 = onnxParams.Learnables.onnx__Unsqueeze_834;
            this.onnx__Unsqueeze_852 = onnxParams.Learnables.onnx__Unsqueeze_852;
            this.onnx__Unsqueeze_854 = onnxParams.Learnables.onnx__Unsqueeze_854;
            this.onnx__Unsqueeze_858 = onnxParams.Learnables.onnx__Unsqueeze_858;
            this.onnx__Unsqueeze_875 = onnxParams.Learnables.onnx__Unsqueeze_875;
            this.onnx__Unsqueeze_877 = onnxParams.Learnables.onnx__Unsqueeze_877;
            this.onnx__Unsqueeze_881 = onnxParams.Learnables.onnx__Unsqueeze_881;
            this.onnx__Unsqueeze_906 = onnxParams.Learnables.onnx__Unsqueeze_906;
            this.onnx__Unsqueeze_908 = onnxParams.Learnables.onnx__Unsqueeze_908;
            this.onnx__Unsqueeze_910 = onnxParams.Learnables.onnx__Unsqueeze_910;
            this.onnx__Unsqueeze_941 = onnxParams.Learnables.onnx__Unsqueeze_941;
            this.onnx__Unsqueeze_943 = onnxParams.Learnables.onnx__Unsqueeze_943;
            this.onnx__Unsqueeze_947 = onnxParams.Learnables.onnx__Unsqueeze_947;
            this.onnx__Unsqueeze_965 = onnxParams.Learnables.onnx__Unsqueeze_965;
            this.onnx__Unsqueeze_967 = onnxParams.Learnables.onnx__Unsqueeze_967;
            this.onnx__Unsqueeze_971 = onnxParams.Learnables.onnx__Unsqueeze_971;
            this.onnx__Unsqueeze_988 = onnxParams.Learnables.onnx__Unsqueeze_988;
            this.onnx__Unsqueeze_990 = onnxParams.Learnables.onnx__Unsqueeze_990;
            this.onnx__Unsqueeze_994 = onnxParams.Learnables.onnx__Unsqueeze_994;
            this.x_Constant_17_output = onnxParams.Learnables.x_Constant_17_output;
            this.x_Constant_19_output = onnxParams.Learnables.x_Constant_19_output;
            this.x_Constant_26_output = onnxParams.Learnables.x_Constant_26_output;
            this.x_Constant_27_output = onnxParams.Learnables.x_Constant_27_output;
            this.x_Constant_28_output = onnxParams.Learnables.x_Constant_28_output;
            this.x_Constant_42_output = onnxParams.Learnables.x_Constant_42_output;
            this.x_Constant_43_output = onnxParams.Learnables.x_Constant_43_output;
            this.x_Constant_44_output = onnxParams.Learnables.x_Constant_44_output;
            this.x_Constant_65_output = onnxParams.Learnables.x_Constant_65_output;
            this.x_Constant_66_output = onnxParams.Learnables.x_Constant_66_output;
            this.x_Constant_67_output = onnxParams.Learnables.x_Constant_67_output;
            this.x_Constant_68_output = onnxParams.Learnables.x_Constant_68_output;
            this.x_Constant_6_output_ = onnxParams.Learnables.x_Constant_6_output_;
            this.x_pe_layer_Constan_1 = onnxParams.Learnables.x_pe_layer_Constan_1;
        end
        
        function [iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0, x_Concat_10_output_0NumDims] = predict(this, point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, point_coordsNumDims, point_labelsNumDims, has_mask_inputNumDims, image_embeddingsNumDims)
            if isdlarray(point_coords)
                point_coords = stripdims(point_coords);
            end
            if isdlarray(point_labels)
                point_labels = stripdims(point_labels);
            end
            if isdlarray(has_mask_input)
                has_mask_input = stripdims(has_mask_input);
            end
            if isdlarray(x_mask_downscalin_40)
                x_mask_downscalin_40 = stripdims(x_mask_downscalin_40);
            end
            if isdlarray(image_embeddings)
                image_embeddings = stripdims(image_embeddings);
            end
            point_coordsNumDims = numel(point_coordsNumDims);
            point_labelsNumDims = numel(point_labelsNumDims);
            has_mask_inputNumDims = numel(has_mask_inputNumDims);
            x_mask_downscalin_40NumDims = 4;
            image_embeddingsNumDims = numel(image_embeddingsNumDims);
            onnxParams = this.ONNXParams;
            onnxParams.Learnables.mask_decoder_iou_p_1 = this.mask_decoder_iou_p_1;
            onnxParams.Learnables.mask_decoder_iou_p_2 = this.mask_decoder_iou_p_2;
            onnxParams.Learnables.mask_decoder_iou_p_3 = this.mask_decoder_iou_p_3;
            onnxParams.Learnables.mask_decoder_iou_p_4 = this.mask_decoder_iou_p_4;
            onnxParams.Learnables.mask_decoder_iou_p_5 = this.mask_decoder_iou_p_5;
            onnxParams.Learnables.mask_decoder_iou_pre = this.mask_decoder_iou_pre;
            onnxParams.Learnables.mask_decoder_outp_1 = this.mask_decoder_outp_1;
            onnxParams.Learnables.mask_decoder_outp_10 = this.mask_decoder_outp_10;
            onnxParams.Learnables.mask_decoder_outp_11 = this.mask_decoder_outp_11;
            onnxParams.Learnables.mask_decoder_outp_12 = this.mask_decoder_outp_12;
            onnxParams.Learnables.mask_decoder_outp_13 = this.mask_decoder_outp_13;
            onnxParams.Learnables.mask_decoder_outp_14 = this.mask_decoder_outp_14;
            onnxParams.Learnables.mask_decoder_outp_15 = this.mask_decoder_outp_15;
            onnxParams.Learnables.mask_decoder_outp_16 = this.mask_decoder_outp_16;
            onnxParams.Learnables.mask_decoder_outp_17 = this.mask_decoder_outp_17;
            onnxParams.Learnables.mask_decoder_outp_18 = this.mask_decoder_outp_18;
            onnxParams.Learnables.mask_decoder_outp_19 = this.mask_decoder_outp_19;
            onnxParams.Learnables.mask_decoder_outp_2 = this.mask_decoder_outp_2;
            onnxParams.Learnables.mask_decoder_outp_20 = this.mask_decoder_outp_20;
            onnxParams.Learnables.mask_decoder_outp_21 = this.mask_decoder_outp_21;
            onnxParams.Learnables.mask_decoder_outp_22 = this.mask_decoder_outp_22;
            onnxParams.Learnables.mask_decoder_outp_23 = this.mask_decoder_outp_23;
            onnxParams.Learnables.mask_decoder_outp_3 = this.mask_decoder_outp_3;
            onnxParams.Learnables.mask_decoder_outp_4 = this.mask_decoder_outp_4;
            onnxParams.Learnables.mask_decoder_outp_5 = this.mask_decoder_outp_5;
            onnxParams.Learnables.mask_decoder_outp_6 = this.mask_decoder_outp_6;
            onnxParams.Learnables.mask_decoder_outp_7 = this.mask_decoder_outp_7;
            onnxParams.Learnables.mask_decoder_outp_8 = this.mask_decoder_outp_8;
            onnxParams.Learnables.mask_decoder_outp_9 = this.mask_decoder_outp_9;
            onnxParams.Learnables.mask_decoder_output_ = this.mask_decoder_output_;
            onnxParams.Learnables.mask_decoder_tran_14 = this.mask_decoder_tran_14;
            onnxParams.Learnables.mask_decoder_tran_15 = this.mask_decoder_tran_15;
            onnxParams.Learnables.mask_decoder_tran_16 = this.mask_decoder_tran_16;
            onnxParams.Learnables.mask_decoder_tran_17 = this.mask_decoder_tran_17;
            onnxParams.Learnables.mask_decoder_tran_18 = this.mask_decoder_tran_18;
            onnxParams.Learnables.mask_decoder_tran_19 = this.mask_decoder_tran_19;
            onnxParams.Learnables.mask_decoder_tran_20 = this.mask_decoder_tran_20;
            onnxParams.Learnables.mask_decoder_tran_21 = this.mask_decoder_tran_21;
            onnxParams.Learnables.mask_decoder_tran_36 = this.mask_decoder_tran_36;
            onnxParams.Learnables.mask_decoder_tran_37 = this.mask_decoder_tran_37;
            onnxParams.Learnables.mask_decoder_tran_38 = this.mask_decoder_tran_38;
            onnxParams.Learnables.mask_decoder_tran_39 = this.mask_decoder_tran_39;
            onnxParams.Learnables.mask_decoder_tran_40 = this.mask_decoder_tran_40;
            onnxParams.Learnables.mask_decoder_tran_41 = this.mask_decoder_tran_41;
            onnxParams.Learnables.mask_decoder_tran_42 = this.mask_decoder_tran_42;
            onnxParams.Learnables.mask_decoder_tran_43 = this.mask_decoder_tran_43;
            onnxParams.Learnables.mask_decoder_tran_48 = this.mask_decoder_tran_48;
            onnxParams.Learnables.mask_decoder_tran_49 = this.mask_decoder_tran_49;
            onnxParams.Learnables.model_prompt_enco_7 = this.model_prompt_enco_7;
            onnxParams.Learnables.onnx__Expand_1573 = this.onnx__Expand_1573;
            onnxParams.Learnables.onnx__MatMul_1578 = this.onnx__MatMul_1578;
            onnxParams.Learnables.onnx__MatMul_1579 = this.onnx__MatMul_1579;
            onnxParams.Learnables.onnx__MatMul_1580 = this.onnx__MatMul_1580;
            onnxParams.Learnables.onnx__MatMul_1584 = this.onnx__MatMul_1584;
            onnxParams.Learnables.onnx__MatMul_1585 = this.onnx__MatMul_1585;
            onnxParams.Learnables.onnx__MatMul_1586 = this.onnx__MatMul_1586;
            onnxParams.Learnables.onnx__MatMul_1587 = this.onnx__MatMul_1587;
            onnxParams.Learnables.onnx__MatMul_1591 = this.onnx__MatMul_1591;
            onnxParams.Learnables.onnx__MatMul_1592 = this.onnx__MatMul_1592;
            onnxParams.Learnables.onnx__MatMul_1593 = this.onnx__MatMul_1593;
            onnxParams.Learnables.onnx__MatMul_1594 = this.onnx__MatMul_1594;
            onnxParams.Learnables.onnx__MatMul_1595 = this.onnx__MatMul_1595;
            onnxParams.Learnables.onnx__MatMul_1596 = this.onnx__MatMul_1596;
            onnxParams.Learnables.onnx__MatMul_1600 = this.onnx__MatMul_1600;
            onnxParams.Learnables.onnx__MatMul_1601 = this.onnx__MatMul_1601;
            onnxParams.Learnables.onnx__MatMul_1602 = this.onnx__MatMul_1602;
            onnxParams.Learnables.onnx__MatMul_1603 = this.onnx__MatMul_1603;
            onnxParams.Learnables.onnx__MatMul_1607 = this.onnx__MatMul_1607;
            onnxParams.Learnables.onnx__MatMul_1608 = this.onnx__MatMul_1608;
            onnxParams.Learnables.onnx__MatMul_1609 = this.onnx__MatMul_1609;
            onnxParams.Learnables.onnx__MatMul_1610 = this.onnx__MatMul_1610;
            onnxParams.Learnables.onnx__MatMul_1614 = this.onnx__MatMul_1614;
            onnxParams.Learnables.onnx__MatMul_1615 = this.onnx__MatMul_1615;
            onnxParams.Learnables.onnx__MatMul_1616 = this.onnx__MatMul_1616;
            onnxParams.Learnables.onnx__MatMul_1617 = this.onnx__MatMul_1617;
            onnxParams.Learnables.onnx__MatMul_1618 = this.onnx__MatMul_1618;
            onnxParams.Learnables.onnx__MatMul_1619 = this.onnx__MatMul_1619;
            onnxParams.Learnables.onnx__MatMul_1623 = this.onnx__MatMul_1623;
            onnxParams.Learnables.onnx__MatMul_1624 = this.onnx__MatMul_1624;
            onnxParams.Learnables.onnx__MatMul_1625 = this.onnx__MatMul_1625;
            onnxParams.Learnables.onnx__MatMul_1626 = this.onnx__MatMul_1626;
            onnxParams.Learnables.onnx__MatMul_1630 = this.onnx__MatMul_1630;
            onnxParams.Learnables.onnx__Unsqueeze_1019 = this.onnx__Unsqueeze_1019;
            onnxParams.Learnables.onnx__Unsqueeze_1021 = this.onnx__Unsqueeze_1021;
            onnxParams.Learnables.onnx__Unsqueeze_1023 = this.onnx__Unsqueeze_1023;
            onnxParams.Learnables.onnx__Unsqueeze_1056 = this.onnx__Unsqueeze_1056;
            onnxParams.Learnables.onnx__Unsqueeze_1058 = this.onnx__Unsqueeze_1058;
            onnxParams.Learnables.onnx__Unsqueeze_1062 = this.onnx__Unsqueeze_1062;
            onnxParams.Learnables.onnx__Unsqueeze_1080 = this.onnx__Unsqueeze_1080;
            onnxParams.Learnables.onnx__Unsqueeze_1082 = this.onnx__Unsqueeze_1082;
            onnxParams.Learnables.onnx__Unsqueeze_1086 = this.onnx__Unsqueeze_1086;
            onnxParams.Learnables.onnx__Unsqueeze_1103 = this.onnx__Unsqueeze_1103;
            onnxParams.Learnables.onnx__Unsqueeze_1105 = this.onnx__Unsqueeze_1105;
            onnxParams.Learnables.onnx__Unsqueeze_1109 = this.onnx__Unsqueeze_1109;
            onnxParams.Learnables.onnx__Unsqueeze_1134 = this.onnx__Unsqueeze_1134;
            onnxParams.Learnables.onnx__Unsqueeze_1136 = this.onnx__Unsqueeze_1136;
            onnxParams.Learnables.onnx__Unsqueeze_1138 = this.onnx__Unsqueeze_1138;
            onnxParams.Learnables.onnx__Unsqueeze_1179 = this.onnx__Unsqueeze_1179;
            onnxParams.Learnables.onnx__Unsqueeze_1181 = this.onnx__Unsqueeze_1181;
            onnxParams.Learnables.onnx__Unsqueeze_1185 = this.onnx__Unsqueeze_1185;
            onnxParams.Learnables.onnx__Unsqueeze_1203 = this.onnx__Unsqueeze_1203;
            onnxParams.Learnables.onnx__Unsqueeze_1205 = this.onnx__Unsqueeze_1205;
            onnxParams.Learnables.onnx__Unsqueeze_1209 = this.onnx__Unsqueeze_1209;
            onnxParams.Learnables.onnx__Unsqueeze_1226 = this.onnx__Unsqueeze_1226;
            onnxParams.Learnables.onnx__Unsqueeze_1228 = this.onnx__Unsqueeze_1228;
            onnxParams.Learnables.onnx__Unsqueeze_1232 = this.onnx__Unsqueeze_1232;
            onnxParams.Learnables.onnx__Unsqueeze_1257 = this.onnx__Unsqueeze_1257;
            onnxParams.Learnables.onnx__Unsqueeze_1259 = this.onnx__Unsqueeze_1259;
            onnxParams.Learnables.onnx__Unsqueeze_1261 = this.onnx__Unsqueeze_1261;
            onnxParams.Learnables.onnx__Unsqueeze_1293 = this.onnx__Unsqueeze_1293;
            onnxParams.Learnables.onnx__Unsqueeze_1295 = this.onnx__Unsqueeze_1295;
            onnxParams.Learnables.onnx__Unsqueeze_1299 = this.onnx__Unsqueeze_1299;
            onnxParams.Learnables.onnx__Unsqueeze_1317 = this.onnx__Unsqueeze_1317;
            onnxParams.Learnables.onnx__Unsqueeze_1319 = this.onnx__Unsqueeze_1319;
            onnxParams.Learnables.onnx__Unsqueeze_1323 = this.onnx__Unsqueeze_1323;
            onnxParams.Learnables.onnx__Unsqueeze_1340 = this.onnx__Unsqueeze_1340;
            onnxParams.Learnables.onnx__Unsqueeze_1342 = this.onnx__Unsqueeze_1342;
            onnxParams.Learnables.onnx__Unsqueeze_1346 = this.onnx__Unsqueeze_1346;
            onnxParams.Learnables.onnx__Unsqueeze_1371 = this.onnx__Unsqueeze_1371;
            onnxParams.Learnables.onnx__Unsqueeze_1373 = this.onnx__Unsqueeze_1373;
            onnxParams.Learnables.onnx__Unsqueeze_1375 = this.onnx__Unsqueeze_1375;
            onnxParams.Learnables.onnx__Unsqueeze_1396 = this.onnx__Unsqueeze_1396;
            onnxParams.Learnables.onnx__Unsqueeze_1398 = this.onnx__Unsqueeze_1398;
            onnxParams.Learnables.onnx__Unsqueeze_1400 = this.onnx__Unsqueeze_1400;
            onnxParams.Learnables.onnx__Unsqueeze_1402 = this.onnx__Unsqueeze_1402;
            onnxParams.Learnables.onnx__Unsqueeze_591 = this.onnx__Unsqueeze_591;
            onnxParams.Learnables.onnx__Unsqueeze_593 = this.onnx__Unsqueeze_593;
            onnxParams.Learnables.onnx__Unsqueeze_597 = this.onnx__Unsqueeze_597;
            onnxParams.Learnables.onnx__Unsqueeze_615 = this.onnx__Unsqueeze_615;
            onnxParams.Learnables.onnx__Unsqueeze_617 = this.onnx__Unsqueeze_617;
            onnxParams.Learnables.onnx__Unsqueeze_621 = this.onnx__Unsqueeze_621;
            onnxParams.Learnables.onnx__Unsqueeze_638 = this.onnx__Unsqueeze_638;
            onnxParams.Learnables.onnx__Unsqueeze_640 = this.onnx__Unsqueeze_640;
            onnxParams.Learnables.onnx__Unsqueeze_644 = this.onnx__Unsqueeze_644;
            onnxParams.Learnables.onnx__Unsqueeze_669 = this.onnx__Unsqueeze_669;
            onnxParams.Learnables.onnx__Unsqueeze_671 = this.onnx__Unsqueeze_671;
            onnxParams.Learnables.onnx__Unsqueeze_673 = this.onnx__Unsqueeze_673;
            onnxParams.Learnables.onnx__Unsqueeze_705 = this.onnx__Unsqueeze_705;
            onnxParams.Learnables.onnx__Unsqueeze_707 = this.onnx__Unsqueeze_707;
            onnxParams.Learnables.onnx__Unsqueeze_711 = this.onnx__Unsqueeze_711;
            onnxParams.Learnables.onnx__Unsqueeze_729 = this.onnx__Unsqueeze_729;
            onnxParams.Learnables.onnx__Unsqueeze_731 = this.onnx__Unsqueeze_731;
            onnxParams.Learnables.onnx__Unsqueeze_735 = this.onnx__Unsqueeze_735;
            onnxParams.Learnables.onnx__Unsqueeze_752 = this.onnx__Unsqueeze_752;
            onnxParams.Learnables.onnx__Unsqueeze_754 = this.onnx__Unsqueeze_754;
            onnxParams.Learnables.onnx__Unsqueeze_758 = this.onnx__Unsqueeze_758;
            onnxParams.Learnables.onnx__Unsqueeze_783 = this.onnx__Unsqueeze_783;
            onnxParams.Learnables.onnx__Unsqueeze_785 = this.onnx__Unsqueeze_785;
            onnxParams.Learnables.onnx__Unsqueeze_787 = this.onnx__Unsqueeze_787;
            onnxParams.Learnables.onnx__Unsqueeze_828 = this.onnx__Unsqueeze_828;
            onnxParams.Learnables.onnx__Unsqueeze_830 = this.onnx__Unsqueeze_830;
            onnxParams.Learnables.onnx__Unsqueeze_834 = this.onnx__Unsqueeze_834;
            onnxParams.Learnables.onnx__Unsqueeze_852 = this.onnx__Unsqueeze_852;
            onnxParams.Learnables.onnx__Unsqueeze_854 = this.onnx__Unsqueeze_854;
            onnxParams.Learnables.onnx__Unsqueeze_858 = this.onnx__Unsqueeze_858;
            onnxParams.Learnables.onnx__Unsqueeze_875 = this.onnx__Unsqueeze_875;
            onnxParams.Learnables.onnx__Unsqueeze_877 = this.onnx__Unsqueeze_877;
            onnxParams.Learnables.onnx__Unsqueeze_881 = this.onnx__Unsqueeze_881;
            onnxParams.Learnables.onnx__Unsqueeze_906 = this.onnx__Unsqueeze_906;
            onnxParams.Learnables.onnx__Unsqueeze_908 = this.onnx__Unsqueeze_908;
            onnxParams.Learnables.onnx__Unsqueeze_910 = this.onnx__Unsqueeze_910;
            onnxParams.Learnables.onnx__Unsqueeze_941 = this.onnx__Unsqueeze_941;
            onnxParams.Learnables.onnx__Unsqueeze_943 = this.onnx__Unsqueeze_943;
            onnxParams.Learnables.onnx__Unsqueeze_947 = this.onnx__Unsqueeze_947;
            onnxParams.Learnables.onnx__Unsqueeze_965 = this.onnx__Unsqueeze_965;
            onnxParams.Learnables.onnx__Unsqueeze_967 = this.onnx__Unsqueeze_967;
            onnxParams.Learnables.onnx__Unsqueeze_971 = this.onnx__Unsqueeze_971;
            onnxParams.Learnables.onnx__Unsqueeze_988 = this.onnx__Unsqueeze_988;
            onnxParams.Learnables.onnx__Unsqueeze_990 = this.onnx__Unsqueeze_990;
            onnxParams.Learnables.onnx__Unsqueeze_994 = this.onnx__Unsqueeze_994;
            onnxParams.Learnables.x_Constant_17_output = this.x_Constant_17_output;
            onnxParams.Learnables.x_Constant_19_output = this.x_Constant_19_output;
            onnxParams.Learnables.x_Constant_26_output = this.x_Constant_26_output;
            onnxParams.Learnables.x_Constant_27_output = this.x_Constant_27_output;
            onnxParams.Learnables.x_Constant_28_output = this.x_Constant_28_output;
            onnxParams.Learnables.x_Constant_42_output = this.x_Constant_42_output;
            onnxParams.Learnables.x_Constant_43_output = this.x_Constant_43_output;
            onnxParams.Learnables.x_Constant_44_output = this.x_Constant_44_output;
            onnxParams.Learnables.x_Constant_65_output = this.x_Constant_65_output;
            onnxParams.Learnables.x_Constant_66_output = this.x_Constant_66_output;
            onnxParams.Learnables.x_Constant_67_output = this.x_Constant_67_output;
            onnxParams.Learnables.x_Constant_68_output = this.x_Constant_68_output;
            onnxParams.Learnables.x_Constant_6_output_ = this.x_Constant_6_output_;
            onnxParams.Learnables.x_pe_layer_Constan_1 = this.x_pe_layer_Constan_1;
            [iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0, iou_predictionsNumDims, x_Reshape_7_output_0NumDims, x_Concat_10_output_0NumDims] = Unsqueeze_To_ReshapeFcn(point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, point_coordsNumDims, point_labelsNumDims, has_mask_inputNumDims, x_mask_downscalin_40NumDims, image_embeddingsNumDims, onnxParams, 'Training', false, ...
                'InputDataPermutation', {['as-is'], ['as-is'], ['as-is'], [4 3 1 2], ['as-is'], ['as-is'], ['as-is'], ['as-is'], ['as-is'], ['as-is']}, ...
                'OutputDataPermutation', {['as-is'], [3 4 2 1], ['as-is'], ['as-is'], ['as-is'], ['as-is']});
            if any(cellfun(@(A)~isnumeric(A) && ~islogical(A), {iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0}))
                fprintf('Runtime error in network. At least one output of custom layer ''%s'' is a non-numeric, non-logical value.\n', 'Unsqueeze_To_ReshapeLayer1127');
                error(message('nnet_cnn_onnx:onnx:BadCustomLayerRuntimeOutput', 'Unsqueeze_To_ReshapeLayer1127'));
            end
            iou_predictions = dlarray(single(iou_predictions), repmat('U', 1, max(2, iou_predictionsNumDims)));
            x_Reshape_7_output_0 = dlarray(single(x_Reshape_7_output_0), 'SSCB');
            x_Concat_10_output_0 = dlarray(single(x_Concat_10_output_0), repmat('U', 1, max(2, x_Concat_10_output_0NumDims)));
            x_Concat_10_output_0NumDims = dlarray(ones(1,x_Concat_10_output_0NumDims,'like',iou_predictions), 'UU');
            if ~coder.target('MATLAB')
                iou_predictions = extractdata(iou_predictions);
                x_Reshape_7_output_0 = extractdata(x_Reshape_7_output_0);
                x_Concat_10_output_0 = extractdata(x_Concat_10_output_0);
                x_Concat_10_output_0NumDims = extractdata(x_Concat_10_output_0NumDims);
            end
        end
        
        function [iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0, x_Concat_10_output_0NumDims] = forward(this, point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, point_coordsNumDims, point_labelsNumDims, has_mask_inputNumDims, image_embeddingsNumDims)
            if isdlarray(point_coords)
                point_coords = stripdims(point_coords);
            end
            if isdlarray(point_labels)
                point_labels = stripdims(point_labels);
            end
            if isdlarray(has_mask_input)
                has_mask_input = stripdims(has_mask_input);
            end
            if isdlarray(x_mask_downscalin_40)
                x_mask_downscalin_40 = stripdims(x_mask_downscalin_40);
            end
            if isdlarray(image_embeddings)
                image_embeddings = stripdims(image_embeddings);
            end
            point_coordsNumDims = numel(point_coordsNumDims);
            point_labelsNumDims = numel(point_labelsNumDims);
            has_mask_inputNumDims = numel(has_mask_inputNumDims);
            x_mask_downscalin_40NumDims = 4;
            image_embeddingsNumDims = numel(image_embeddingsNumDims);
            onnxParams = this.ONNXParams;
            onnxParams.Learnables.mask_decoder_iou_p_1 = this.mask_decoder_iou_p_1;
            onnxParams.Learnables.mask_decoder_iou_p_2 = this.mask_decoder_iou_p_2;
            onnxParams.Learnables.mask_decoder_iou_p_3 = this.mask_decoder_iou_p_3;
            onnxParams.Learnables.mask_decoder_iou_p_4 = this.mask_decoder_iou_p_4;
            onnxParams.Learnables.mask_decoder_iou_p_5 = this.mask_decoder_iou_p_5;
            onnxParams.Learnables.mask_decoder_iou_pre = this.mask_decoder_iou_pre;
            onnxParams.Learnables.mask_decoder_outp_1 = this.mask_decoder_outp_1;
            onnxParams.Learnables.mask_decoder_outp_10 = this.mask_decoder_outp_10;
            onnxParams.Learnables.mask_decoder_outp_11 = this.mask_decoder_outp_11;
            onnxParams.Learnables.mask_decoder_outp_12 = this.mask_decoder_outp_12;
            onnxParams.Learnables.mask_decoder_outp_13 = this.mask_decoder_outp_13;
            onnxParams.Learnables.mask_decoder_outp_14 = this.mask_decoder_outp_14;
            onnxParams.Learnables.mask_decoder_outp_15 = this.mask_decoder_outp_15;
            onnxParams.Learnables.mask_decoder_outp_16 = this.mask_decoder_outp_16;
            onnxParams.Learnables.mask_decoder_outp_17 = this.mask_decoder_outp_17;
            onnxParams.Learnables.mask_decoder_outp_18 = this.mask_decoder_outp_18;
            onnxParams.Learnables.mask_decoder_outp_19 = this.mask_decoder_outp_19;
            onnxParams.Learnables.mask_decoder_outp_2 = this.mask_decoder_outp_2;
            onnxParams.Learnables.mask_decoder_outp_20 = this.mask_decoder_outp_20;
            onnxParams.Learnables.mask_decoder_outp_21 = this.mask_decoder_outp_21;
            onnxParams.Learnables.mask_decoder_outp_22 = this.mask_decoder_outp_22;
            onnxParams.Learnables.mask_decoder_outp_23 = this.mask_decoder_outp_23;
            onnxParams.Learnables.mask_decoder_outp_3 = this.mask_decoder_outp_3;
            onnxParams.Learnables.mask_decoder_outp_4 = this.mask_decoder_outp_4;
            onnxParams.Learnables.mask_decoder_outp_5 = this.mask_decoder_outp_5;
            onnxParams.Learnables.mask_decoder_outp_6 = this.mask_decoder_outp_6;
            onnxParams.Learnables.mask_decoder_outp_7 = this.mask_decoder_outp_7;
            onnxParams.Learnables.mask_decoder_outp_8 = this.mask_decoder_outp_8;
            onnxParams.Learnables.mask_decoder_outp_9 = this.mask_decoder_outp_9;
            onnxParams.Learnables.mask_decoder_output_ = this.mask_decoder_output_;
            onnxParams.Learnables.mask_decoder_tran_14 = this.mask_decoder_tran_14;
            onnxParams.Learnables.mask_decoder_tran_15 = this.mask_decoder_tran_15;
            onnxParams.Learnables.mask_decoder_tran_16 = this.mask_decoder_tran_16;
            onnxParams.Learnables.mask_decoder_tran_17 = this.mask_decoder_tran_17;
            onnxParams.Learnables.mask_decoder_tran_18 = this.mask_decoder_tran_18;
            onnxParams.Learnables.mask_decoder_tran_19 = this.mask_decoder_tran_19;
            onnxParams.Learnables.mask_decoder_tran_20 = this.mask_decoder_tran_20;
            onnxParams.Learnables.mask_decoder_tran_21 = this.mask_decoder_tran_21;
            onnxParams.Learnables.mask_decoder_tran_36 = this.mask_decoder_tran_36;
            onnxParams.Learnables.mask_decoder_tran_37 = this.mask_decoder_tran_37;
            onnxParams.Learnables.mask_decoder_tran_38 = this.mask_decoder_tran_38;
            onnxParams.Learnables.mask_decoder_tran_39 = this.mask_decoder_tran_39;
            onnxParams.Learnables.mask_decoder_tran_40 = this.mask_decoder_tran_40;
            onnxParams.Learnables.mask_decoder_tran_41 = this.mask_decoder_tran_41;
            onnxParams.Learnables.mask_decoder_tran_42 = this.mask_decoder_tran_42;
            onnxParams.Learnables.mask_decoder_tran_43 = this.mask_decoder_tran_43;
            onnxParams.Learnables.mask_decoder_tran_48 = this.mask_decoder_tran_48;
            onnxParams.Learnables.mask_decoder_tran_49 = this.mask_decoder_tran_49;
            onnxParams.Learnables.model_prompt_enco_7 = this.model_prompt_enco_7;
            onnxParams.Learnables.onnx__Expand_1573 = this.onnx__Expand_1573;
            onnxParams.Learnables.onnx__MatMul_1578 = this.onnx__MatMul_1578;
            onnxParams.Learnables.onnx__MatMul_1579 = this.onnx__MatMul_1579;
            onnxParams.Learnables.onnx__MatMul_1580 = this.onnx__MatMul_1580;
            onnxParams.Learnables.onnx__MatMul_1584 = this.onnx__MatMul_1584;
            onnxParams.Learnables.onnx__MatMul_1585 = this.onnx__MatMul_1585;
            onnxParams.Learnables.onnx__MatMul_1586 = this.onnx__MatMul_1586;
            onnxParams.Learnables.onnx__MatMul_1587 = this.onnx__MatMul_1587;
            onnxParams.Learnables.onnx__MatMul_1591 = this.onnx__MatMul_1591;
            onnxParams.Learnables.onnx__MatMul_1592 = this.onnx__MatMul_1592;
            onnxParams.Learnables.onnx__MatMul_1593 = this.onnx__MatMul_1593;
            onnxParams.Learnables.onnx__MatMul_1594 = this.onnx__MatMul_1594;
            onnxParams.Learnables.onnx__MatMul_1595 = this.onnx__MatMul_1595;
            onnxParams.Learnables.onnx__MatMul_1596 = this.onnx__MatMul_1596;
            onnxParams.Learnables.onnx__MatMul_1600 = this.onnx__MatMul_1600;
            onnxParams.Learnables.onnx__MatMul_1601 = this.onnx__MatMul_1601;
            onnxParams.Learnables.onnx__MatMul_1602 = this.onnx__MatMul_1602;
            onnxParams.Learnables.onnx__MatMul_1603 = this.onnx__MatMul_1603;
            onnxParams.Learnables.onnx__MatMul_1607 = this.onnx__MatMul_1607;
            onnxParams.Learnables.onnx__MatMul_1608 = this.onnx__MatMul_1608;
            onnxParams.Learnables.onnx__MatMul_1609 = this.onnx__MatMul_1609;
            onnxParams.Learnables.onnx__MatMul_1610 = this.onnx__MatMul_1610;
            onnxParams.Learnables.onnx__MatMul_1614 = this.onnx__MatMul_1614;
            onnxParams.Learnables.onnx__MatMul_1615 = this.onnx__MatMul_1615;
            onnxParams.Learnables.onnx__MatMul_1616 = this.onnx__MatMul_1616;
            onnxParams.Learnables.onnx__MatMul_1617 = this.onnx__MatMul_1617;
            onnxParams.Learnables.onnx__MatMul_1618 = this.onnx__MatMul_1618;
            onnxParams.Learnables.onnx__MatMul_1619 = this.onnx__MatMul_1619;
            onnxParams.Learnables.onnx__MatMul_1623 = this.onnx__MatMul_1623;
            onnxParams.Learnables.onnx__MatMul_1624 = this.onnx__MatMul_1624;
            onnxParams.Learnables.onnx__MatMul_1625 = this.onnx__MatMul_1625;
            onnxParams.Learnables.onnx__MatMul_1626 = this.onnx__MatMul_1626;
            onnxParams.Learnables.onnx__MatMul_1630 = this.onnx__MatMul_1630;
            onnxParams.Learnables.onnx__Unsqueeze_1019 = this.onnx__Unsqueeze_1019;
            onnxParams.Learnables.onnx__Unsqueeze_1021 = this.onnx__Unsqueeze_1021;
            onnxParams.Learnables.onnx__Unsqueeze_1023 = this.onnx__Unsqueeze_1023;
            onnxParams.Learnables.onnx__Unsqueeze_1056 = this.onnx__Unsqueeze_1056;
            onnxParams.Learnables.onnx__Unsqueeze_1058 = this.onnx__Unsqueeze_1058;
            onnxParams.Learnables.onnx__Unsqueeze_1062 = this.onnx__Unsqueeze_1062;
            onnxParams.Learnables.onnx__Unsqueeze_1080 = this.onnx__Unsqueeze_1080;
            onnxParams.Learnables.onnx__Unsqueeze_1082 = this.onnx__Unsqueeze_1082;
            onnxParams.Learnables.onnx__Unsqueeze_1086 = this.onnx__Unsqueeze_1086;
            onnxParams.Learnables.onnx__Unsqueeze_1103 = this.onnx__Unsqueeze_1103;
            onnxParams.Learnables.onnx__Unsqueeze_1105 = this.onnx__Unsqueeze_1105;
            onnxParams.Learnables.onnx__Unsqueeze_1109 = this.onnx__Unsqueeze_1109;
            onnxParams.Learnables.onnx__Unsqueeze_1134 = this.onnx__Unsqueeze_1134;
            onnxParams.Learnables.onnx__Unsqueeze_1136 = this.onnx__Unsqueeze_1136;
            onnxParams.Learnables.onnx__Unsqueeze_1138 = this.onnx__Unsqueeze_1138;
            onnxParams.Learnables.onnx__Unsqueeze_1179 = this.onnx__Unsqueeze_1179;
            onnxParams.Learnables.onnx__Unsqueeze_1181 = this.onnx__Unsqueeze_1181;
            onnxParams.Learnables.onnx__Unsqueeze_1185 = this.onnx__Unsqueeze_1185;
            onnxParams.Learnables.onnx__Unsqueeze_1203 = this.onnx__Unsqueeze_1203;
            onnxParams.Learnables.onnx__Unsqueeze_1205 = this.onnx__Unsqueeze_1205;
            onnxParams.Learnables.onnx__Unsqueeze_1209 = this.onnx__Unsqueeze_1209;
            onnxParams.Learnables.onnx__Unsqueeze_1226 = this.onnx__Unsqueeze_1226;
            onnxParams.Learnables.onnx__Unsqueeze_1228 = this.onnx__Unsqueeze_1228;
            onnxParams.Learnables.onnx__Unsqueeze_1232 = this.onnx__Unsqueeze_1232;
            onnxParams.Learnables.onnx__Unsqueeze_1257 = this.onnx__Unsqueeze_1257;
            onnxParams.Learnables.onnx__Unsqueeze_1259 = this.onnx__Unsqueeze_1259;
            onnxParams.Learnables.onnx__Unsqueeze_1261 = this.onnx__Unsqueeze_1261;
            onnxParams.Learnables.onnx__Unsqueeze_1293 = this.onnx__Unsqueeze_1293;
            onnxParams.Learnables.onnx__Unsqueeze_1295 = this.onnx__Unsqueeze_1295;
            onnxParams.Learnables.onnx__Unsqueeze_1299 = this.onnx__Unsqueeze_1299;
            onnxParams.Learnables.onnx__Unsqueeze_1317 = this.onnx__Unsqueeze_1317;
            onnxParams.Learnables.onnx__Unsqueeze_1319 = this.onnx__Unsqueeze_1319;
            onnxParams.Learnables.onnx__Unsqueeze_1323 = this.onnx__Unsqueeze_1323;
            onnxParams.Learnables.onnx__Unsqueeze_1340 = this.onnx__Unsqueeze_1340;
            onnxParams.Learnables.onnx__Unsqueeze_1342 = this.onnx__Unsqueeze_1342;
            onnxParams.Learnables.onnx__Unsqueeze_1346 = this.onnx__Unsqueeze_1346;
            onnxParams.Learnables.onnx__Unsqueeze_1371 = this.onnx__Unsqueeze_1371;
            onnxParams.Learnables.onnx__Unsqueeze_1373 = this.onnx__Unsqueeze_1373;
            onnxParams.Learnables.onnx__Unsqueeze_1375 = this.onnx__Unsqueeze_1375;
            onnxParams.Learnables.onnx__Unsqueeze_1396 = this.onnx__Unsqueeze_1396;
            onnxParams.Learnables.onnx__Unsqueeze_1398 = this.onnx__Unsqueeze_1398;
            onnxParams.Learnables.onnx__Unsqueeze_1400 = this.onnx__Unsqueeze_1400;
            onnxParams.Learnables.onnx__Unsqueeze_1402 = this.onnx__Unsqueeze_1402;
            onnxParams.Learnables.onnx__Unsqueeze_591 = this.onnx__Unsqueeze_591;
            onnxParams.Learnables.onnx__Unsqueeze_593 = this.onnx__Unsqueeze_593;
            onnxParams.Learnables.onnx__Unsqueeze_597 = this.onnx__Unsqueeze_597;
            onnxParams.Learnables.onnx__Unsqueeze_615 = this.onnx__Unsqueeze_615;
            onnxParams.Learnables.onnx__Unsqueeze_617 = this.onnx__Unsqueeze_617;
            onnxParams.Learnables.onnx__Unsqueeze_621 = this.onnx__Unsqueeze_621;
            onnxParams.Learnables.onnx__Unsqueeze_638 = this.onnx__Unsqueeze_638;
            onnxParams.Learnables.onnx__Unsqueeze_640 = this.onnx__Unsqueeze_640;
            onnxParams.Learnables.onnx__Unsqueeze_644 = this.onnx__Unsqueeze_644;
            onnxParams.Learnables.onnx__Unsqueeze_669 = this.onnx__Unsqueeze_669;
            onnxParams.Learnables.onnx__Unsqueeze_671 = this.onnx__Unsqueeze_671;
            onnxParams.Learnables.onnx__Unsqueeze_673 = this.onnx__Unsqueeze_673;
            onnxParams.Learnables.onnx__Unsqueeze_705 = this.onnx__Unsqueeze_705;
            onnxParams.Learnables.onnx__Unsqueeze_707 = this.onnx__Unsqueeze_707;
            onnxParams.Learnables.onnx__Unsqueeze_711 = this.onnx__Unsqueeze_711;
            onnxParams.Learnables.onnx__Unsqueeze_729 = this.onnx__Unsqueeze_729;
            onnxParams.Learnables.onnx__Unsqueeze_731 = this.onnx__Unsqueeze_731;
            onnxParams.Learnables.onnx__Unsqueeze_735 = this.onnx__Unsqueeze_735;
            onnxParams.Learnables.onnx__Unsqueeze_752 = this.onnx__Unsqueeze_752;
            onnxParams.Learnables.onnx__Unsqueeze_754 = this.onnx__Unsqueeze_754;
            onnxParams.Learnables.onnx__Unsqueeze_758 = this.onnx__Unsqueeze_758;
            onnxParams.Learnables.onnx__Unsqueeze_783 = this.onnx__Unsqueeze_783;
            onnxParams.Learnables.onnx__Unsqueeze_785 = this.onnx__Unsqueeze_785;
            onnxParams.Learnables.onnx__Unsqueeze_787 = this.onnx__Unsqueeze_787;
            onnxParams.Learnables.onnx__Unsqueeze_828 = this.onnx__Unsqueeze_828;
            onnxParams.Learnables.onnx__Unsqueeze_830 = this.onnx__Unsqueeze_830;
            onnxParams.Learnables.onnx__Unsqueeze_834 = this.onnx__Unsqueeze_834;
            onnxParams.Learnables.onnx__Unsqueeze_852 = this.onnx__Unsqueeze_852;
            onnxParams.Learnables.onnx__Unsqueeze_854 = this.onnx__Unsqueeze_854;
            onnxParams.Learnables.onnx__Unsqueeze_858 = this.onnx__Unsqueeze_858;
            onnxParams.Learnables.onnx__Unsqueeze_875 = this.onnx__Unsqueeze_875;
            onnxParams.Learnables.onnx__Unsqueeze_877 = this.onnx__Unsqueeze_877;
            onnxParams.Learnables.onnx__Unsqueeze_881 = this.onnx__Unsqueeze_881;
            onnxParams.Learnables.onnx__Unsqueeze_906 = this.onnx__Unsqueeze_906;
            onnxParams.Learnables.onnx__Unsqueeze_908 = this.onnx__Unsqueeze_908;
            onnxParams.Learnables.onnx__Unsqueeze_910 = this.onnx__Unsqueeze_910;
            onnxParams.Learnables.onnx__Unsqueeze_941 = this.onnx__Unsqueeze_941;
            onnxParams.Learnables.onnx__Unsqueeze_943 = this.onnx__Unsqueeze_943;
            onnxParams.Learnables.onnx__Unsqueeze_947 = this.onnx__Unsqueeze_947;
            onnxParams.Learnables.onnx__Unsqueeze_965 = this.onnx__Unsqueeze_965;
            onnxParams.Learnables.onnx__Unsqueeze_967 = this.onnx__Unsqueeze_967;
            onnxParams.Learnables.onnx__Unsqueeze_971 = this.onnx__Unsqueeze_971;
            onnxParams.Learnables.onnx__Unsqueeze_988 = this.onnx__Unsqueeze_988;
            onnxParams.Learnables.onnx__Unsqueeze_990 = this.onnx__Unsqueeze_990;
            onnxParams.Learnables.onnx__Unsqueeze_994 = this.onnx__Unsqueeze_994;
            onnxParams.Learnables.x_Constant_17_output = this.x_Constant_17_output;
            onnxParams.Learnables.x_Constant_19_output = this.x_Constant_19_output;
            onnxParams.Learnables.x_Constant_26_output = this.x_Constant_26_output;
            onnxParams.Learnables.x_Constant_27_output = this.x_Constant_27_output;
            onnxParams.Learnables.x_Constant_28_output = this.x_Constant_28_output;
            onnxParams.Learnables.x_Constant_42_output = this.x_Constant_42_output;
            onnxParams.Learnables.x_Constant_43_output = this.x_Constant_43_output;
            onnxParams.Learnables.x_Constant_44_output = this.x_Constant_44_output;
            onnxParams.Learnables.x_Constant_65_output = this.x_Constant_65_output;
            onnxParams.Learnables.x_Constant_66_output = this.x_Constant_66_output;
            onnxParams.Learnables.x_Constant_67_output = this.x_Constant_67_output;
            onnxParams.Learnables.x_Constant_68_output = this.x_Constant_68_output;
            onnxParams.Learnables.x_Constant_6_output_ = this.x_Constant_6_output_;
            onnxParams.Learnables.x_pe_layer_Constan_1 = this.x_pe_layer_Constan_1;
            [iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0, iou_predictionsNumDims, x_Reshape_7_output_0NumDims, x_Concat_10_output_0NumDims] = Unsqueeze_To_ReshapeFcn(point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, point_coordsNumDims, point_labelsNumDims, has_mask_inputNumDims, x_mask_downscalin_40NumDims, image_embeddingsNumDims, onnxParams, 'Training', true, ...
                'InputDataPermutation', {['as-is'], ['as-is'], ['as-is'], [4 3 1 2], ['as-is'], ['as-is'], ['as-is'], ['as-is'], ['as-is'], ['as-is']}, ...
                'OutputDataPermutation', {['as-is'], [3 4 2 1], ['as-is'], ['as-is'], ['as-is'], ['as-is']});
            if any(cellfun(@(A)~isnumeric(A) && ~islogical(A), {iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0}))
                fprintf('Runtime error in network. At least one output of custom layer ''%s'' is a non-numeric, non-logical value.\n', 'Unsqueeze_To_ReshapeLayer1127');
                error(message('nnet_cnn_onnx:onnx:BadCustomLayerRuntimeOutput', 'Unsqueeze_To_ReshapeLayer1127'));
            end
            iou_predictions = dlarray(single(iou_predictions), repmat('U', 1, max(2, iou_predictionsNumDims)));
            x_Reshape_7_output_0 = dlarray(single(x_Reshape_7_output_0), 'SSCB');
            x_Concat_10_output_0 = dlarray(single(x_Concat_10_output_0), repmat('U', 1, max(2, x_Concat_10_output_0NumDims)));
            x_Concat_10_output_0NumDims = dlarray(ones(1,x_Concat_10_output_0NumDims,'like',iou_predictions), 'UU');
            if ~coder.target('MATLAB')
                iou_predictions = extractdata(iou_predictions);
                x_Reshape_7_output_0 = extractdata(x_Reshape_7_output_0);
                x_Concat_10_output_0 = extractdata(x_Concat_10_output_0);
                x_Concat_10_output_0NumDims = extractdata(x_Concat_10_output_0NumDims);
            end
        end
    end
end

function [iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0, iou_predictionsNumDims, x_Reshape_7_output_0NumDims, x_Concat_10_output_0NumDims, state] = Unsqueeze_To_ReshapeFcn(point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, point_coordsNumDims, point_labelsNumDims, has_mask_inputNumDims, x_mask_downscalin_40NumDims, image_embeddingsNumDims, params, varargin)
%UNSQUEEZE_TO_RESHAPEFCN Function implementing an imported ONNX network.
%
% THIS FILE WAS AUTO-GENERATED BY importONNXFunction.
% ONNX Operator Set Version: 17
%
% Variable names in this function are taken from the original ONNX file.
%
% [IOU_PREDICTIONS, X_RESHAPE_7_OUTPUT_0, X_CONCAT_10_OUTPUT_0] = Unsqueeze_To_ReshapeFcn(POINT_COORDS, POINT_LABELS, HAS_MASK_INPUT, X_MASK_DOWNSCALIN_40, IMAGE_EMBEDDINGS, PARAMS)
%			- Evaluates the imported ONNX network UNSQUEEZE_TO_RESHAPEFCN with input(s)
%			POINT_COORDS, POINT_LABELS, HAS_MASK_INPUT, X_MASK_DOWNSCALIN_40, IMAGE_EMBEDDINGS and the imported network parameters in PARAMS. Returns
%			network output(s) in IOU_PREDICTIONS, X_RESHAPE_7_OUTPUT_0, X_CONCAT_10_OUTPUT_0.
%
% [IOU_PREDICTIONS, X_RESHAPE_7_OUTPUT_0, X_CONCAT_10_OUTPUT_0, STATE] = Unsqueeze_To_ReshapeFcn(POINT_COORDS, POINT_LABELS, HAS_MASK_INPUT, X_MASK_DOWNSCALIN_40, IMAGE_EMBEDDINGS, PARAMS)
%			- Additionally returns state variables in STATE. When training,
%			use this form and set TRAINING to true.
%
% [__] = Unsqueeze_To_ReshapeFcn(POINT_COORDS, POINT_LABELS, HAS_MASK_INPUT, X_MASK_DOWNSCALIN_40, IMAGE_EMBEDDINGS, PARAMS, 'NAME1', VAL1, 'NAME2', VAL2, ...)
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
% POINT_COORDS, POINT_LABELS, HAS_MASK_INPUT, X_MASK_DOWNSCALIN_40, IMAGE_EMBEDDINGS
%			- Input(s) to the ONNX network.
%			  The input size(s) expected by the ONNX file are:
%				  POINT_COORDS:		[1, num_points, 2]				Type: FLOAT
%				  POINT_LABELS:		[1, num_points]				Type: FLOAT
%				  HAS_MASK_INPUT:		[1, 1]				Type: FLOAT
%				  X_MASK_DOWNSCALIN_40:		[Unknown, Unknown, Unknown, Unknown]				Type: FLOAT
%				  IMAGE_EMBEDDINGS:		[1, 256, 64, 64]				Type: FLOAT
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
% IOU_PREDICTIONS, X_RESHAPE_7_OUTPUT_0, X_CONCAT_10_OUTPUT_0
%			- Output(s) of the ONNX network.
%			  Without permutation, the size(s) of the outputs are:
%				  IOU_PREDICTIONS:		[Gemmiou_predictions_dim_0, 4]				Type: FLOAT
%				  X_RESHAPE_7_OUTPUT_0:		[Unknown, Unknown, Unknown, Unknown]				Type: FLOAT
%				  X_CONCAT_10_OUTPUT_0:		[1, 1]				Type: FLOAT
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
[point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, Training, outputDataPerms, anyDlarrayInputs] = preprocessInput(point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, params, varargin{:});
% Put all variables into a single struct to implement dynamic scoping:
[Vars, NumDims] = packageVariables(params, {'point_coords', 'point_labels', 'has_mask_input', 'x_mask_downscalin_40', 'image_embeddings'}, {point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings}, [point_coordsNumDims point_labelsNumDims has_mask_inputNumDims x_mask_downscalin_40NumDims image_embeddingsNumDims]);
% Call the top-level graph function:
[iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0, iou_predictionsNumDims, x_Reshape_7_output_0NumDims, x_Concat_10_output_0NumDims, state] = Unsqueeze_To_ReshapeGraph1055(point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, NumDims.point_coords, NumDims.point_labels, NumDims.has_mask_input, NumDims.x_mask_downscalin_40, NumDims.image_embeddings, Vars, NumDims, Training, params.State);
% Postprocess the output data
[iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0] = postprocessOutput(iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0, outputDataPerms, anyDlarrayInputs, Training, varargin{:});
end

function [iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0, iou_predictionsNumDims1124, x_Reshape_7_output_0NumDims1125, x_Concat_10_output_0NumDims1126, state] = Unsqueeze_To_ReshapeGraph1055(point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, point_coordsNumDims1119, point_labelsNumDims1120, has_mask_inputNumDims1121, x_mask_downscalin_40NumDims1122, image_embeddingsNumDims1123, Vars, NumDims, Training, state)
% Function implementing the graph 'Unsqueeze_To_ReshapeGraph1055'
% Update Vars and NumDims from the graph's formal input parameters. Note that state variables are already in Vars.
Vars.point_coords = point_coords;
NumDims.point_coords = point_coordsNumDims1119;
Vars.point_labels = point_labels;
NumDims.point_labels = point_labelsNumDims1120;
Vars.has_mask_input = has_mask_input;
NumDims.has_mask_input = has_mask_inputNumDims1121;
Vars.x_mask_downscalin_40 = x_mask_downscalin_40;
NumDims.x_mask_downscalin_40 = x_mask_downscalin_40NumDims1122;
Vars.image_embeddings = image_embeddings;
NumDims.image_embeddings = image_embeddingsNumDims1123;

% Execute the operators:
% Add:
Vars.x_Add_output_0 = Vars.point_coords + Vars.x_Constant_1_output_;
NumDims.x_Add_output_0 = max(NumDims.point_coords, NumDims.x_Constant_1_output_);

% Div:
Vars.x_Div_output_0 = Vars.x_Add_output_0 ./ Vars.x_Constant_2_output_;
NumDims.x_Div_output_0 = max(NumDims.x_Add_output_0, NumDims.x_Constant_2_output_);

% Mul:
Vars.x_Mul_output_0 = Vars.x_Div_output_0 .* Vars.x_Constant_3_output_;
NumDims.x_Mul_output_0 = max(NumDims.x_Div_output_0, NumDims.x_Constant_3_output_);

% Sub:
Vars.x_Sub_output_0 = Vars.x_Mul_output_0 - Vars.x_Constant_4_output_;
NumDims.x_Sub_output_0 = max(NumDims.x_Mul_output_0, NumDims.x_Constant_4_output_);

% MatMul:
[Vars.x_MatMul_output_0, NumDims.x_MatMul_output_0] = onnxMatMul(Vars.x_Sub_output_0, Vars.model_prompt_enco_7, NumDims.x_Sub_output_0, NumDims.model_prompt_enco_7);

% Mul:
Vars.x_Mul_1_output_0 = Vars.x_MatMul_output_0 .* Vars.x_Constant_5_output_;
NumDims.x_Mul_1_output_0 = max(NumDims.x_MatMul_output_0, NumDims.x_Constant_5_output_);

% Sin:
Vars.x_Sin_output_0 = sin(Vars.x_Mul_1_output_0);
NumDims.x_Sin_output_0 = NumDims.x_Mul_1_output_0;

% Cos:
Vars.x_Cos_output_0 = cos(Vars.x_Mul_1_output_0);
NumDims.x_Cos_output_0 = NumDims.x_Mul_1_output_0;

% Concat:
[Vars.x_Concat_output_0, NumDims.x_Concat_output_0] = onnxConcat(-1, {Vars.x_Sin_output_0, Vars.x_Cos_output_0}, [NumDims.x_Sin_output_0, NumDims.x_Cos_output_0]);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_output_0] = prepareUnsqueezeArgs(Vars.point_labels, Vars.x_Constant_6_output_, NumDims.point_labels);
Vars.x_Unsqueeze_output_0 = reshape(Vars.point_labels, shape);

% Shape:
[Vars.x_Shape_output_0, NumDims.x_Shape_output_0] = onnxShape(Vars.x_Concat_output_0, NumDims.x_Concat_output_0);

% Expand:
[shape, NumDims.x_Expand_output_0] = prepareExpandArgs(Vars.x_Shape_output_0);
Vars.x_Expand_output_0 = Vars.x_Unsqueeze_output_0 + zeros(shape);

% Equal:
Vars.x_Equal_output_0 = Vars.x_Expand_output_0 == Vars.x_Constant_7_output_;
NumDims.x_Equal_output_0 = max(NumDims.x_Expand_output_0, NumDims.x_Constant_7_output_);

% Not:
Vars.x_Not_output_0 = not(Vars.x_Equal_output_0);
NumDims.x_Not_output_0 = NumDims.x_Equal_output_0;

% Cast:
Vars.x_Cast_output_0 = single(Vars.x_Not_output_0);
NumDims.x_Cast_output_0 = NumDims.x_Not_output_0;

% Mul:
Vars.x_Mul_2_output_0 = Vars.x_Concat_output_0 .* Vars.x_Cast_output_0;
NumDims.x_Mul_2_output_0 = max(NumDims.x_Concat_output_0, NumDims.x_Cast_output_0);

% Equal:
Vars.x_Equal_1_output_0 = Vars.x_Expand_output_0 == Vars.x_Constant_8_output_;
NumDims.x_Equal_1_output_0 = max(NumDims.x_Expand_output_0, NumDims.x_Constant_8_output_);

% Cast:
Vars.x_Cast_1_output_0 = single(Vars.x_Equal_1_output_0);
NumDims.x_Cast_1_output_0 = NumDims.x_Equal_1_output_0;

% Mul:
Vars.x_Mul_3_output_0 = Vars.model_prompt_enco_6 .* Vars.x_Cast_1_output_0;
NumDims.x_Mul_3_output_0 = max(NumDims.model_prompt_enco_6, NumDims.x_Cast_1_output_0);

% Add:
Vars.x_Add_1_output_0 = Vars.x_Mul_2_output_0 + Vars.x_Mul_3_output_0;
NumDims.x_Add_1_output_0 = max(NumDims.x_Mul_2_output_0, NumDims.x_Mul_3_output_0);

% Equal:
Vars.x_Equal_2_output_0 = Vars.x_Expand_output_0 == Vars.x_Constant_10_output;
NumDims.x_Equal_2_output_0 = max(NumDims.x_Expand_output_0, NumDims.x_Constant_10_output);

% Cast:
Vars.x_Cast_2_output_0 = single(Vars.x_Equal_2_output_0);
NumDims.x_Cast_2_output_0 = NumDims.x_Equal_2_output_0;

% Mul:
Vars.x_Mul_4_output_0 = Vars.model_prompt_enco_8 .* Vars.x_Cast_2_output_0;
NumDims.x_Mul_4_output_0 = max(NumDims.model_prompt_enco_8, NumDims.x_Cast_2_output_0);

% Add:
Vars.x_Add_2_output_0 = Vars.x_Add_1_output_0 + Vars.x_Mul_4_output_0;
NumDims.x_Add_2_output_0 = max(NumDims.x_Add_1_output_0, NumDims.x_Mul_4_output_0);

% Equal:
Vars.x_Equal_3_output_0 = Vars.x_Expand_output_0 == Vars.x_Constant_11_output;
NumDims.x_Equal_3_output_0 = max(NumDims.x_Expand_output_0, NumDims.x_Constant_11_output);

% Cast:
Vars.x_Cast_3_output_0 = single(Vars.x_Equal_3_output_0);
NumDims.x_Cast_3_output_0 = NumDims.x_Equal_3_output_0;

% Mul:
Vars.x_Mul_5_output_0 = Vars.model_prompt_enco_9 .* Vars.x_Cast_3_output_0;
NumDims.x_Mul_5_output_0 = max(NumDims.model_prompt_enco_9, NumDims.x_Cast_3_output_0);

% Add:
Vars.x_Add_3_output_0 = Vars.x_Add_2_output_0 + Vars.x_Mul_5_output_0;
NumDims.x_Add_3_output_0 = max(NumDims.x_Add_2_output_0, NumDims.x_Mul_5_output_0);

% Equal:
Vars.x_Equal_4_output_0 = Vars.x_Expand_output_0 == Vars.x_Constant_13_output;
NumDims.x_Equal_4_output_0 = max(NumDims.x_Expand_output_0, NumDims.x_Constant_13_output);

% Cast:
Vars.x_Cast_4_output_0 = single(Vars.x_Equal_4_output_0);
NumDims.x_Cast_4_output_0 = NumDims.x_Equal_4_output_0;

% Mul:
Vars.x_Mul_6_output_0 = Vars.model_prompt_enco_10 .* Vars.x_Cast_4_output_0;
NumDims.x_Mul_6_output_0 = max(NumDims.model_prompt_enco_10, NumDims.x_Cast_4_output_0);

% Add:
Vars.x_Add_4_output_0 = Vars.x_Add_3_output_0 + Vars.x_Mul_6_output_0;
NumDims.x_Add_4_output_0 = max(NumDims.x_Add_3_output_0, NumDims.x_Mul_6_output_0);

% Equal:
Vars.x_Equal_5_output_0 = Vars.x_Expand_output_0 == Vars.x_Constant_15_output;
NumDims.x_Equal_5_output_0 = max(NumDims.x_Expand_output_0, NumDims.x_Constant_15_output);

% Cast:
Vars.x_Cast_5_output_0 = single(Vars.x_Equal_5_output_0);
NumDims.x_Cast_5_output_0 = NumDims.x_Equal_5_output_0;

% Mul:
Vars.x_Mul_7_output_0 = Vars.model_prompt_enco_11 .* Vars.x_Cast_5_output_0;
NumDims.x_Mul_7_output_0 = max(NumDims.model_prompt_enco_11, NumDims.x_Cast_5_output_0);

% Add:
Vars.x_Add_5_output_0 = Vars.x_Add_4_output_0 + Vars.x_Mul_7_output_0;
NumDims.x_Add_5_output_0 = max(NumDims.x_Add_4_output_0, NumDims.x_Mul_7_output_0);

% Mul:
Vars.x_Mul_8_output_0 = Vars.has_mask_input .* Vars.x_mask_downscalin_40;
NumDims.x_Mul_8_output_0 = max(NumDims.has_mask_input, NumDims.x_mask_downscalin_40);

% Sub:
Vars.x_Sub_1_output_0 = Vars.x_Constant_16_output - Vars.has_mask_input;
NumDims.x_Sub_1_output_0 = max(NumDims.x_Constant_16_output, NumDims.has_mask_input);

% Mul:
Vars.x_Mul_9_output_0 = Vars.x_Sub_1_output_0 .* Vars.onnx__Mul_1571;
NumDims.x_Mul_9_output_0 = max(NumDims.x_Sub_1_output_0, NumDims.onnx__Mul_1571);

% Add:
Vars.x_Add_6_output_0 = Vars.x_Mul_8_output_0 + Vars.x_Mul_9_output_0;
NumDims.x_Add_6_output_0 = max(NumDims.x_Mul_8_output_0, NumDims.x_Mul_9_output_0);

% MatMul:
[Vars.x_pe_layer_MatMul_ou, NumDims.x_pe_layer_MatMul_ou] = onnxMatMul(Vars.x_pe_layer_Constan_1, Vars.model_prompt_enco_7, NumDims.x_pe_layer_Constan_1, NumDims.model_prompt_enco_7);

% Mul:
Vars.x_pe_layer_Mul_outpu = Vars.x_pe_layer_MatMul_ou .* Vars.x_pe_layer_Constant_;
NumDims.x_pe_layer_Mul_outpu = max(NumDims.x_pe_layer_MatMul_ou, NumDims.x_pe_layer_Constant_);

% Sin:
Vars.x_pe_layer_Sin_outpu = sin(Vars.x_pe_layer_Mul_outpu);
NumDims.x_pe_layer_Sin_outpu = NumDims.x_pe_layer_Mul_outpu;

% Cos:
Vars.x_pe_layer_Cos_outpu = cos(Vars.x_pe_layer_Mul_outpu);
NumDims.x_pe_layer_Cos_outpu = NumDims.x_pe_layer_Mul_outpu;

% Concat:
[Vars.x_pe_layer_Concat_ou, NumDims.x_pe_layer_Concat_ou] = onnxConcat(-1, {Vars.x_pe_layer_Sin_outpu, Vars.x_pe_layer_Cos_outpu}, [NumDims.x_pe_layer_Sin_outpu, NumDims.x_pe_layer_Cos_outpu]);

% Transpose:
[perm, NumDims.x_pe_layer_Transpose] = prepareTransposeArgs(Vars.TransposePerm1056, NumDims.x_pe_layer_Concat_ou);
if ~isempty(perm)
    Vars.x_pe_layer_Transpose = permute(Vars.x_pe_layer_Concat_ou, perm);
end

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_1_output] = prepareUnsqueezeArgs(Vars.x_pe_layer_Transpose, Vars.x_Constant_17_output, NumDims.x_pe_layer_Transpose);
Vars.x_Unsqueeze_1_output = reshape(Vars.x_pe_layer_Transpose, shape);

% Shape:
[Vars.x_Shape_1_output_0, NumDims.x_Shape_1_output_0] = onnxShape(Vars.x_Add_5_output_0, NumDims.x_Add_5_output_0);

% Gather:
[Vars.x_Gather_output_0, NumDims.x_Gather_output_0] = onnxGather(Vars.x_Shape_1_output_0, Vars.x_Constant_18_output, 0, NumDims.x_Shape_1_output_0, NumDims.x_Constant_18_output);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_2_output] = prepareUnsqueezeArgs(Vars.x_Gather_output_0, Vars.x_Constant_19_output, NumDims.x_Gather_output_0);
Vars.x_Unsqueeze_2_output = reshape(Vars.x_Gather_output_0, shape);

% Concat:
[Vars.x_Concat_1_output_0, NumDims.x_Concat_1_output_0] = onnxConcat(0, {Vars.x_Unsqueeze_2_output, Vars.x_Constant_20_output, Vars.x_Constant_21_output}, [NumDims.x_Unsqueeze_2_output, NumDims.x_Constant_20_output, NumDims.x_Constant_21_output]);

% Reshape:
[shape, NumDims.x_Reshape_output_0] = prepareReshapeArgs(Vars.x_Concat_1_output_0, Vars.x_Constant_22_output, NumDims.x_Concat_1_output_0, 0);
Vars.x_Reshape_output_0 = reshape(Vars.x_Concat_1_output_0, shape{:});

% Shape:
[Vars.x_Shape_2_output_0, NumDims.x_Shape_2_output_0] = onnxShape(Vars.x_Reshape_output_0, NumDims.x_Reshape_output_0);

% ConstantOfShape:
[Vars.x_ConstantOfShape_ou, NumDims.x_ConstantOfShape_ou] = onnxConstantOfShape(Vars.ConstantOfShapeValue1057, Vars.x_Shape_2_output_0);

% Mul:
Vars.x_Mul_10_output_0 = Vars.x_ConstantOfShape_ou .* Vars.x_Constant_23_output;
NumDims.x_Mul_10_output_0 = max(NumDims.x_ConstantOfShape_ou, NumDims.x_Constant_23_output);

% Equal:
Vars.x_Equal_6_output_0 = Vars.x_Reshape_output_0 == Vars.x_Mul_10_output_0;
NumDims.x_Equal_6_output_0 = max(NumDims.x_Reshape_output_0, NumDims.x_Mul_10_output_0);

% Where:
[Vars.x_Where_output_0, NumDims.x_Where_output_0] = onnxWhere(Vars.x_Equal_6_output_0, Vars.x_ConstantOfShape_ou, Vars.x_Reshape_output_0, NumDims.x_Equal_6_output_0, NumDims.x_ConstantOfShape_ou, NumDims.x_Reshape_output_0);

% Expand:
[shape, NumDims.x_Expand_1_output_0] = prepareExpandArgs(Vars.x_Where_output_0);
Vars.x_Expand_1_output_0 = Vars.onnx__Expand_1573 + zeros(shape);

% Concat:
[Vars.x_Concat_2_output_0, NumDims.x_Concat_2_output_0] = onnxConcat(1, {Vars.x_Expand_1_output_0, Vars.x_Add_5_output_0}, [NumDims.x_Expand_1_output_0, NumDims.x_Add_5_output_0]);

% Shape:
[Vars.x_Shape_3_output_0, NumDims.x_Shape_3_output_0] = onnxShape(Vars.x_Concat_2_output_0, NumDims.x_Concat_2_output_0);

% Gather:
[Vars.x_Gather_1_output_0, NumDims.x_Gather_1_output_0] = onnxGather(Vars.x_Shape_3_output_0, Vars.x_Constant_24_output, 0, NumDims.x_Shape_3_output_0, NumDims.x_Constant_24_output);

% Reshape:
[shape, NumDims.x_Reshape_1_output_0] = prepareReshapeArgs(Vars.x_Gather_1_output_0, Vars.x_Constant_25_output, NumDims.x_Gather_1_output_0, 0);
Vars.x_Reshape_1_output_0 = reshape(Vars.x_Gather_1_output_0, shape{:});

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_3_output] = prepareUnsqueezeArgs(Vars.image_embeddings, Vars.x_Constant_26_output, NumDims.image_embeddings);
Vars.x_Unsqueeze_3_output = reshape(Vars.image_embeddings, shape);

% Concat:
[Vars.x_Concat_3_output_0, NumDims.x_Concat_3_output_0] = onnxConcat(0, {Vars.x_Constant_29_output, Vars.x_Reshape_1_output_0}, [NumDims.x_Constant_29_output, NumDims.x_Reshape_1_output_0]);

% OneHot:
[Vars.x_OneHot_output_0, NumDims.x_OneHot_output_0] = onnxOneHot(Vars.x_Constant_27_output, Vars.x_Constant_28_output, Vars.x_Concat_3_output_0, -1, NumDims.x_Constant_27_output);

% Shape:
[Vars.x_Shape_4_output_0, NumDims.x_Shape_4_output_0] = onnxShape(Vars.x_OneHot_output_0, NumDims.x_OneHot_output_0);

% Slice:
[Indices, NumDims.x_Slice_output_0] = prepareSliceArgs(Vars.x_Shape_4_output_0, Vars.x_Constant_31_output, Vars.x_Constant_32_output, Vars.x_Constant_30_output, '', NumDims.x_Shape_4_output_0);
Vars.x_Slice_output_0 = subsref(Vars.x_Shape_4_output_0, Indices);

% Concat:
[Vars.x_Concat_4_output_0, NumDims.x_Concat_4_output_0] = onnxConcat(0, {Vars.x_Slice_output_0, Vars.x_Constant_33_output}, [NumDims.x_Slice_output_0, NumDims.x_Constant_33_output]);

% Reshape:
[shape, NumDims.x_Reshape_2_output_0] = prepareReshapeArgs(Vars.x_OneHot_output_0, Vars.x_Concat_4_output_0, NumDims.x_OneHot_output_0, 0);
Vars.x_Reshape_2_output_0 = reshape(Vars.x_OneHot_output_0, shape{:});

% Tile:
[sz, NumDims.x_Tile_output_0] = prepareTileArgs(Vars.x_Reshape_2_output_0);
Vars.x_Tile_output_0 = repmat(Vars.x_Unsqueeze_3_output, sz);

% Shape:
[Vars.x_Shape_5_output_0, NumDims.x_Shape_5_output_0] = onnxShape(Vars.x_Tile_output_0, NumDims.x_Tile_output_0);

% Slice:
[Indices, NumDims.x_Slice_1_output_0] = prepareSliceArgs(Vars.x_Shape_5_output_0, Vars.x_Constant_35_output, Vars.x_Constant_36_output, Vars.x_Constant_34_output, '', NumDims.x_Shape_5_output_0);
Vars.x_Slice_1_output_0 = subsref(Vars.x_Shape_5_output_0, Indices);

% Slice:
[Indices, NumDims.x_Slice_2_output_0] = prepareSliceArgs(Vars.x_Shape_5_output_0, Vars.x_Constant_38_output, Vars.x_Constant_39_output, Vars.x_Constant_37_output, '', NumDims.x_Shape_5_output_0);
Vars.x_Slice_2_output_0 = subsref(Vars.x_Shape_5_output_0, Indices);

% Concat:
[Vars.x_Concat_5_output_0, NumDims.x_Concat_5_output_0] = onnxConcat(0, {Vars.x_Slice_1_output_0, Vars.x_Constant_40_output, Vars.x_Slice_2_output_0}, [NumDims.x_Slice_1_output_0, NumDims.x_Constant_40_output, NumDims.x_Slice_2_output_0]);

% Reshape:
[shape, NumDims.x_Reshape_3_output_0] = prepareReshapeArgs(Vars.x_Tile_output_0, Vars.x_Concat_5_output_0, NumDims.x_Tile_output_0, 0);
Vars.x_Reshape_3_output_0 = reshape(Vars.x_Tile_output_0, shape{:});

% Add:
Vars.x_Add_7_output_0 = Vars.x_Reshape_3_output_0 + Vars.x_Add_6_output_0;
NumDims.x_Add_7_output_0 = max(NumDims.x_Reshape_3_output_0, NumDims.x_Add_6_output_0);

% Reshape:
[shape, NumDims.x_Reshape_4_output_0] = prepareReshapeArgs(Vars.x_Gather_1_output_0, Vars.x_Constant_41_output, NumDims.x_Gather_1_output_0, 0);
Vars.x_Reshape_4_output_0 = reshape(Vars.x_Gather_1_output_0, shape{:});

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_4_output] = prepareUnsqueezeArgs(Vars.x_Unsqueeze_1_output, Vars.x_Constant_42_output, NumDims.x_Unsqueeze_1_output);
Vars.x_Unsqueeze_4_output = reshape(Vars.x_Unsqueeze_1_output, shape);

% Concat:
[Vars.x_Concat_6_output_0, NumDims.x_Concat_6_output_0] = onnxConcat(0, {Vars.x_Constant_45_output, Vars.x_Reshape_4_output_0}, [NumDims.x_Constant_45_output, NumDims.x_Reshape_4_output_0]);

% OneHot:
[Vars.x_OneHot_1_output_0, NumDims.x_OneHot_1_output_0] = onnxOneHot(Vars.x_Constant_43_output, Vars.x_Constant_44_output, Vars.x_Concat_6_output_0, -1, NumDims.x_Constant_43_output);

% Shape:
[Vars.x_Shape_6_output_0, NumDims.x_Shape_6_output_0] = onnxShape(Vars.x_OneHot_1_output_0, NumDims.x_OneHot_1_output_0);

% Slice:
[Indices, NumDims.x_Slice_3_output_0] = prepareSliceArgs(Vars.x_Shape_6_output_0, Vars.x_Constant_47_output, Vars.x_Constant_48_output, Vars.x_Constant_46_output, '', NumDims.x_Shape_6_output_0);
Vars.x_Slice_3_output_0 = subsref(Vars.x_Shape_6_output_0, Indices);

% Concat:
[Vars.x_Concat_7_output_0, NumDims.x_Concat_7_output_0] = onnxConcat(0, {Vars.x_Slice_3_output_0, Vars.x_Constant_49_output}, [NumDims.x_Slice_3_output_0, NumDims.x_Constant_49_output]);

% Reshape:
[shape, NumDims.x_Reshape_5_output_0] = prepareReshapeArgs(Vars.x_OneHot_1_output_0, Vars.x_Concat_7_output_0, NumDims.x_OneHot_1_output_0, 0);
Vars.x_Reshape_5_output_0 = reshape(Vars.x_OneHot_1_output_0, shape{:});

% Tile:
[sz, NumDims.x_Tile_1_output_0] = prepareTileArgs(Vars.x_Reshape_5_output_0);
Vars.x_Tile_1_output_0 = repmat(Vars.x_Unsqueeze_4_output, sz);

% Shape:
[Vars.x_Shape_7_output_0, NumDims.x_Shape_7_output_0] = onnxShape(Vars.x_Tile_1_output_0, NumDims.x_Tile_1_output_0);

% Slice:
[Indices, NumDims.x_Slice_4_output_0] = prepareSliceArgs(Vars.x_Shape_7_output_0, Vars.x_Constant_51_output, Vars.x_Constant_52_output, Vars.x_Constant_50_output, '', NumDims.x_Shape_7_output_0);
Vars.x_Slice_4_output_0 = subsref(Vars.x_Shape_7_output_0, Indices);

% Slice:
[Indices, NumDims.x_Slice_5_output_0] = prepareSliceArgs(Vars.x_Shape_7_output_0, Vars.x_Constant_54_output, Vars.x_Constant_55_output, Vars.x_Constant_53_output, '', NumDims.x_Shape_7_output_0);
Vars.x_Slice_5_output_0 = subsref(Vars.x_Shape_7_output_0, Indices);

% Concat:
[Vars.x_Concat_8_output_0, NumDims.x_Concat_8_output_0] = onnxConcat(0, {Vars.x_Slice_4_output_0, Vars.x_Constant_56_output, Vars.x_Slice_5_output_0}, [NumDims.x_Slice_4_output_0, NumDims.x_Constant_56_output, NumDims.x_Slice_5_output_0]);

% Reshape:
[shape, NumDims.x_Reshape_6_output_0] = prepareReshapeArgs(Vars.x_Tile_1_output_0, Vars.x_Concat_8_output_0, NumDims.x_Tile_1_output_0, 0);
Vars.x_Reshape_6_output_0 = reshape(Vars.x_Tile_1_output_0, shape{:});

% Shape:
[Vars.x_Shape_8_output_0, NumDims.x_Shape_8_output_0] = onnxShape(Vars.x_Add_7_output_0, NumDims.x_Add_7_output_0);

% Gather:
[Vars.x_Gather_2_output_0, NumDims.x_Gather_2_output_0] = onnxGather(Vars.x_Shape_8_output_0, Vars.x_Constant_57_output, 0, NumDims.x_Shape_8_output_0, NumDims.x_Constant_57_output);

% Shape:
[Vars.x_Shape_9_output_0, NumDims.x_Shape_9_output_0] = onnxShape(Vars.x_Add_7_output_0, NumDims.x_Add_7_output_0);

% Gather:
[Vars.x_Gather_3_output_0, NumDims.x_Gather_3_output_0] = onnxGather(Vars.x_Shape_9_output_0, Vars.x_Constant_58_output, 0, NumDims.x_Shape_9_output_0, NumDims.x_Constant_58_output);

% Shape:
[Vars.x_Shape_10_output_0, NumDims.x_Shape_10_output_0] = onnxShape(Vars.x_Add_7_output_0, NumDims.x_Add_7_output_0);

% Gather:
[Vars.x_Gather_4_output_0, NumDims.x_Gather_4_output_0] = onnxGather(Vars.x_Shape_10_output_0, Vars.x_Constant_59_output, 0, NumDims.x_Shape_10_output_0, NumDims.x_Constant_59_output);

% Shape:
[Vars.x_Shape_11_output_0, NumDims.x_Shape_11_output_0] = onnxShape(Vars.x_Add_7_output_0, NumDims.x_Add_7_output_0);

% Gather:
[Vars.x_Gather_5_output_0, NumDims.x_Gather_5_output_0] = onnxGather(Vars.x_Shape_11_output_0, Vars.x_Constant_60_output, 0, NumDims.x_Shape_11_output_0, NumDims.x_Constant_60_output);

% Shape:
[Vars.x_transformer_Shap_1, NumDims.x_transformer_Shap_1] = onnxShape(Vars.x_Add_7_output_0, NumDims.x_Add_7_output_0);

% Slice:
[Indices, NumDims.x_transformer_Slic_1] = prepareSliceArgs(Vars.x_transformer_Shap_1, Vars.x_transformer_Consta, Vars.x_transformer_Con_1, Vars.x_transformer_Con_7, '', NumDims.x_transformer_Shap_1);
Vars.x_transformer_Slic_1 = subsref(Vars.x_transformer_Shap_1, Indices);

% Concat:
[Vars.x_transformer_Conc_1, NumDims.x_transformer_Conc_1] = onnxConcat(0, {Vars.x_transformer_Slic_1, Vars.x_transformer_Con_2}, [NumDims.x_transformer_Slic_1, NumDims.x_transformer_Con_2]);

% Reshape:
[shape, NumDims.x_transformer_Resh_1] = prepareReshapeArgs(Vars.x_Add_7_output_0, Vars.x_transformer_Conc_1, NumDims.x_Add_7_output_0, 0);
Vars.x_transformer_Resh_1 = reshape(Vars.x_Add_7_output_0, shape{:});

% Transpose:
[perm, NumDims.x_transformer_Tran_1] = prepareTransposeArgs(Vars.TransposePerm1058, NumDims.x_transformer_Resh_1);
if ~isempty(perm)
    Vars.x_transformer_Tran_1 = permute(Vars.x_transformer_Resh_1, perm);
end

% Shape:
[Vars.x_transformer_Shape_, NumDims.x_transformer_Shape_] = onnxShape(Vars.x_Reshape_6_output_0, NumDims.x_Reshape_6_output_0);

% Slice:
[Indices, NumDims.x_transformer_Slice_] = prepareSliceArgs(Vars.x_transformer_Shape_, Vars.x_transformer_Con_4, Vars.x_transformer_Con_5, Vars.x_transformer_Con_3, '', NumDims.x_transformer_Shape_);
Vars.x_transformer_Slice_ = subsref(Vars.x_transformer_Shape_, Indices);

% Concat:
[Vars.x_transformer_Concat, NumDims.x_transformer_Concat] = onnxConcat(0, {Vars.x_transformer_Slice_, Vars.x_transformer_Con_6}, [NumDims.x_transformer_Slice_, NumDims.x_transformer_Con_6]);

% Reshape:
[shape, NumDims.x_transformer_Reshap] = prepareReshapeArgs(Vars.x_Reshape_6_output_0, Vars.x_transformer_Concat, NumDims.x_Reshape_6_output_0, 0);
Vars.x_transformer_Reshap = reshape(Vars.x_Reshape_6_output_0, shape{:});

% Transpose:
[perm, NumDims.x_transformer_Transp] = prepareTransposeArgs(Vars.TransposePerm1059, NumDims.x_transformer_Reshap);
if ~isempty(perm)
    Vars.x_transformer_Transp = permute(Vars.x_transformer_Reshap, perm);
end

% MatMul:
[Vars.x_transformer_l_288, NumDims.x_transformer_l_288] = onnxMatMul(Vars.x_Concat_2_output_0, Vars.onnx__MatMul_1578, NumDims.x_Concat_2_output_0, NumDims.onnx__MatMul_1578);

% Add:
Vars.x_transformer_l_287 = Vars.mask_decoder_tran_24 + Vars.x_transformer_l_288;
NumDims.x_transformer_l_287 = max(NumDims.mask_decoder_tran_24, NumDims.x_transformer_l_288);

% MatMul:
[Vars.x_transformer_l_284, NumDims.x_transformer_l_284] = onnxMatMul(Vars.x_Concat_2_output_0, Vars.onnx__MatMul_1579, NumDims.x_Concat_2_output_0, NumDims.onnx__MatMul_1579);

% Add:
Vars.x_transformer_l_283 = Vars.mask_decoder_tran_22 + Vars.x_transformer_l_284;
NumDims.x_transformer_l_283 = max(NumDims.mask_decoder_tran_22, NumDims.x_transformer_l_284);

% MatMul:
[Vars.x_transformer_l_290, NumDims.x_transformer_l_290] = onnxMatMul(Vars.x_Concat_2_output_0, Vars.onnx__MatMul_1580, NumDims.x_Concat_2_output_0, NumDims.onnx__MatMul_1580);

% Add:
Vars.x_transformer_l_289 = Vars.mask_decoder_tran_25 + Vars.x_transformer_l_290;
NumDims.x_transformer_l_289 = max(NumDims.mask_decoder_tran_25, NumDims.x_transformer_l_290);

% Shape:
[Vars.x_transformer_l_265, NumDims.x_transformer_l_265] = onnxShape(Vars.x_transformer_l_287, NumDims.x_transformer_l_287);

% Gather:
[Vars.x_transformer_l_245, NumDims.x_transformer_l_245] = onnxGather(Vars.x_transformer_l_265, Vars.x_transformer_l_228, 0, NumDims.x_transformer_l_265, NumDims.x_transformer_l_228);

% Shape:
[Vars.x_transformer_l_256, NumDims.x_transformer_l_256] = onnxShape(Vars.x_transformer_l_287, NumDims.x_transformer_l_287);

% Gather:
[Vars.x_transformer_l_236, NumDims.x_transformer_l_236] = onnxGather(Vars.x_transformer_l_256, Vars.x_transformer_l_219, 0, NumDims.x_transformer_l_256, NumDims.x_transformer_l_219);

% Shape:
[Vars.x_transformer_l_257, NumDims.x_transformer_l_257] = onnxShape(Vars.x_transformer_l_287, NumDims.x_transformer_l_287);

% Gather:
[Vars.x_transformer_l_237, NumDims.x_transformer_l_237] = onnxGather(Vars.x_transformer_l_257, Vars.x_transformer_l_220, 0, NumDims.x_transformer_l_257, NumDims.x_transformer_l_220);

% Div:
Vars.x_transformer_l_232 = fix(Vars.x_transformer_l_237 ./ Vars.x_transformer_l_221);
NumDims.x_transformer_l_232 = max(NumDims.x_transformer_l_237, NumDims.x_transformer_l_221);

% Cast:
Vars.x_transformer_l_204 = cast(int64(extractdata(Vars.x_transformer_l_232)), 'like', Vars.x_transformer_l_232);
NumDims.x_transformer_l_204 = NumDims.x_transformer_l_232;

% Cast:
Vars.x_transformer_l_199 = cast(int64(extractdata(Vars.x_transformer_l_204)), 'like', Vars.x_transformer_l_204);
NumDims.x_transformer_l_199 = NumDims.x_transformer_l_204;

% Unsqueeze:
[shape, NumDims.x_transformer_l_282] = prepareUnsqueezeArgs(Vars.x_transformer_l_245, Vars.onnx__Unsqueeze_591, NumDims.x_transformer_l_245);
Vars.x_transformer_l_282 = reshape(Vars.x_transformer_l_245, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_273] = prepareUnsqueezeArgs(Vars.x_transformer_l_236, Vars.onnx__Unsqueeze_593, NumDims.x_transformer_l_236);
Vars.x_transformer_l_273 = reshape(Vars.x_transformer_l_236, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_274] = prepareUnsqueezeArgs(Vars.x_transformer_l_199, Vars.onnx__Unsqueeze_597, NumDims.x_transformer_l_199);
Vars.x_transformer_l_274 = reshape(Vars.x_transformer_l_199, shape);

% Concat:
[Vars.x_transformer_l_208, NumDims.x_transformer_l_208] = onnxConcat(0, {Vars.x_transformer_l_282, Vars.x_transformer_l_273, Vars.x_transformer_l_222, Vars.x_transformer_l_274}, [NumDims.x_transformer_l_282, NumDims.x_transformer_l_273, NumDims.x_transformer_l_222, NumDims.x_transformer_l_274]);

% Reshape:
[shape, NumDims.x_transformer_l_252] = prepareReshapeArgs(Vars.x_transformer_l_287, Vars.x_transformer_l_208, NumDims.x_transformer_l_287, 0);
Vars.x_transformer_l_252 = reshape(Vars.x_transformer_l_287, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_270] = prepareTransposeArgs(Vars.TransposePerm1060, NumDims.x_transformer_l_252);
if ~isempty(perm)
    Vars.x_transformer_l_270 = permute(Vars.x_transformer_l_252, perm);
end

% Shape:
[Vars.x_transformer_l_258, NumDims.x_transformer_l_258] = onnxShape(Vars.x_transformer_l_283, NumDims.x_transformer_l_283);

% Gather:
[Vars.x_transformer_l_238, NumDims.x_transformer_l_238] = onnxGather(Vars.x_transformer_l_258, Vars.x_transformer_l_223, 0, NumDims.x_transformer_l_258, NumDims.x_transformer_l_223);

% Shape:
[Vars.x_transformer_l_259, NumDims.x_transformer_l_259] = onnxShape(Vars.x_transformer_l_283, NumDims.x_transformer_l_283);

% Gather:
[Vars.x_transformer_l_239, NumDims.x_transformer_l_239] = onnxGather(Vars.x_transformer_l_259, Vars.x_transformer_l_224, 0, NumDims.x_transformer_l_259, NumDims.x_transformer_l_224);

% Shape:
[Vars.x_transformer_l_260, NumDims.x_transformer_l_260] = onnxShape(Vars.x_transformer_l_283, NumDims.x_transformer_l_283);

% Gather:
[Vars.x_transformer_l_240, NumDims.x_transformer_l_240] = onnxGather(Vars.x_transformer_l_260, Vars.x_transformer_l_225, 0, NumDims.x_transformer_l_260, NumDims.x_transformer_l_225);

% Div:
Vars.x_transformer_l_229 = fix(Vars.x_transformer_l_240 ./ Vars.x_transformer_l_226);
NumDims.x_transformer_l_229 = max(NumDims.x_transformer_l_240, NumDims.x_transformer_l_226);

% Cast:
Vars.x_transformer_l_200 = cast(int64(extractdata(Vars.x_transformer_l_229)), 'like', Vars.x_transformer_l_229);
NumDims.x_transformer_l_200 = NumDims.x_transformer_l_229;

% Cast:
Vars.x_transformer_l_201 = cast(int64(extractdata(Vars.x_transformer_l_200)), 'like', Vars.x_transformer_l_200);
NumDims.x_transformer_l_201 = NumDims.x_transformer_l_200;

% Unsqueeze:
[shape, NumDims.x_transformer_l_275] = prepareUnsqueezeArgs(Vars.x_transformer_l_238, Vars.onnx__Unsqueeze_615, NumDims.x_transformer_l_238);
Vars.x_transformer_l_275 = reshape(Vars.x_transformer_l_238, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_276] = prepareUnsqueezeArgs(Vars.x_transformer_l_239, Vars.onnx__Unsqueeze_617, NumDims.x_transformer_l_239);
Vars.x_transformer_l_276 = reshape(Vars.x_transformer_l_239, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_277] = prepareUnsqueezeArgs(Vars.x_transformer_l_201, Vars.onnx__Unsqueeze_621, NumDims.x_transformer_l_201);
Vars.x_transformer_l_277 = reshape(Vars.x_transformer_l_201, shape);

% Concat:
[Vars.x_transformer_l_205, NumDims.x_transformer_l_205] = onnxConcat(0, {Vars.x_transformer_l_275, Vars.x_transformer_l_276, Vars.x_transformer_l_227, Vars.x_transformer_l_277}, [NumDims.x_transformer_l_275, NumDims.x_transformer_l_276, NumDims.x_transformer_l_227, NumDims.x_transformer_l_277]);

% Reshape:
[shape, NumDims.x_transformer_l_249] = prepareReshapeArgs(Vars.x_transformer_l_283, Vars.x_transformer_l_205, NumDims.x_transformer_l_283, 0);
Vars.x_transformer_l_249 = reshape(Vars.x_transformer_l_283, shape{:});

% Shape:
[Vars.x_transformer_l_261, NumDims.x_transformer_l_261] = onnxShape(Vars.x_transformer_l_289, NumDims.x_transformer_l_289);

% Gather:
[Vars.x_transformer_l_241, NumDims.x_transformer_l_241] = onnxGather(Vars.x_transformer_l_261, Vars.x_transformer_l_209, 0, NumDims.x_transformer_l_261, NumDims.x_transformer_l_209);

% Shape:
[Vars.x_transformer_l_262, NumDims.x_transformer_l_262] = onnxShape(Vars.x_transformer_l_289, NumDims.x_transformer_l_289);

% Gather:
[Vars.x_transformer_l_242, NumDims.x_transformer_l_242] = onnxGather(Vars.x_transformer_l_262, Vars.x_transformer_l_210, 0, NumDims.x_transformer_l_262, NumDims.x_transformer_l_210);

% Shape:
[Vars.x_transformer_l_263, NumDims.x_transformer_l_263] = onnxShape(Vars.x_transformer_l_289, NumDims.x_transformer_l_289);

% Gather:
[Vars.x_transformer_l_243, NumDims.x_transformer_l_243] = onnxGather(Vars.x_transformer_l_263, Vars.x_transformer_l_211, 0, NumDims.x_transformer_l_263, NumDims.x_transformer_l_211);

% Div:
Vars.x_transformer_l_230 = fix(Vars.x_transformer_l_243 ./ Vars.x_transformer_l_212);
NumDims.x_transformer_l_230 = max(NumDims.x_transformer_l_243, NumDims.x_transformer_l_212);

% Cast:
Vars.x_transformer_l_202 = cast(int64(extractdata(Vars.x_transformer_l_230)), 'like', Vars.x_transformer_l_230);
NumDims.x_transformer_l_202 = NumDims.x_transformer_l_230;

% Cast:
Vars.x_transformer_l_203 = cast(int64(extractdata(Vars.x_transformer_l_202)), 'like', Vars.x_transformer_l_202);
NumDims.x_transformer_l_203 = NumDims.x_transformer_l_202;

% Unsqueeze:
[shape, NumDims.x_transformer_l_278] = prepareUnsqueezeArgs(Vars.x_transformer_l_241, Vars.onnx__Unsqueeze_638, NumDims.x_transformer_l_241);
Vars.x_transformer_l_278 = reshape(Vars.x_transformer_l_241, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_279] = prepareUnsqueezeArgs(Vars.x_transformer_l_242, Vars.onnx__Unsqueeze_640, NumDims.x_transformer_l_242);
Vars.x_transformer_l_279 = reshape(Vars.x_transformer_l_242, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_280] = prepareUnsqueezeArgs(Vars.x_transformer_l_203, Vars.onnx__Unsqueeze_644, NumDims.x_transformer_l_203);
Vars.x_transformer_l_280 = reshape(Vars.x_transformer_l_203, shape);

% Concat:
[Vars.x_transformer_l_206, NumDims.x_transformer_l_206] = onnxConcat(0, {Vars.x_transformer_l_278, Vars.x_transformer_l_279, Vars.x_transformer_l_213, Vars.x_transformer_l_280}, [NumDims.x_transformer_l_278, NumDims.x_transformer_l_279, NumDims.x_transformer_l_213, NumDims.x_transformer_l_280]);

% Reshape:
[shape, NumDims.x_transformer_l_250] = prepareReshapeArgs(Vars.x_transformer_l_289, Vars.x_transformer_l_206, NumDims.x_transformer_l_289, 0);
Vars.x_transformer_l_250 = reshape(Vars.x_transformer_l_289, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_267] = prepareTransposeArgs(Vars.TransposePerm1061, NumDims.x_transformer_l_250);
if ~isempty(perm)
    Vars.x_transformer_l_267 = permute(Vars.x_transformer_l_250, perm);
end

% Transpose:
[perm, NumDims.x_transformer_l_268] = prepareTransposeArgs(Vars.TransposePerm1062, NumDims.x_transformer_l_249);
if ~isempty(perm)
    Vars.x_transformer_l_268 = permute(Vars.x_transformer_l_249, perm);
end

% MatMul:
[Vars.x_transformer_l_247, NumDims.x_transformer_l_247] = onnxMatMul(Vars.x_transformer_l_270, Vars.x_transformer_l_268, NumDims.x_transformer_l_270, NumDims.x_transformer_l_268);

% Div:
Vars.x_transformer_l_231 = Vars.x_transformer_l_247 ./ Vars.x_transformer_l_214;
NumDims.x_transformer_l_231 = max(NumDims.x_transformer_l_247, NumDims.x_transformer_l_214);

% Softmax:
[Vars.x_transformer_l_266, NumDims.x_transformer_l_266] = onnxSoftmax13(Vars.x_transformer_l_231, -1, NumDims.x_transformer_l_231);

% MatMul:
[Vars.x_transformer_l_246, NumDims.x_transformer_l_246] = onnxMatMul(Vars.x_transformer_l_266, Vars.x_transformer_l_267, NumDims.x_transformer_l_266, NumDims.x_transformer_l_267);

% Shape:
[Vars.x_transformer_l_264, NumDims.x_transformer_l_264] = onnxShape(Vars.x_transformer_l_246, NumDims.x_transformer_l_246);

% Gather:
[Vars.x_transformer_l_244, NumDims.x_transformer_l_244] = onnxGather(Vars.x_transformer_l_264, Vars.x_transformer_l_215, 0, NumDims.x_transformer_l_264, NumDims.x_transformer_l_215);

% Shape:
[Vars.x_transformer_l_253, NumDims.x_transformer_l_253] = onnxShape(Vars.x_transformer_l_246, NumDims.x_transformer_l_246);

% Gather:
[Vars.x_transformer_l_233, NumDims.x_transformer_l_233] = onnxGather(Vars.x_transformer_l_253, Vars.x_transformer_l_216, 0, NumDims.x_transformer_l_253, NumDims.x_transformer_l_216);

% Shape:
[Vars.x_transformer_l_254, NumDims.x_transformer_l_254] = onnxShape(Vars.x_transformer_l_246, NumDims.x_transformer_l_246);

% Gather:
[Vars.x_transformer_l_234, NumDims.x_transformer_l_234] = onnxGather(Vars.x_transformer_l_254, Vars.x_transformer_l_217, 0, NumDims.x_transformer_l_254, NumDims.x_transformer_l_217);

% Shape:
[Vars.x_transformer_l_255, NumDims.x_transformer_l_255] = onnxShape(Vars.x_transformer_l_246, NumDims.x_transformer_l_246);

% Gather:
[Vars.x_transformer_l_235, NumDims.x_transformer_l_235] = onnxGather(Vars.x_transformer_l_255, Vars.x_transformer_l_218, 0, NumDims.x_transformer_l_255, NumDims.x_transformer_l_218);

% Transpose:
[perm, NumDims.x_transformer_l_269] = prepareTransposeArgs(Vars.TransposePerm1063, NumDims.x_transformer_l_246);
if ~isempty(perm)
    Vars.x_transformer_l_269 = permute(Vars.x_transformer_l_246, perm);
end

% Mul:
Vars.x_transformer_l_248 = Vars.x_transformer_l_233 .* Vars.x_transformer_l_235;
NumDims.x_transformer_l_248 = max(NumDims.x_transformer_l_233, NumDims.x_transformer_l_235);

% Unsqueeze:
[shape, NumDims.x_transformer_l_281] = prepareUnsqueezeArgs(Vars.x_transformer_l_244, Vars.onnx__Unsqueeze_669, NumDims.x_transformer_l_244);
Vars.x_transformer_l_281 = reshape(Vars.x_transformer_l_244, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_271] = prepareUnsqueezeArgs(Vars.x_transformer_l_234, Vars.onnx__Unsqueeze_671, NumDims.x_transformer_l_234);
Vars.x_transformer_l_271 = reshape(Vars.x_transformer_l_234, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_272] = prepareUnsqueezeArgs(Vars.x_transformer_l_248, Vars.onnx__Unsqueeze_673, NumDims.x_transformer_l_248);
Vars.x_transformer_l_272 = reshape(Vars.x_transformer_l_248, shape);

% Concat:
[Vars.x_transformer_l_207, NumDims.x_transformer_l_207] = onnxConcat(0, {Vars.x_transformer_l_281, Vars.x_transformer_l_271, Vars.x_transformer_l_272}, [NumDims.x_transformer_l_281, NumDims.x_transformer_l_271, NumDims.x_transformer_l_272]);

% Reshape:
[shape, NumDims.x_transformer_l_251] = prepareReshapeArgs(Vars.x_transformer_l_269, Vars.x_transformer_l_207, NumDims.x_transformer_l_269, 0);
Vars.x_transformer_l_251 = reshape(Vars.x_transformer_l_269, shape{:});

% MatMul:
[Vars.x_transformer_l_286, NumDims.x_transformer_l_286] = onnxMatMul(Vars.x_transformer_l_251, Vars.onnx__MatMul_1584, NumDims.x_transformer_l_251, NumDims.onnx__MatMul_1584);

% Add:
Vars.x_transformer_l_285 = Vars.mask_decoder_tran_23 + Vars.x_transformer_l_286;
NumDims.x_transformer_l_285 = max(NumDims.mask_decoder_tran_23, NumDims.x_transformer_l_286);

% PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (LayerNormalization):
[Vars.x_transformer_l_195, NumDims.x_transformer_l_195] = PLACEHOLDER(Vars.x_transformer_l_285, Vars.mask_decoder_tran_15, Vars.mask_decoder_tran_14);

% Add:
Vars.x_transformer_l_5 = Vars.x_transformer_l_195 + Vars.x_Concat_2_output_0;
NumDims.x_transformer_l_5 = max(NumDims.x_transformer_l_195, NumDims.x_Concat_2_output_0);

% Add:
Vars.x_transformer_layers = Vars.x_transformer_Tran_1 + Vars.x_transformer_Transp;
NumDims.x_transformer_layers = max(NumDims.x_transformer_Tran_1, NumDims.x_transformer_Transp);

% MatMul:
[Vars.x_transformer_l_187, NumDims.x_transformer_l_187] = onnxMatMul(Vars.x_transformer_l_5, Vars.onnx__MatMul_1585, NumDims.x_transformer_l_5, NumDims.onnx__MatMul_1585);

% Add:
Vars.x_transformer_l_186 = Vars.mask_decoder_tran_10 + Vars.x_transformer_l_187;
NumDims.x_transformer_l_186 = max(NumDims.mask_decoder_tran_10, NumDims.x_transformer_l_187);

% MatMul:
[Vars.x_transformer_l_183, NumDims.x_transformer_l_183] = onnxMatMul(Vars.x_transformer_layers, Vars.onnx__MatMul_1586, NumDims.x_transformer_layers, NumDims.onnx__MatMul_1586);

% Add:
Vars.x_transformer_l_182 = Vars.mask_decoder_tran_8 + Vars.x_transformer_l_183;
NumDims.x_transformer_l_182 = max(NumDims.mask_decoder_tran_8, NumDims.x_transformer_l_183);

% MatMul:
[Vars.x_transformer_l_189, NumDims.x_transformer_l_189] = onnxMatMul(Vars.x_transformer_Tran_1, Vars.onnx__MatMul_1587, NumDims.x_transformer_Tran_1, NumDims.onnx__MatMul_1587);

% Add:
Vars.x_transformer_l_188 = Vars.mask_decoder_tran_11 + Vars.x_transformer_l_189;
NumDims.x_transformer_l_188 = max(NumDims.mask_decoder_tran_11, NumDims.x_transformer_l_189);

% Shape:
[Vars.x_transformer_l_164, NumDims.x_transformer_l_164] = onnxShape(Vars.x_transformer_l_186, NumDims.x_transformer_l_186);

% Gather:
[Vars.x_transformer_l_144, NumDims.x_transformer_l_144] = onnxGather(Vars.x_transformer_l_164, Vars.x_transformer_l_127, 0, NumDims.x_transformer_l_164, NumDims.x_transformer_l_127);

% Shape:
[Vars.x_transformer_l_155, NumDims.x_transformer_l_155] = onnxShape(Vars.x_transformer_l_186, NumDims.x_transformer_l_186);

% Gather:
[Vars.x_transformer_l_135, NumDims.x_transformer_l_135] = onnxGather(Vars.x_transformer_l_155, Vars.x_transformer_l_118, 0, NumDims.x_transformer_l_155, NumDims.x_transformer_l_118);

% Shape:
[Vars.x_transformer_l_156, NumDims.x_transformer_l_156] = onnxShape(Vars.x_transformer_l_186, NumDims.x_transformer_l_186);

% Gather:
[Vars.x_transformer_l_136, NumDims.x_transformer_l_136] = onnxGather(Vars.x_transformer_l_156, Vars.x_transformer_l_119, 0, NumDims.x_transformer_l_156, NumDims.x_transformer_l_119);

% Div:
Vars.x_transformer_l_131 = fix(Vars.x_transformer_l_136 ./ Vars.x_transformer_l_120);
NumDims.x_transformer_l_131 = max(NumDims.x_transformer_l_136, NumDims.x_transformer_l_120);

% Cast:
Vars.x_transformer_l_103 = cast(int64(extractdata(Vars.x_transformer_l_131)), 'like', Vars.x_transformer_l_131);
NumDims.x_transformer_l_103 = NumDims.x_transformer_l_131;

% Cast:
Vars.x_transformer_l_98 = cast(int64(extractdata(Vars.x_transformer_l_103)), 'like', Vars.x_transformer_l_103);
NumDims.x_transformer_l_98 = NumDims.x_transformer_l_103;

% Unsqueeze:
[shape, NumDims.x_transformer_l_181] = prepareUnsqueezeArgs(Vars.x_transformer_l_144, Vars.onnx__Unsqueeze_705, NumDims.x_transformer_l_144);
Vars.x_transformer_l_181 = reshape(Vars.x_transformer_l_144, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_172] = prepareUnsqueezeArgs(Vars.x_transformer_l_135, Vars.onnx__Unsqueeze_707, NumDims.x_transformer_l_135);
Vars.x_transformer_l_172 = reshape(Vars.x_transformer_l_135, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_173] = prepareUnsqueezeArgs(Vars.x_transformer_l_98, Vars.onnx__Unsqueeze_711, NumDims.x_transformer_l_98);
Vars.x_transformer_l_173 = reshape(Vars.x_transformer_l_98, shape);

% Concat:
[Vars.x_transformer_l_107, NumDims.x_transformer_l_107] = onnxConcat(0, {Vars.x_transformer_l_181, Vars.x_transformer_l_172, Vars.x_transformer_l_121, Vars.x_transformer_l_173}, [NumDims.x_transformer_l_181, NumDims.x_transformer_l_172, NumDims.x_transformer_l_121, NumDims.x_transformer_l_173]);

% Reshape:
[shape, NumDims.x_transformer_l_151] = prepareReshapeArgs(Vars.x_transformer_l_186, Vars.x_transformer_l_107, NumDims.x_transformer_l_186, 0);
Vars.x_transformer_l_151 = reshape(Vars.x_transformer_l_186, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_169] = prepareTransposeArgs(Vars.TransposePerm1064, NumDims.x_transformer_l_151);
if ~isempty(perm)
    Vars.x_transformer_l_169 = permute(Vars.x_transformer_l_151, perm);
end

% Shape:
[Vars.x_transformer_l_157, NumDims.x_transformer_l_157] = onnxShape(Vars.x_transformer_l_182, NumDims.x_transformer_l_182);

% Gather:
[Vars.x_transformer_l_137, NumDims.x_transformer_l_137] = onnxGather(Vars.x_transformer_l_157, Vars.x_transformer_l_122, 0, NumDims.x_transformer_l_157, NumDims.x_transformer_l_122);

% Shape:
[Vars.x_transformer_l_158, NumDims.x_transformer_l_158] = onnxShape(Vars.x_transformer_l_182, NumDims.x_transformer_l_182);

% Gather:
[Vars.x_transformer_l_138, NumDims.x_transformer_l_138] = onnxGather(Vars.x_transformer_l_158, Vars.x_transformer_l_123, 0, NumDims.x_transformer_l_158, NumDims.x_transformer_l_123);

% Shape:
[Vars.x_transformer_l_159, NumDims.x_transformer_l_159] = onnxShape(Vars.x_transformer_l_182, NumDims.x_transformer_l_182);

% Gather:
[Vars.x_transformer_l_139, NumDims.x_transformer_l_139] = onnxGather(Vars.x_transformer_l_159, Vars.x_transformer_l_124, 0, NumDims.x_transformer_l_159, NumDims.x_transformer_l_124);

% Div:
Vars.x_transformer_l_128 = fix(Vars.x_transformer_l_139 ./ Vars.x_transformer_l_125);
NumDims.x_transformer_l_128 = max(NumDims.x_transformer_l_139, NumDims.x_transformer_l_125);

% Cast:
Vars.x_transformer_l_99 = cast(int64(extractdata(Vars.x_transformer_l_128)), 'like', Vars.x_transformer_l_128);
NumDims.x_transformer_l_99 = NumDims.x_transformer_l_128;

% Cast:
Vars.x_transformer_l_100 = cast(int64(extractdata(Vars.x_transformer_l_99)), 'like', Vars.x_transformer_l_99);
NumDims.x_transformer_l_100 = NumDims.x_transformer_l_99;

% Unsqueeze:
[shape, NumDims.x_transformer_l_174] = prepareUnsqueezeArgs(Vars.x_transformer_l_137, Vars.onnx__Unsqueeze_729, NumDims.x_transformer_l_137);
Vars.x_transformer_l_174 = reshape(Vars.x_transformer_l_137, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_175] = prepareUnsqueezeArgs(Vars.x_transformer_l_138, Vars.onnx__Unsqueeze_731, NumDims.x_transformer_l_138);
Vars.x_transformer_l_175 = reshape(Vars.x_transformer_l_138, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_176] = prepareUnsqueezeArgs(Vars.x_transformer_l_100, Vars.onnx__Unsqueeze_735, NumDims.x_transformer_l_100);
Vars.x_transformer_l_176 = reshape(Vars.x_transformer_l_100, shape);

% Concat:
[Vars.x_transformer_l_104, NumDims.x_transformer_l_104] = onnxConcat(0, {Vars.x_transformer_l_174, Vars.x_transformer_l_175, Vars.x_transformer_l_126, Vars.x_transformer_l_176}, [NumDims.x_transformer_l_174, NumDims.x_transformer_l_175, NumDims.x_transformer_l_126, NumDims.x_transformer_l_176]);

% Reshape:
[shape, NumDims.x_transformer_l_148] = prepareReshapeArgs(Vars.x_transformer_l_182, Vars.x_transformer_l_104, NumDims.x_transformer_l_182, 0);
Vars.x_transformer_l_148 = reshape(Vars.x_transformer_l_182, shape{:});

% Shape:
[Vars.x_transformer_l_160, NumDims.x_transformer_l_160] = onnxShape(Vars.x_transformer_l_188, NumDims.x_transformer_l_188);

% Gather:
[Vars.x_transformer_l_140, NumDims.x_transformer_l_140] = onnxGather(Vars.x_transformer_l_160, Vars.x_transformer_l_108, 0, NumDims.x_transformer_l_160, NumDims.x_transformer_l_108);

% Shape:
[Vars.x_transformer_l_161, NumDims.x_transformer_l_161] = onnxShape(Vars.x_transformer_l_188, NumDims.x_transformer_l_188);

% Gather:
[Vars.x_transformer_l_141, NumDims.x_transformer_l_141] = onnxGather(Vars.x_transformer_l_161, Vars.x_transformer_l_109, 0, NumDims.x_transformer_l_161, NumDims.x_transformer_l_109);

% Shape:
[Vars.x_transformer_l_162, NumDims.x_transformer_l_162] = onnxShape(Vars.x_transformer_l_188, NumDims.x_transformer_l_188);

% Gather:
[Vars.x_transformer_l_142, NumDims.x_transformer_l_142] = onnxGather(Vars.x_transformer_l_162, Vars.x_transformer_l_110, 0, NumDims.x_transformer_l_162, NumDims.x_transformer_l_110);

% Div:
Vars.x_transformer_l_129 = fix(Vars.x_transformer_l_142 ./ Vars.x_transformer_l_111);
NumDims.x_transformer_l_129 = max(NumDims.x_transformer_l_142, NumDims.x_transformer_l_111);

% Cast:
Vars.x_transformer_l_101 = cast(int64(extractdata(Vars.x_transformer_l_129)), 'like', Vars.x_transformer_l_129);
NumDims.x_transformer_l_101 = NumDims.x_transformer_l_129;

% Cast:
Vars.x_transformer_l_102 = cast(int64(extractdata(Vars.x_transformer_l_101)), 'like', Vars.x_transformer_l_101);
NumDims.x_transformer_l_102 = NumDims.x_transformer_l_101;

% Unsqueeze:
[shape, NumDims.x_transformer_l_177] = prepareUnsqueezeArgs(Vars.x_transformer_l_140, Vars.onnx__Unsqueeze_752, NumDims.x_transformer_l_140);
Vars.x_transformer_l_177 = reshape(Vars.x_transformer_l_140, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_178] = prepareUnsqueezeArgs(Vars.x_transformer_l_141, Vars.onnx__Unsqueeze_754, NumDims.x_transformer_l_141);
Vars.x_transformer_l_178 = reshape(Vars.x_transformer_l_141, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_179] = prepareUnsqueezeArgs(Vars.x_transformer_l_102, Vars.onnx__Unsqueeze_758, NumDims.x_transformer_l_102);
Vars.x_transformer_l_179 = reshape(Vars.x_transformer_l_102, shape);

% Concat:
[Vars.x_transformer_l_105, NumDims.x_transformer_l_105] = onnxConcat(0, {Vars.x_transformer_l_177, Vars.x_transformer_l_178, Vars.x_transformer_l_112, Vars.x_transformer_l_179}, [NumDims.x_transformer_l_177, NumDims.x_transformer_l_178, NumDims.x_transformer_l_112, NumDims.x_transformer_l_179]);

% Reshape:
[shape, NumDims.x_transformer_l_149] = prepareReshapeArgs(Vars.x_transformer_l_188, Vars.x_transformer_l_105, NumDims.x_transformer_l_188, 0);
Vars.x_transformer_l_149 = reshape(Vars.x_transformer_l_188, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_166] = prepareTransposeArgs(Vars.TransposePerm1065, NumDims.x_transformer_l_149);
if ~isempty(perm)
    Vars.x_transformer_l_166 = permute(Vars.x_transformer_l_149, perm);
end

% Transpose:
[perm, NumDims.x_transformer_l_167] = prepareTransposeArgs(Vars.TransposePerm1066, NumDims.x_transformer_l_148);
if ~isempty(perm)
    Vars.x_transformer_l_167 = permute(Vars.x_transformer_l_148, perm);
end

% MatMul:
[Vars.x_transformer_l_146, NumDims.x_transformer_l_146] = onnxMatMul(Vars.x_transformer_l_169, Vars.x_transformer_l_167, NumDims.x_transformer_l_169, NumDims.x_transformer_l_167);

% Div:
Vars.x_transformer_l_130 = Vars.x_transformer_l_146 ./ Vars.x_transformer_l_113;
NumDims.x_transformer_l_130 = max(NumDims.x_transformer_l_146, NumDims.x_transformer_l_113);

% Softmax:
[Vars.x_transformer_l_165, NumDims.x_transformer_l_165] = onnxSoftmax13(Vars.x_transformer_l_130, -1, NumDims.x_transformer_l_130);

% MatMul:
[Vars.x_transformer_l_145, NumDims.x_transformer_l_145] = onnxMatMul(Vars.x_transformer_l_165, Vars.x_transformer_l_166, NumDims.x_transformer_l_165, NumDims.x_transformer_l_166);

% Shape:
[Vars.x_transformer_l_163, NumDims.x_transformer_l_163] = onnxShape(Vars.x_transformer_l_145, NumDims.x_transformer_l_145);

% Gather:
[Vars.x_transformer_l_143, NumDims.x_transformer_l_143] = onnxGather(Vars.x_transformer_l_163, Vars.x_transformer_l_114, 0, NumDims.x_transformer_l_163, NumDims.x_transformer_l_114);

% Shape:
[Vars.x_transformer_l_152, NumDims.x_transformer_l_152] = onnxShape(Vars.x_transformer_l_145, NumDims.x_transformer_l_145);

% Gather:
[Vars.x_transformer_l_132, NumDims.x_transformer_l_132] = onnxGather(Vars.x_transformer_l_152, Vars.x_transformer_l_115, 0, NumDims.x_transformer_l_152, NumDims.x_transformer_l_115);

% Shape:
[Vars.x_transformer_l_153, NumDims.x_transformer_l_153] = onnxShape(Vars.x_transformer_l_145, NumDims.x_transformer_l_145);

% Gather:
[Vars.x_transformer_l_133, NumDims.x_transformer_l_133] = onnxGather(Vars.x_transformer_l_153, Vars.x_transformer_l_116, 0, NumDims.x_transformer_l_153, NumDims.x_transformer_l_116);

% Shape:
[Vars.x_transformer_l_154, NumDims.x_transformer_l_154] = onnxShape(Vars.x_transformer_l_145, NumDims.x_transformer_l_145);

% Gather:
[Vars.x_transformer_l_134, NumDims.x_transformer_l_134] = onnxGather(Vars.x_transformer_l_154, Vars.x_transformer_l_117, 0, NumDims.x_transformer_l_154, NumDims.x_transformer_l_117);

% Transpose:
[perm, NumDims.x_transformer_l_168] = prepareTransposeArgs(Vars.TransposePerm1067, NumDims.x_transformer_l_145);
if ~isempty(perm)
    Vars.x_transformer_l_168 = permute(Vars.x_transformer_l_145, perm);
end

% Mul:
Vars.x_transformer_l_147 = Vars.x_transformer_l_132 .* Vars.x_transformer_l_134;
NumDims.x_transformer_l_147 = max(NumDims.x_transformer_l_132, NumDims.x_transformer_l_134);

% Unsqueeze:
[shape, NumDims.x_transformer_l_180] = prepareUnsqueezeArgs(Vars.x_transformer_l_143, Vars.onnx__Unsqueeze_783, NumDims.x_transformer_l_143);
Vars.x_transformer_l_180 = reshape(Vars.x_transformer_l_143, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_170] = prepareUnsqueezeArgs(Vars.x_transformer_l_133, Vars.onnx__Unsqueeze_785, NumDims.x_transformer_l_133);
Vars.x_transformer_l_170 = reshape(Vars.x_transformer_l_133, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_171] = prepareUnsqueezeArgs(Vars.x_transformer_l_147, Vars.onnx__Unsqueeze_787, NumDims.x_transformer_l_147);
Vars.x_transformer_l_171 = reshape(Vars.x_transformer_l_147, shape);

% Concat:
[Vars.x_transformer_l_106, NumDims.x_transformer_l_106] = onnxConcat(0, {Vars.x_transformer_l_180, Vars.x_transformer_l_170, Vars.x_transformer_l_171}, [NumDims.x_transformer_l_180, NumDims.x_transformer_l_170, NumDims.x_transformer_l_171]);

% Reshape:
[shape, NumDims.x_transformer_l_150] = prepareReshapeArgs(Vars.x_transformer_l_168, Vars.x_transformer_l_106, NumDims.x_transformer_l_168, 0);
Vars.x_transformer_l_150 = reshape(Vars.x_transformer_l_168, shape{:});

% MatMul:
[Vars.x_transformer_l_185, NumDims.x_transformer_l_185] = onnxMatMul(Vars.x_transformer_l_150, Vars.onnx__MatMul_1591, NumDims.x_transformer_l_150, NumDims.onnx__MatMul_1591);

% Add:
Vars.x_transformer_l_184 = Vars.mask_decoder_tran_9 + Vars.x_transformer_l_185;
NumDims.x_transformer_l_184 = max(NumDims.mask_decoder_tran_9, NumDims.x_transformer_l_185);

% Add:
Vars.x_transformer_l_1 = Vars.x_transformer_l_195 + Vars.x_transformer_l_184;
NumDims.x_transformer_l_1 = max(NumDims.x_transformer_l_195, NumDims.x_transformer_l_184);

% PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (LayerNormalization):
[Vars.x_transformer_l_196, NumDims.x_transformer_l_196] = PLACEHOLDER(Vars.x_transformer_l_1, Vars.mask_decoder_tran_17, Vars.mask_decoder_tran_16);

% MatMul:
[Vars.x_transformer_l_192, NumDims.x_transformer_l_192] = onnxMatMul(Vars.x_transformer_l_196, Vars.onnx__MatMul_1592, NumDims.x_transformer_l_196, NumDims.onnx__MatMul_1592);

% Add:
Vars.x_transformer_l_191 = Vars.mask_decoder_tran_12 + Vars.x_transformer_l_192;
NumDims.x_transformer_l_191 = max(NumDims.mask_decoder_tran_12, NumDims.x_transformer_l_192);

% Relu:
Vars.x_transformer_l_190 = relu(Vars.x_transformer_l_191);
NumDims.x_transformer_l_190 = NumDims.x_transformer_l_191;

% MatMul:
[Vars.x_transformer_l_194, NumDims.x_transformer_l_194] = onnxMatMul(Vars.x_transformer_l_190, Vars.onnx__MatMul_1593, NumDims.x_transformer_l_190, NumDims.onnx__MatMul_1593);

% Add:
Vars.x_transformer_l_193 = Vars.mask_decoder_tran_13 + Vars.x_transformer_l_194;
NumDims.x_transformer_l_193 = max(NumDims.mask_decoder_tran_13, NumDims.x_transformer_l_194);

% Add:
Vars.x_transformer_l_2 = Vars.x_transformer_l_196 + Vars.x_transformer_l_193;
NumDims.x_transformer_l_2 = max(NumDims.x_transformer_l_196, NumDims.x_transformer_l_193);

% PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (LayerNormalization):
[Vars.x_transformer_l_197, NumDims.x_transformer_l_197] = PLACEHOLDER(Vars.x_transformer_l_2, Vars.mask_decoder_tran_19, Vars.mask_decoder_tran_18);

% Add:
Vars.x_transformer_l_3 = Vars.x_transformer_l_197 + Vars.x_Concat_2_output_0;
NumDims.x_transformer_l_3 = max(NumDims.x_transformer_l_197, NumDims.x_Concat_2_output_0);

% MatMul:
[Vars.x_transformer_l_95, NumDims.x_transformer_l_95] = onnxMatMul(Vars.x_transformer_layers, Vars.onnx__MatMul_1594, NumDims.x_transformer_layers, NumDims.onnx__MatMul_1594);

% Add:
Vars.x_transformer_l_94 = Vars.mask_decoder_tran_6 + Vars.x_transformer_l_95;
NumDims.x_transformer_l_94 = max(NumDims.mask_decoder_tran_6, NumDims.x_transformer_l_95);

% MatMul:
[Vars.x_transformer_l_91, NumDims.x_transformer_l_91] = onnxMatMul(Vars.x_transformer_l_3, Vars.onnx__MatMul_1595, NumDims.x_transformer_l_3, NumDims.onnx__MatMul_1595);

% Add:
Vars.x_transformer_l_90 = Vars.mask_decoder_tran_4 + Vars.x_transformer_l_91;
NumDims.x_transformer_l_90 = max(NumDims.mask_decoder_tran_4, NumDims.x_transformer_l_91);

% MatMul:
[Vars.x_transformer_l_97, NumDims.x_transformer_l_97] = onnxMatMul(Vars.x_transformer_l_197, Vars.onnx__MatMul_1596, NumDims.x_transformer_l_197, NumDims.onnx__MatMul_1596);

% Add:
Vars.x_transformer_l_96 = Vars.mask_decoder_tran_7 + Vars.x_transformer_l_97;
NumDims.x_transformer_l_96 = max(NumDims.mask_decoder_tran_7, NumDims.x_transformer_l_97);

% Shape:
[Vars.x_transformer_l_72, NumDims.x_transformer_l_72] = onnxShape(Vars.x_transformer_l_94, NumDims.x_transformer_l_94);

% Gather:
[Vars.x_transformer_l_52, NumDims.x_transformer_l_52] = onnxGather(Vars.x_transformer_l_72, Vars.x_transformer_l_35, 0, NumDims.x_transformer_l_72, NumDims.x_transformer_l_35);

% Shape:
[Vars.x_transformer_l_63, NumDims.x_transformer_l_63] = onnxShape(Vars.x_transformer_l_94, NumDims.x_transformer_l_94);

% Gather:
[Vars.x_transformer_l_43, NumDims.x_transformer_l_43] = onnxGather(Vars.x_transformer_l_63, Vars.x_transformer_l_26, 0, NumDims.x_transformer_l_63, NumDims.x_transformer_l_26);

% Shape:
[Vars.x_transformer_l_64, NumDims.x_transformer_l_64] = onnxShape(Vars.x_transformer_l_94, NumDims.x_transformer_l_94);

% Gather:
[Vars.x_transformer_l_44, NumDims.x_transformer_l_44] = onnxGather(Vars.x_transformer_l_64, Vars.x_transformer_l_27, 0, NumDims.x_transformer_l_64, NumDims.x_transformer_l_27);

% Div:
Vars.x_transformer_l_39 = fix(Vars.x_transformer_l_44 ./ Vars.x_transformer_l_28);
NumDims.x_transformer_l_39 = max(NumDims.x_transformer_l_44, NumDims.x_transformer_l_28);

% Cast:
Vars.x_transformer_l_11 = cast(int64(extractdata(Vars.x_transformer_l_39)), 'like', Vars.x_transformer_l_39);
NumDims.x_transformer_l_11 = NumDims.x_transformer_l_39;

% Cast:
Vars.x_transformer_l_6 = cast(int64(extractdata(Vars.x_transformer_l_11)), 'like', Vars.x_transformer_l_11);
NumDims.x_transformer_l_6 = NumDims.x_transformer_l_11;

% Unsqueeze:
[shape, NumDims.x_transformer_l_89] = prepareUnsqueezeArgs(Vars.x_transformer_l_52, Vars.onnx__Unsqueeze_828, NumDims.x_transformer_l_52);
Vars.x_transformer_l_89 = reshape(Vars.x_transformer_l_52, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_80] = prepareUnsqueezeArgs(Vars.x_transformer_l_43, Vars.onnx__Unsqueeze_830, NumDims.x_transformer_l_43);
Vars.x_transformer_l_80 = reshape(Vars.x_transformer_l_43, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_81] = prepareUnsqueezeArgs(Vars.x_transformer_l_6, Vars.onnx__Unsqueeze_834, NumDims.x_transformer_l_6);
Vars.x_transformer_l_81 = reshape(Vars.x_transformer_l_6, shape);

% Concat:
[Vars.x_transformer_l_15, NumDims.x_transformer_l_15] = onnxConcat(0, {Vars.x_transformer_l_89, Vars.x_transformer_l_80, Vars.x_transformer_l_29, Vars.x_transformer_l_81}, [NumDims.x_transformer_l_89, NumDims.x_transformer_l_80, NumDims.x_transformer_l_29, NumDims.x_transformer_l_81]);

% Reshape:
[shape, NumDims.x_transformer_l_59] = prepareReshapeArgs(Vars.x_transformer_l_94, Vars.x_transformer_l_15, NumDims.x_transformer_l_94, 0);
Vars.x_transformer_l_59 = reshape(Vars.x_transformer_l_94, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_77] = prepareTransposeArgs(Vars.TransposePerm1068, NumDims.x_transformer_l_59);
if ~isempty(perm)
    Vars.x_transformer_l_77 = permute(Vars.x_transformer_l_59, perm);
end

% Shape:
[Vars.x_transformer_l_65, NumDims.x_transformer_l_65] = onnxShape(Vars.x_transformer_l_90, NumDims.x_transformer_l_90);

% Gather:
[Vars.x_transformer_l_45, NumDims.x_transformer_l_45] = onnxGather(Vars.x_transformer_l_65, Vars.x_transformer_l_30, 0, NumDims.x_transformer_l_65, NumDims.x_transformer_l_30);

% Shape:
[Vars.x_transformer_l_66, NumDims.x_transformer_l_66] = onnxShape(Vars.x_transformer_l_90, NumDims.x_transformer_l_90);

% Gather:
[Vars.x_transformer_l_46, NumDims.x_transformer_l_46] = onnxGather(Vars.x_transformer_l_66, Vars.x_transformer_l_31, 0, NumDims.x_transformer_l_66, NumDims.x_transformer_l_31);

% Shape:
[Vars.x_transformer_l_67, NumDims.x_transformer_l_67] = onnxShape(Vars.x_transformer_l_90, NumDims.x_transformer_l_90);

% Gather:
[Vars.x_transformer_l_47, NumDims.x_transformer_l_47] = onnxGather(Vars.x_transformer_l_67, Vars.x_transformer_l_32, 0, NumDims.x_transformer_l_67, NumDims.x_transformer_l_32);

% Div:
Vars.x_transformer_l_36 = fix(Vars.x_transformer_l_47 ./ Vars.x_transformer_l_33);
NumDims.x_transformer_l_36 = max(NumDims.x_transformer_l_47, NumDims.x_transformer_l_33);

% Cast:
Vars.x_transformer_l_7 = cast(int64(extractdata(Vars.x_transformer_l_36)), 'like', Vars.x_transformer_l_36);
NumDims.x_transformer_l_7 = NumDims.x_transformer_l_36;

% Cast:
Vars.x_transformer_l_8 = cast(int64(extractdata(Vars.x_transformer_l_7)), 'like', Vars.x_transformer_l_7);
NumDims.x_transformer_l_8 = NumDims.x_transformer_l_7;

% Unsqueeze:
[shape, NumDims.x_transformer_l_82] = prepareUnsqueezeArgs(Vars.x_transformer_l_45, Vars.onnx__Unsqueeze_852, NumDims.x_transformer_l_45);
Vars.x_transformer_l_82 = reshape(Vars.x_transformer_l_45, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_83] = prepareUnsqueezeArgs(Vars.x_transformer_l_46, Vars.onnx__Unsqueeze_854, NumDims.x_transformer_l_46);
Vars.x_transformer_l_83 = reshape(Vars.x_transformer_l_46, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_84] = prepareUnsqueezeArgs(Vars.x_transformer_l_8, Vars.onnx__Unsqueeze_858, NumDims.x_transformer_l_8);
Vars.x_transformer_l_84 = reshape(Vars.x_transformer_l_8, shape);

% Concat:
[Vars.x_transformer_l_12, NumDims.x_transformer_l_12] = onnxConcat(0, {Vars.x_transformer_l_82, Vars.x_transformer_l_83, Vars.x_transformer_l_34, Vars.x_transformer_l_84}, [NumDims.x_transformer_l_82, NumDims.x_transformer_l_83, NumDims.x_transformer_l_34, NumDims.x_transformer_l_84]);

% Reshape:
[shape, NumDims.x_transformer_l_56] = prepareReshapeArgs(Vars.x_transformer_l_90, Vars.x_transformer_l_12, NumDims.x_transformer_l_90, 0);
Vars.x_transformer_l_56 = reshape(Vars.x_transformer_l_90, shape{:});

% Shape:
[Vars.x_transformer_l_68, NumDims.x_transformer_l_68] = onnxShape(Vars.x_transformer_l_96, NumDims.x_transformer_l_96);

% Gather:
[Vars.x_transformer_l_48, NumDims.x_transformer_l_48] = onnxGather(Vars.x_transformer_l_68, Vars.x_transformer_l_16, 0, NumDims.x_transformer_l_68, NumDims.x_transformer_l_16);

% Shape:
[Vars.x_transformer_l_69, NumDims.x_transformer_l_69] = onnxShape(Vars.x_transformer_l_96, NumDims.x_transformer_l_96);

% Gather:
[Vars.x_transformer_l_49, NumDims.x_transformer_l_49] = onnxGather(Vars.x_transformer_l_69, Vars.x_transformer_l_17, 0, NumDims.x_transformer_l_69, NumDims.x_transformer_l_17);

% Shape:
[Vars.x_transformer_l_70, NumDims.x_transformer_l_70] = onnxShape(Vars.x_transformer_l_96, NumDims.x_transformer_l_96);

% Gather:
[Vars.x_transformer_l_50, NumDims.x_transformer_l_50] = onnxGather(Vars.x_transformer_l_70, Vars.x_transformer_l_18, 0, NumDims.x_transformer_l_70, NumDims.x_transformer_l_18);

% Div:
Vars.x_transformer_l_37 = fix(Vars.x_transformer_l_50 ./ Vars.x_transformer_l_19);
NumDims.x_transformer_l_37 = max(NumDims.x_transformer_l_50, NumDims.x_transformer_l_19);

% Cast:
Vars.x_transformer_l_9 = cast(int64(extractdata(Vars.x_transformer_l_37)), 'like', Vars.x_transformer_l_37);
NumDims.x_transformer_l_9 = NumDims.x_transformer_l_37;

% Cast:
Vars.x_transformer_l_10 = cast(int64(extractdata(Vars.x_transformer_l_9)), 'like', Vars.x_transformer_l_9);
NumDims.x_transformer_l_10 = NumDims.x_transformer_l_9;

% Unsqueeze:
[shape, NumDims.x_transformer_l_85] = prepareUnsqueezeArgs(Vars.x_transformer_l_48, Vars.onnx__Unsqueeze_875, NumDims.x_transformer_l_48);
Vars.x_transformer_l_85 = reshape(Vars.x_transformer_l_48, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_86] = prepareUnsqueezeArgs(Vars.x_transformer_l_49, Vars.onnx__Unsqueeze_877, NumDims.x_transformer_l_49);
Vars.x_transformer_l_86 = reshape(Vars.x_transformer_l_49, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_87] = prepareUnsqueezeArgs(Vars.x_transformer_l_10, Vars.onnx__Unsqueeze_881, NumDims.x_transformer_l_10);
Vars.x_transformer_l_87 = reshape(Vars.x_transformer_l_10, shape);

% Concat:
[Vars.x_transformer_l_13, NumDims.x_transformer_l_13] = onnxConcat(0, {Vars.x_transformer_l_85, Vars.x_transformer_l_86, Vars.x_transformer_l_20, Vars.x_transformer_l_87}, [NumDims.x_transformer_l_85, NumDims.x_transformer_l_86, NumDims.x_transformer_l_20, NumDims.x_transformer_l_87]);

% Reshape:
[shape, NumDims.x_transformer_l_57] = prepareReshapeArgs(Vars.x_transformer_l_96, Vars.x_transformer_l_13, NumDims.x_transformer_l_96, 0);
Vars.x_transformer_l_57 = reshape(Vars.x_transformer_l_96, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_74] = prepareTransposeArgs(Vars.TransposePerm1069, NumDims.x_transformer_l_57);
if ~isempty(perm)
    Vars.x_transformer_l_74 = permute(Vars.x_transformer_l_57, perm);
end

% Transpose:
[perm, NumDims.x_transformer_l_75] = prepareTransposeArgs(Vars.TransposePerm1070, NumDims.x_transformer_l_56);
if ~isempty(perm)
    Vars.x_transformer_l_75 = permute(Vars.x_transformer_l_56, perm);
end

% MatMul:
[Vars.x_transformer_l_54, NumDims.x_transformer_l_54] = onnxMatMul(Vars.x_transformer_l_77, Vars.x_transformer_l_75, NumDims.x_transformer_l_77, NumDims.x_transformer_l_75);

% Div:
Vars.x_transformer_l_38 = Vars.x_transformer_l_54 ./ Vars.x_transformer_l_21;
NumDims.x_transformer_l_38 = max(NumDims.x_transformer_l_54, NumDims.x_transformer_l_21);

% Softmax:
[Vars.x_transformer_l_73, NumDims.x_transformer_l_73] = onnxSoftmax13(Vars.x_transformer_l_38, -1, NumDims.x_transformer_l_38);

% MatMul:
[Vars.x_transformer_l_53, NumDims.x_transformer_l_53] = onnxMatMul(Vars.x_transformer_l_73, Vars.x_transformer_l_74, NumDims.x_transformer_l_73, NumDims.x_transformer_l_74);

% Shape:
[Vars.x_transformer_l_71, NumDims.x_transformer_l_71] = onnxShape(Vars.x_transformer_l_53, NumDims.x_transformer_l_53);

% Gather:
[Vars.x_transformer_l_51, NumDims.x_transformer_l_51] = onnxGather(Vars.x_transformer_l_71, Vars.x_transformer_l_22, 0, NumDims.x_transformer_l_71, NumDims.x_transformer_l_22);

% Shape:
[Vars.x_transformer_l_60, NumDims.x_transformer_l_60] = onnxShape(Vars.x_transformer_l_53, NumDims.x_transformer_l_53);

% Gather:
[Vars.x_transformer_l_40, NumDims.x_transformer_l_40] = onnxGather(Vars.x_transformer_l_60, Vars.x_transformer_l_23, 0, NumDims.x_transformer_l_60, NumDims.x_transformer_l_23);

% Shape:
[Vars.x_transformer_l_61, NumDims.x_transformer_l_61] = onnxShape(Vars.x_transformer_l_53, NumDims.x_transformer_l_53);

% Gather:
[Vars.x_transformer_l_41, NumDims.x_transformer_l_41] = onnxGather(Vars.x_transformer_l_61, Vars.x_transformer_l_24, 0, NumDims.x_transformer_l_61, NumDims.x_transformer_l_24);

% Shape:
[Vars.x_transformer_l_62, NumDims.x_transformer_l_62] = onnxShape(Vars.x_transformer_l_53, NumDims.x_transformer_l_53);

% Gather:
[Vars.x_transformer_l_42, NumDims.x_transformer_l_42] = onnxGather(Vars.x_transformer_l_62, Vars.x_transformer_l_25, 0, NumDims.x_transformer_l_62, NumDims.x_transformer_l_25);

% Transpose:
[perm, NumDims.x_transformer_l_76] = prepareTransposeArgs(Vars.TransposePerm1071, NumDims.x_transformer_l_53);
if ~isempty(perm)
    Vars.x_transformer_l_76 = permute(Vars.x_transformer_l_53, perm);
end

% Mul:
Vars.x_transformer_l_55 = Vars.x_transformer_l_40 .* Vars.x_transformer_l_42;
NumDims.x_transformer_l_55 = max(NumDims.x_transformer_l_40, NumDims.x_transformer_l_42);

% Unsqueeze:
[shape, NumDims.x_transformer_l_88] = prepareUnsqueezeArgs(Vars.x_transformer_l_51, Vars.onnx__Unsqueeze_906, NumDims.x_transformer_l_51);
Vars.x_transformer_l_88 = reshape(Vars.x_transformer_l_51, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_78] = prepareUnsqueezeArgs(Vars.x_transformer_l_41, Vars.onnx__Unsqueeze_908, NumDims.x_transformer_l_41);
Vars.x_transformer_l_78 = reshape(Vars.x_transformer_l_41, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_79] = prepareUnsqueezeArgs(Vars.x_transformer_l_55, Vars.onnx__Unsqueeze_910, NumDims.x_transformer_l_55);
Vars.x_transformer_l_79 = reshape(Vars.x_transformer_l_55, shape);

% Concat:
[Vars.x_transformer_l_14, NumDims.x_transformer_l_14] = onnxConcat(0, {Vars.x_transformer_l_88, Vars.x_transformer_l_78, Vars.x_transformer_l_79}, [NumDims.x_transformer_l_88, NumDims.x_transformer_l_78, NumDims.x_transformer_l_79]);

% Reshape:
[shape, NumDims.x_transformer_l_58] = prepareReshapeArgs(Vars.x_transformer_l_76, Vars.x_transformer_l_14, NumDims.x_transformer_l_76, 0);
Vars.x_transformer_l_58 = reshape(Vars.x_transformer_l_76, shape{:});

% MatMul:
[Vars.x_transformer_l_93, NumDims.x_transformer_l_93] = onnxMatMul(Vars.x_transformer_l_58, Vars.onnx__MatMul_1600, NumDims.x_transformer_l_58, NumDims.onnx__MatMul_1600);

% Add:
Vars.x_transformer_l_92 = Vars.mask_decoder_tran_5 + Vars.x_transformer_l_93;
NumDims.x_transformer_l_92 = max(NumDims.mask_decoder_tran_5, NumDims.x_transformer_l_93);

% Add:
Vars.x_transformer_l_4 = Vars.x_transformer_Tran_1 + Vars.x_transformer_l_92;
NumDims.x_transformer_l_4 = max(NumDims.x_transformer_Tran_1, NumDims.x_transformer_l_92);

% PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (LayerNormalization):
[Vars.x_transformer_l_198, NumDims.x_transformer_l_198] = PLACEHOLDER(Vars.x_transformer_l_4, Vars.mask_decoder_tran_21, Vars.mask_decoder_tran_20);

% MatMul:
[Vars.x_transformer_l_580, NumDims.x_transformer_l_580] = onnxMatMul(Vars.x_transformer_l_3, Vars.onnx__MatMul_1601, NumDims.x_transformer_l_3, NumDims.onnx__MatMul_1601);

% Add:
Vars.x_transformer_l_579 = Vars.mask_decoder_tran_46 + Vars.x_transformer_l_580;
NumDims.x_transformer_l_579 = max(NumDims.mask_decoder_tran_46, NumDims.x_transformer_l_580);

% MatMul:
[Vars.x_transformer_l_576, NumDims.x_transformer_l_576] = onnxMatMul(Vars.x_transformer_l_3, Vars.onnx__MatMul_1602, NumDims.x_transformer_l_3, NumDims.onnx__MatMul_1602);

% Add:
Vars.x_transformer_l_575 = Vars.mask_decoder_tran_44 + Vars.x_transformer_l_576;
NumDims.x_transformer_l_575 = max(NumDims.mask_decoder_tran_44, NumDims.x_transformer_l_576);

% MatMul:
[Vars.x_transformer_l_582, NumDims.x_transformer_l_582] = onnxMatMul(Vars.x_transformer_l_197, Vars.onnx__MatMul_1603, NumDims.x_transformer_l_197, NumDims.onnx__MatMul_1603);

% Add:
Vars.x_transformer_l_581 = Vars.mask_decoder_tran_47 + Vars.x_transformer_l_582;
NumDims.x_transformer_l_581 = max(NumDims.mask_decoder_tran_47, NumDims.x_transformer_l_582);

% Shape:
[Vars.x_transformer_l_557, NumDims.x_transformer_l_557] = onnxShape(Vars.x_transformer_l_579, NumDims.x_transformer_l_579);

% Gather:
[Vars.x_transformer_l_537, NumDims.x_transformer_l_537] = onnxGather(Vars.x_transformer_l_557, Vars.x_transformer_l_520, 0, NumDims.x_transformer_l_557, NumDims.x_transformer_l_520);

% Shape:
[Vars.x_transformer_l_548, NumDims.x_transformer_l_548] = onnxShape(Vars.x_transformer_l_579, NumDims.x_transformer_l_579);

% Gather:
[Vars.x_transformer_l_528, NumDims.x_transformer_l_528] = onnxGather(Vars.x_transformer_l_548, Vars.x_transformer_l_511, 0, NumDims.x_transformer_l_548, NumDims.x_transformer_l_511);

% Shape:
[Vars.x_transformer_l_549, NumDims.x_transformer_l_549] = onnxShape(Vars.x_transformer_l_579, NumDims.x_transformer_l_579);

% Gather:
[Vars.x_transformer_l_529, NumDims.x_transformer_l_529] = onnxGather(Vars.x_transformer_l_549, Vars.x_transformer_l_512, 0, NumDims.x_transformer_l_549, NumDims.x_transformer_l_512);

% Div:
Vars.x_transformer_l_524 = fix(Vars.x_transformer_l_529 ./ Vars.x_transformer_l_513);
NumDims.x_transformer_l_524 = max(NumDims.x_transformer_l_529, NumDims.x_transformer_l_513);

% Cast:
Vars.x_transformer_l_496 = cast(int64(extractdata(Vars.x_transformer_l_524)), 'like', Vars.x_transformer_l_524);
NumDims.x_transformer_l_496 = NumDims.x_transformer_l_524;

% Cast:
Vars.x_transformer_l_491 = cast(int64(extractdata(Vars.x_transformer_l_496)), 'like', Vars.x_transformer_l_496);
NumDims.x_transformer_l_491 = NumDims.x_transformer_l_496;

% Unsqueeze:
[shape, NumDims.x_transformer_l_574] = prepareUnsqueezeArgs(Vars.x_transformer_l_537, Vars.onnx__Unsqueeze_941, NumDims.x_transformer_l_537);
Vars.x_transformer_l_574 = reshape(Vars.x_transformer_l_537, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_565] = prepareUnsqueezeArgs(Vars.x_transformer_l_528, Vars.onnx__Unsqueeze_943, NumDims.x_transformer_l_528);
Vars.x_transformer_l_565 = reshape(Vars.x_transformer_l_528, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_566] = prepareUnsqueezeArgs(Vars.x_transformer_l_491, Vars.onnx__Unsqueeze_947, NumDims.x_transformer_l_491);
Vars.x_transformer_l_566 = reshape(Vars.x_transformer_l_491, shape);

% Concat:
[Vars.x_transformer_l_500, NumDims.x_transformer_l_500] = onnxConcat(0, {Vars.x_transformer_l_574, Vars.x_transformer_l_565, Vars.x_transformer_l_514, Vars.x_transformer_l_566}, [NumDims.x_transformer_l_574, NumDims.x_transformer_l_565, NumDims.x_transformer_l_514, NumDims.x_transformer_l_566]);

% Reshape:
[shape, NumDims.x_transformer_l_544] = prepareReshapeArgs(Vars.x_transformer_l_579, Vars.x_transformer_l_500, NumDims.x_transformer_l_579, 0);
Vars.x_transformer_l_544 = reshape(Vars.x_transformer_l_579, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_562] = prepareTransposeArgs(Vars.TransposePerm1072, NumDims.x_transformer_l_544);
if ~isempty(perm)
    Vars.x_transformer_l_562 = permute(Vars.x_transformer_l_544, perm);
end

% Shape:
[Vars.x_transformer_l_550, NumDims.x_transformer_l_550] = onnxShape(Vars.x_transformer_l_575, NumDims.x_transformer_l_575);

% Gather:
[Vars.x_transformer_l_530, NumDims.x_transformer_l_530] = onnxGather(Vars.x_transformer_l_550, Vars.x_transformer_l_515, 0, NumDims.x_transformer_l_550, NumDims.x_transformer_l_515);

% Shape:
[Vars.x_transformer_l_551, NumDims.x_transformer_l_551] = onnxShape(Vars.x_transformer_l_575, NumDims.x_transformer_l_575);

% Gather:
[Vars.x_transformer_l_531, NumDims.x_transformer_l_531] = onnxGather(Vars.x_transformer_l_551, Vars.x_transformer_l_516, 0, NumDims.x_transformer_l_551, NumDims.x_transformer_l_516);

% Shape:
[Vars.x_transformer_l_552, NumDims.x_transformer_l_552] = onnxShape(Vars.x_transformer_l_575, NumDims.x_transformer_l_575);

% Gather:
[Vars.x_transformer_l_532, NumDims.x_transformer_l_532] = onnxGather(Vars.x_transformer_l_552, Vars.x_transformer_l_517, 0, NumDims.x_transformer_l_552, NumDims.x_transformer_l_517);

% Div:
Vars.x_transformer_l_521 = fix(Vars.x_transformer_l_532 ./ Vars.x_transformer_l_518);
NumDims.x_transformer_l_521 = max(NumDims.x_transformer_l_532, NumDims.x_transformer_l_518);

% Cast:
Vars.x_transformer_l_492 = cast(int64(extractdata(Vars.x_transformer_l_521)), 'like', Vars.x_transformer_l_521);
NumDims.x_transformer_l_492 = NumDims.x_transformer_l_521;

% Cast:
Vars.x_transformer_l_493 = cast(int64(extractdata(Vars.x_transformer_l_492)), 'like', Vars.x_transformer_l_492);
NumDims.x_transformer_l_493 = NumDims.x_transformer_l_492;

% Unsqueeze:
[shape, NumDims.x_transformer_l_567] = prepareUnsqueezeArgs(Vars.x_transformer_l_530, Vars.onnx__Unsqueeze_965, NumDims.x_transformer_l_530);
Vars.x_transformer_l_567 = reshape(Vars.x_transformer_l_530, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_568] = prepareUnsqueezeArgs(Vars.x_transformer_l_531, Vars.onnx__Unsqueeze_967, NumDims.x_transformer_l_531);
Vars.x_transformer_l_568 = reshape(Vars.x_transformer_l_531, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_569] = prepareUnsqueezeArgs(Vars.x_transformer_l_493, Vars.onnx__Unsqueeze_971, NumDims.x_transformer_l_493);
Vars.x_transformer_l_569 = reshape(Vars.x_transformer_l_493, shape);

% Concat:
[Vars.x_transformer_l_497, NumDims.x_transformer_l_497] = onnxConcat(0, {Vars.x_transformer_l_567, Vars.x_transformer_l_568, Vars.x_transformer_l_519, Vars.x_transformer_l_569}, [NumDims.x_transformer_l_567, NumDims.x_transformer_l_568, NumDims.x_transformer_l_519, NumDims.x_transformer_l_569]);

% Reshape:
[shape, NumDims.x_transformer_l_541] = prepareReshapeArgs(Vars.x_transformer_l_575, Vars.x_transformer_l_497, NumDims.x_transformer_l_575, 0);
Vars.x_transformer_l_541 = reshape(Vars.x_transformer_l_575, shape{:});

% Shape:
[Vars.x_transformer_l_553, NumDims.x_transformer_l_553] = onnxShape(Vars.x_transformer_l_581, NumDims.x_transformer_l_581);

% Gather:
[Vars.x_transformer_l_533, NumDims.x_transformer_l_533] = onnxGather(Vars.x_transformer_l_553, Vars.x_transformer_l_501, 0, NumDims.x_transformer_l_553, NumDims.x_transformer_l_501);

% Shape:
[Vars.x_transformer_l_554, NumDims.x_transformer_l_554] = onnxShape(Vars.x_transformer_l_581, NumDims.x_transformer_l_581);

% Gather:
[Vars.x_transformer_l_534, NumDims.x_transformer_l_534] = onnxGather(Vars.x_transformer_l_554, Vars.x_transformer_l_502, 0, NumDims.x_transformer_l_554, NumDims.x_transformer_l_502);

% Shape:
[Vars.x_transformer_l_555, NumDims.x_transformer_l_555] = onnxShape(Vars.x_transformer_l_581, NumDims.x_transformer_l_581);

% Gather:
[Vars.x_transformer_l_535, NumDims.x_transformer_l_535] = onnxGather(Vars.x_transformer_l_555, Vars.x_transformer_l_503, 0, NumDims.x_transformer_l_555, NumDims.x_transformer_l_503);

% Div:
Vars.x_transformer_l_522 = fix(Vars.x_transformer_l_535 ./ Vars.x_transformer_l_504);
NumDims.x_transformer_l_522 = max(NumDims.x_transformer_l_535, NumDims.x_transformer_l_504);

% Cast:
Vars.x_transformer_l_494 = cast(int64(extractdata(Vars.x_transformer_l_522)), 'like', Vars.x_transformer_l_522);
NumDims.x_transformer_l_494 = NumDims.x_transformer_l_522;

% Cast:
Vars.x_transformer_l_495 = cast(int64(extractdata(Vars.x_transformer_l_494)), 'like', Vars.x_transformer_l_494);
NumDims.x_transformer_l_495 = NumDims.x_transformer_l_494;

% Unsqueeze:
[shape, NumDims.x_transformer_l_570] = prepareUnsqueezeArgs(Vars.x_transformer_l_533, Vars.onnx__Unsqueeze_988, NumDims.x_transformer_l_533);
Vars.x_transformer_l_570 = reshape(Vars.x_transformer_l_533, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_571] = prepareUnsqueezeArgs(Vars.x_transformer_l_534, Vars.onnx__Unsqueeze_990, NumDims.x_transformer_l_534);
Vars.x_transformer_l_571 = reshape(Vars.x_transformer_l_534, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_572] = prepareUnsqueezeArgs(Vars.x_transformer_l_495, Vars.onnx__Unsqueeze_994, NumDims.x_transformer_l_495);
Vars.x_transformer_l_572 = reshape(Vars.x_transformer_l_495, shape);

% Concat:
[Vars.x_transformer_l_498, NumDims.x_transformer_l_498] = onnxConcat(0, {Vars.x_transformer_l_570, Vars.x_transformer_l_571, Vars.x_transformer_l_505, Vars.x_transformer_l_572}, [NumDims.x_transformer_l_570, NumDims.x_transformer_l_571, NumDims.x_transformer_l_505, NumDims.x_transformer_l_572]);

% Reshape:
[shape, NumDims.x_transformer_l_542] = prepareReshapeArgs(Vars.x_transformer_l_581, Vars.x_transformer_l_498, NumDims.x_transformer_l_581, 0);
Vars.x_transformer_l_542 = reshape(Vars.x_transformer_l_581, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_559] = prepareTransposeArgs(Vars.TransposePerm1073, NumDims.x_transformer_l_542);
if ~isempty(perm)
    Vars.x_transformer_l_559 = permute(Vars.x_transformer_l_542, perm);
end

% Transpose:
[perm, NumDims.x_transformer_l_560] = prepareTransposeArgs(Vars.TransposePerm1074, NumDims.x_transformer_l_541);
if ~isempty(perm)
    Vars.x_transformer_l_560 = permute(Vars.x_transformer_l_541, perm);
end

% MatMul:
[Vars.x_transformer_l_539, NumDims.x_transformer_l_539] = onnxMatMul(Vars.x_transformer_l_562, Vars.x_transformer_l_560, NumDims.x_transformer_l_562, NumDims.x_transformer_l_560);

% Div:
Vars.x_transformer_l_523 = Vars.x_transformer_l_539 ./ Vars.x_transformer_l_506;
NumDims.x_transformer_l_523 = max(NumDims.x_transformer_l_539, NumDims.x_transformer_l_506);

% Softmax:
[Vars.x_transformer_l_558, NumDims.x_transformer_l_558] = onnxSoftmax13(Vars.x_transformer_l_523, -1, NumDims.x_transformer_l_523);

% MatMul:
[Vars.x_transformer_l_538, NumDims.x_transformer_l_538] = onnxMatMul(Vars.x_transformer_l_558, Vars.x_transformer_l_559, NumDims.x_transformer_l_558, NumDims.x_transformer_l_559);

% Shape:
[Vars.x_transformer_l_556, NumDims.x_transformer_l_556] = onnxShape(Vars.x_transformer_l_538, NumDims.x_transformer_l_538);

% Gather:
[Vars.x_transformer_l_536, NumDims.x_transformer_l_536] = onnxGather(Vars.x_transformer_l_556, Vars.x_transformer_l_507, 0, NumDims.x_transformer_l_556, NumDims.x_transformer_l_507);

% Shape:
[Vars.x_transformer_l_545, NumDims.x_transformer_l_545] = onnxShape(Vars.x_transformer_l_538, NumDims.x_transformer_l_538);

% Gather:
[Vars.x_transformer_l_525, NumDims.x_transformer_l_525] = onnxGather(Vars.x_transformer_l_545, Vars.x_transformer_l_508, 0, NumDims.x_transformer_l_545, NumDims.x_transformer_l_508);

% Shape:
[Vars.x_transformer_l_546, NumDims.x_transformer_l_546] = onnxShape(Vars.x_transformer_l_538, NumDims.x_transformer_l_538);

% Gather:
[Vars.x_transformer_l_526, NumDims.x_transformer_l_526] = onnxGather(Vars.x_transformer_l_546, Vars.x_transformer_l_509, 0, NumDims.x_transformer_l_546, NumDims.x_transformer_l_509);

% Shape:
[Vars.x_transformer_l_547, NumDims.x_transformer_l_547] = onnxShape(Vars.x_transformer_l_538, NumDims.x_transformer_l_538);

% Gather:
[Vars.x_transformer_l_527, NumDims.x_transformer_l_527] = onnxGather(Vars.x_transformer_l_547, Vars.x_transformer_l_510, 0, NumDims.x_transformer_l_547, NumDims.x_transformer_l_510);

% Transpose:
[perm, NumDims.x_transformer_l_561] = prepareTransposeArgs(Vars.TransposePerm1075, NumDims.x_transformer_l_538);
if ~isempty(perm)
    Vars.x_transformer_l_561 = permute(Vars.x_transformer_l_538, perm);
end

% Mul:
Vars.x_transformer_l_540 = Vars.x_transformer_l_525 .* Vars.x_transformer_l_527;
NumDims.x_transformer_l_540 = max(NumDims.x_transformer_l_525, NumDims.x_transformer_l_527);

% Unsqueeze:
[shape, NumDims.x_transformer_l_573] = prepareUnsqueezeArgs(Vars.x_transformer_l_536, Vars.onnx__Unsqueeze_1019, NumDims.x_transformer_l_536);
Vars.x_transformer_l_573 = reshape(Vars.x_transformer_l_536, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_563] = prepareUnsqueezeArgs(Vars.x_transformer_l_526, Vars.onnx__Unsqueeze_1021, NumDims.x_transformer_l_526);
Vars.x_transformer_l_563 = reshape(Vars.x_transformer_l_526, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_564] = prepareUnsqueezeArgs(Vars.x_transformer_l_540, Vars.onnx__Unsqueeze_1023, NumDims.x_transformer_l_540);
Vars.x_transformer_l_564 = reshape(Vars.x_transformer_l_540, shape);

% Concat:
[Vars.x_transformer_l_499, NumDims.x_transformer_l_499] = onnxConcat(0, {Vars.x_transformer_l_573, Vars.x_transformer_l_563, Vars.x_transformer_l_564}, [NumDims.x_transformer_l_573, NumDims.x_transformer_l_563, NumDims.x_transformer_l_564]);

% Reshape:
[shape, NumDims.x_transformer_l_543] = prepareReshapeArgs(Vars.x_transformer_l_561, Vars.x_transformer_l_499, NumDims.x_transformer_l_561, 0);
Vars.x_transformer_l_543 = reshape(Vars.x_transformer_l_561, shape{:});

% MatMul:
[Vars.x_transformer_l_578, NumDims.x_transformer_l_578] = onnxMatMul(Vars.x_transformer_l_543, Vars.onnx__MatMul_1607, NumDims.x_transformer_l_543, NumDims.onnx__MatMul_1607);

% Add:
Vars.x_transformer_l_577 = Vars.mask_decoder_tran_45 + Vars.x_transformer_l_578;
NumDims.x_transformer_l_577 = max(NumDims.mask_decoder_tran_45, NumDims.x_transformer_l_578);

% Add:
Vars.x_transformer_l_297 = Vars.x_transformer_l_197 + Vars.x_transformer_l_577;
NumDims.x_transformer_l_297 = max(NumDims.x_transformer_l_197, NumDims.x_transformer_l_577);

% PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (LayerNormalization):
[Vars.x_transformer_l_487, NumDims.x_transformer_l_487] = PLACEHOLDER(Vars.x_transformer_l_297, Vars.mask_decoder_tran_37, Vars.mask_decoder_tran_36);

% Add:
Vars.x_transformer_l_291 = Vars.x_transformer_l_487 + Vars.x_Concat_2_output_0;
NumDims.x_transformer_l_291 = max(NumDims.x_transformer_l_487, NumDims.x_Concat_2_output_0);

% Add:
Vars.x_transformer_l_292 = Vars.x_transformer_l_198 + Vars.x_transformer_Transp;
NumDims.x_transformer_l_292 = max(NumDims.x_transformer_l_198, NumDims.x_transformer_Transp);

% MatMul:
[Vars.x_transformer_l_479, NumDims.x_transformer_l_479] = onnxMatMul(Vars.x_transformer_l_291, Vars.onnx__MatMul_1608, NumDims.x_transformer_l_291, NumDims.onnx__MatMul_1608);

% Add:
Vars.x_transformer_l_478 = Vars.mask_decoder_tran_32 + Vars.x_transformer_l_479;
NumDims.x_transformer_l_478 = max(NumDims.mask_decoder_tran_32, NumDims.x_transformer_l_479);

% MatMul:
[Vars.x_transformer_l_475, NumDims.x_transformer_l_475] = onnxMatMul(Vars.x_transformer_l_292, Vars.onnx__MatMul_1609, NumDims.x_transformer_l_292, NumDims.onnx__MatMul_1609);

% Add:
Vars.x_transformer_l_474 = Vars.mask_decoder_tran_30 + Vars.x_transformer_l_475;
NumDims.x_transformer_l_474 = max(NumDims.mask_decoder_tran_30, NumDims.x_transformer_l_475);

% MatMul:
[Vars.x_transformer_l_481, NumDims.x_transformer_l_481] = onnxMatMul(Vars.x_transformer_l_198, Vars.onnx__MatMul_1610, NumDims.x_transformer_l_198, NumDims.onnx__MatMul_1610);

% Add:
Vars.x_transformer_l_480 = Vars.mask_decoder_tran_33 + Vars.x_transformer_l_481;
NumDims.x_transformer_l_480 = max(NumDims.mask_decoder_tran_33, NumDims.x_transformer_l_481);

% Shape:
[Vars.x_transformer_l_456, NumDims.x_transformer_l_456] = onnxShape(Vars.x_transformer_l_478, NumDims.x_transformer_l_478);

% Gather:
[Vars.x_transformer_l_436, NumDims.x_transformer_l_436] = onnxGather(Vars.x_transformer_l_456, Vars.x_transformer_l_419, 0, NumDims.x_transformer_l_456, NumDims.x_transformer_l_419);

% Shape:
[Vars.x_transformer_l_447, NumDims.x_transformer_l_447] = onnxShape(Vars.x_transformer_l_478, NumDims.x_transformer_l_478);

% Gather:
[Vars.x_transformer_l_427, NumDims.x_transformer_l_427] = onnxGather(Vars.x_transformer_l_447, Vars.x_transformer_l_410, 0, NumDims.x_transformer_l_447, NumDims.x_transformer_l_410);

% Shape:
[Vars.x_transformer_l_448, NumDims.x_transformer_l_448] = onnxShape(Vars.x_transformer_l_478, NumDims.x_transformer_l_478);

% Gather:
[Vars.x_transformer_l_428, NumDims.x_transformer_l_428] = onnxGather(Vars.x_transformer_l_448, Vars.x_transformer_l_411, 0, NumDims.x_transformer_l_448, NumDims.x_transformer_l_411);

% Div:
Vars.x_transformer_l_423 = fix(Vars.x_transformer_l_428 ./ Vars.x_transformer_l_412);
NumDims.x_transformer_l_423 = max(NumDims.x_transformer_l_428, NumDims.x_transformer_l_412);

% Cast:
Vars.x_transformer_l_395 = cast(int64(extractdata(Vars.x_transformer_l_423)), 'like', Vars.x_transformer_l_423);
NumDims.x_transformer_l_395 = NumDims.x_transformer_l_423;

% Cast:
Vars.x_transformer_l_390 = cast(int64(extractdata(Vars.x_transformer_l_395)), 'like', Vars.x_transformer_l_395);
NumDims.x_transformer_l_390 = NumDims.x_transformer_l_395;

% Unsqueeze:
[shape, NumDims.x_transformer_l_473] = prepareUnsqueezeArgs(Vars.x_transformer_l_436, Vars.onnx__Unsqueeze_1056, NumDims.x_transformer_l_436);
Vars.x_transformer_l_473 = reshape(Vars.x_transformer_l_436, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_464] = prepareUnsqueezeArgs(Vars.x_transformer_l_427, Vars.onnx__Unsqueeze_1058, NumDims.x_transformer_l_427);
Vars.x_transformer_l_464 = reshape(Vars.x_transformer_l_427, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_465] = prepareUnsqueezeArgs(Vars.x_transformer_l_390, Vars.onnx__Unsqueeze_1062, NumDims.x_transformer_l_390);
Vars.x_transformer_l_465 = reshape(Vars.x_transformer_l_390, shape);

% Concat:
[Vars.x_transformer_l_399, NumDims.x_transformer_l_399] = onnxConcat(0, {Vars.x_transformer_l_473, Vars.x_transformer_l_464, Vars.x_transformer_l_413, Vars.x_transformer_l_465}, [NumDims.x_transformer_l_473, NumDims.x_transformer_l_464, NumDims.x_transformer_l_413, NumDims.x_transformer_l_465]);

% Reshape:
[shape, NumDims.x_transformer_l_443] = prepareReshapeArgs(Vars.x_transformer_l_478, Vars.x_transformer_l_399, NumDims.x_transformer_l_478, 0);
Vars.x_transformer_l_443 = reshape(Vars.x_transformer_l_478, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_461] = prepareTransposeArgs(Vars.TransposePerm1076, NumDims.x_transformer_l_443);
if ~isempty(perm)
    Vars.x_transformer_l_461 = permute(Vars.x_transformer_l_443, perm);
end

% Shape:
[Vars.x_transformer_l_449, NumDims.x_transformer_l_449] = onnxShape(Vars.x_transformer_l_474, NumDims.x_transformer_l_474);

% Gather:
[Vars.x_transformer_l_429, NumDims.x_transformer_l_429] = onnxGather(Vars.x_transformer_l_449, Vars.x_transformer_l_414, 0, NumDims.x_transformer_l_449, NumDims.x_transformer_l_414);

% Shape:
[Vars.x_transformer_l_450, NumDims.x_transformer_l_450] = onnxShape(Vars.x_transformer_l_474, NumDims.x_transformer_l_474);

% Gather:
[Vars.x_transformer_l_430, NumDims.x_transformer_l_430] = onnxGather(Vars.x_transformer_l_450, Vars.x_transformer_l_415, 0, NumDims.x_transformer_l_450, NumDims.x_transformer_l_415);

% Shape:
[Vars.x_transformer_l_451, NumDims.x_transformer_l_451] = onnxShape(Vars.x_transformer_l_474, NumDims.x_transformer_l_474);

% Gather:
[Vars.x_transformer_l_431, NumDims.x_transformer_l_431] = onnxGather(Vars.x_transformer_l_451, Vars.x_transformer_l_416, 0, NumDims.x_transformer_l_451, NumDims.x_transformer_l_416);

% Div:
Vars.x_transformer_l_420 = fix(Vars.x_transformer_l_431 ./ Vars.x_transformer_l_417);
NumDims.x_transformer_l_420 = max(NumDims.x_transformer_l_431, NumDims.x_transformer_l_417);

% Cast:
Vars.x_transformer_l_391 = cast(int64(extractdata(Vars.x_transformer_l_420)), 'like', Vars.x_transformer_l_420);
NumDims.x_transformer_l_391 = NumDims.x_transformer_l_420;

% Cast:
Vars.x_transformer_l_392 = cast(int64(extractdata(Vars.x_transformer_l_391)), 'like', Vars.x_transformer_l_391);
NumDims.x_transformer_l_392 = NumDims.x_transformer_l_391;

% Unsqueeze:
[shape, NumDims.x_transformer_l_466] = prepareUnsqueezeArgs(Vars.x_transformer_l_429, Vars.onnx__Unsqueeze_1080, NumDims.x_transformer_l_429);
Vars.x_transformer_l_466 = reshape(Vars.x_transformer_l_429, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_467] = prepareUnsqueezeArgs(Vars.x_transformer_l_430, Vars.onnx__Unsqueeze_1082, NumDims.x_transformer_l_430);
Vars.x_transformer_l_467 = reshape(Vars.x_transformer_l_430, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_468] = prepareUnsqueezeArgs(Vars.x_transformer_l_392, Vars.onnx__Unsqueeze_1086, NumDims.x_transformer_l_392);
Vars.x_transformer_l_468 = reshape(Vars.x_transformer_l_392, shape);

% Concat:
[Vars.x_transformer_l_396, NumDims.x_transformer_l_396] = onnxConcat(0, {Vars.x_transformer_l_466, Vars.x_transformer_l_467, Vars.x_transformer_l_418, Vars.x_transformer_l_468}, [NumDims.x_transformer_l_466, NumDims.x_transformer_l_467, NumDims.x_transformer_l_418, NumDims.x_transformer_l_468]);

% Reshape:
[shape, NumDims.x_transformer_l_440] = prepareReshapeArgs(Vars.x_transformer_l_474, Vars.x_transformer_l_396, NumDims.x_transformer_l_474, 0);
Vars.x_transformer_l_440 = reshape(Vars.x_transformer_l_474, shape{:});

% Shape:
[Vars.x_transformer_l_452, NumDims.x_transformer_l_452] = onnxShape(Vars.x_transformer_l_480, NumDims.x_transformer_l_480);

% Gather:
[Vars.x_transformer_l_432, NumDims.x_transformer_l_432] = onnxGather(Vars.x_transformer_l_452, Vars.x_transformer_l_400, 0, NumDims.x_transformer_l_452, NumDims.x_transformer_l_400);

% Shape:
[Vars.x_transformer_l_453, NumDims.x_transformer_l_453] = onnxShape(Vars.x_transformer_l_480, NumDims.x_transformer_l_480);

% Gather:
[Vars.x_transformer_l_433, NumDims.x_transformer_l_433] = onnxGather(Vars.x_transformer_l_453, Vars.x_transformer_l_401, 0, NumDims.x_transformer_l_453, NumDims.x_transformer_l_401);

% Shape:
[Vars.x_transformer_l_454, NumDims.x_transformer_l_454] = onnxShape(Vars.x_transformer_l_480, NumDims.x_transformer_l_480);

% Gather:
[Vars.x_transformer_l_434, NumDims.x_transformer_l_434] = onnxGather(Vars.x_transformer_l_454, Vars.x_transformer_l_402, 0, NumDims.x_transformer_l_454, NumDims.x_transformer_l_402);

% Div:
Vars.x_transformer_l_421 = fix(Vars.x_transformer_l_434 ./ Vars.x_transformer_l_403);
NumDims.x_transformer_l_421 = max(NumDims.x_transformer_l_434, NumDims.x_transformer_l_403);

% Cast:
Vars.x_transformer_l_393 = cast(int64(extractdata(Vars.x_transformer_l_421)), 'like', Vars.x_transformer_l_421);
NumDims.x_transformer_l_393 = NumDims.x_transformer_l_421;

% Cast:
Vars.x_transformer_l_394 = cast(int64(extractdata(Vars.x_transformer_l_393)), 'like', Vars.x_transformer_l_393);
NumDims.x_transformer_l_394 = NumDims.x_transformer_l_393;

% Unsqueeze:
[shape, NumDims.x_transformer_l_469] = prepareUnsqueezeArgs(Vars.x_transformer_l_432, Vars.onnx__Unsqueeze_1103, NumDims.x_transformer_l_432);
Vars.x_transformer_l_469 = reshape(Vars.x_transformer_l_432, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_470] = prepareUnsqueezeArgs(Vars.x_transformer_l_433, Vars.onnx__Unsqueeze_1105, NumDims.x_transformer_l_433);
Vars.x_transformer_l_470 = reshape(Vars.x_transformer_l_433, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_471] = prepareUnsqueezeArgs(Vars.x_transformer_l_394, Vars.onnx__Unsqueeze_1109, NumDims.x_transformer_l_394);
Vars.x_transformer_l_471 = reshape(Vars.x_transformer_l_394, shape);

% Concat:
[Vars.x_transformer_l_397, NumDims.x_transformer_l_397] = onnxConcat(0, {Vars.x_transformer_l_469, Vars.x_transformer_l_470, Vars.x_transformer_l_404, Vars.x_transformer_l_471}, [NumDims.x_transformer_l_469, NumDims.x_transformer_l_470, NumDims.x_transformer_l_404, NumDims.x_transformer_l_471]);

% Reshape:
[shape, NumDims.x_transformer_l_441] = prepareReshapeArgs(Vars.x_transformer_l_480, Vars.x_transformer_l_397, NumDims.x_transformer_l_480, 0);
Vars.x_transformer_l_441 = reshape(Vars.x_transformer_l_480, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_458] = prepareTransposeArgs(Vars.TransposePerm1077, NumDims.x_transformer_l_441);
if ~isempty(perm)
    Vars.x_transformer_l_458 = permute(Vars.x_transformer_l_441, perm);
end

% Transpose:
[perm, NumDims.x_transformer_l_459] = prepareTransposeArgs(Vars.TransposePerm1078, NumDims.x_transformer_l_440);
if ~isempty(perm)
    Vars.x_transformer_l_459 = permute(Vars.x_transformer_l_440, perm);
end

% MatMul:
[Vars.x_transformer_l_438, NumDims.x_transformer_l_438] = onnxMatMul(Vars.x_transformer_l_461, Vars.x_transformer_l_459, NumDims.x_transformer_l_461, NumDims.x_transformer_l_459);

% Div:
Vars.x_transformer_l_422 = Vars.x_transformer_l_438 ./ Vars.x_transformer_l_405;
NumDims.x_transformer_l_422 = max(NumDims.x_transformer_l_438, NumDims.x_transformer_l_405);

% Softmax:
[Vars.x_transformer_l_457, NumDims.x_transformer_l_457] = onnxSoftmax13(Vars.x_transformer_l_422, -1, NumDims.x_transformer_l_422);

% MatMul:
[Vars.x_transformer_l_437, NumDims.x_transformer_l_437] = onnxMatMul(Vars.x_transformer_l_457, Vars.x_transformer_l_458, NumDims.x_transformer_l_457, NumDims.x_transformer_l_458);

% Shape:
[Vars.x_transformer_l_455, NumDims.x_transformer_l_455] = onnxShape(Vars.x_transformer_l_437, NumDims.x_transformer_l_437);

% Gather:
[Vars.x_transformer_l_435, NumDims.x_transformer_l_435] = onnxGather(Vars.x_transformer_l_455, Vars.x_transformer_l_406, 0, NumDims.x_transformer_l_455, NumDims.x_transformer_l_406);

% Shape:
[Vars.x_transformer_l_444, NumDims.x_transformer_l_444] = onnxShape(Vars.x_transformer_l_437, NumDims.x_transformer_l_437);

% Gather:
[Vars.x_transformer_l_424, NumDims.x_transformer_l_424] = onnxGather(Vars.x_transformer_l_444, Vars.x_transformer_l_407, 0, NumDims.x_transformer_l_444, NumDims.x_transformer_l_407);

% Shape:
[Vars.x_transformer_l_445, NumDims.x_transformer_l_445] = onnxShape(Vars.x_transformer_l_437, NumDims.x_transformer_l_437);

% Gather:
[Vars.x_transformer_l_425, NumDims.x_transformer_l_425] = onnxGather(Vars.x_transformer_l_445, Vars.x_transformer_l_408, 0, NumDims.x_transformer_l_445, NumDims.x_transformer_l_408);

% Shape:
[Vars.x_transformer_l_446, NumDims.x_transformer_l_446] = onnxShape(Vars.x_transformer_l_437, NumDims.x_transformer_l_437);

% Gather:
[Vars.x_transformer_l_426, NumDims.x_transformer_l_426] = onnxGather(Vars.x_transformer_l_446, Vars.x_transformer_l_409, 0, NumDims.x_transformer_l_446, NumDims.x_transformer_l_409);

% Transpose:
[perm, NumDims.x_transformer_l_460] = prepareTransposeArgs(Vars.TransposePerm1079, NumDims.x_transformer_l_437);
if ~isempty(perm)
    Vars.x_transformer_l_460 = permute(Vars.x_transformer_l_437, perm);
end

% Mul:
Vars.x_transformer_l_439 = Vars.x_transformer_l_424 .* Vars.x_transformer_l_426;
NumDims.x_transformer_l_439 = max(NumDims.x_transformer_l_424, NumDims.x_transformer_l_426);

% Unsqueeze:
[shape, NumDims.x_transformer_l_472] = prepareUnsqueezeArgs(Vars.x_transformer_l_435, Vars.onnx__Unsqueeze_1134, NumDims.x_transformer_l_435);
Vars.x_transformer_l_472 = reshape(Vars.x_transformer_l_435, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_462] = prepareUnsqueezeArgs(Vars.x_transformer_l_425, Vars.onnx__Unsqueeze_1136, NumDims.x_transformer_l_425);
Vars.x_transformer_l_462 = reshape(Vars.x_transformer_l_425, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_463] = prepareUnsqueezeArgs(Vars.x_transformer_l_439, Vars.onnx__Unsqueeze_1138, NumDims.x_transformer_l_439);
Vars.x_transformer_l_463 = reshape(Vars.x_transformer_l_439, shape);

% Concat:
[Vars.x_transformer_l_398, NumDims.x_transformer_l_398] = onnxConcat(0, {Vars.x_transformer_l_472, Vars.x_transformer_l_462, Vars.x_transformer_l_463}, [NumDims.x_transformer_l_472, NumDims.x_transformer_l_462, NumDims.x_transformer_l_463]);

% Reshape:
[shape, NumDims.x_transformer_l_442] = prepareReshapeArgs(Vars.x_transformer_l_460, Vars.x_transformer_l_398, NumDims.x_transformer_l_460, 0);
Vars.x_transformer_l_442 = reshape(Vars.x_transformer_l_460, shape{:});

% MatMul:
[Vars.x_transformer_l_477, NumDims.x_transformer_l_477] = onnxMatMul(Vars.x_transformer_l_442, Vars.onnx__MatMul_1614, NumDims.x_transformer_l_442, NumDims.onnx__MatMul_1614);

% Add:
Vars.x_transformer_l_476 = Vars.mask_decoder_tran_31 + Vars.x_transformer_l_477;
NumDims.x_transformer_l_476 = max(NumDims.mask_decoder_tran_31, NumDims.x_transformer_l_477);

% Add:
Vars.x_transformer_l_293 = Vars.x_transformer_l_487 + Vars.x_transformer_l_476;
NumDims.x_transformer_l_293 = max(NumDims.x_transformer_l_487, NumDims.x_transformer_l_476);

% PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (LayerNormalization):
[Vars.x_transformer_l_488, NumDims.x_transformer_l_488] = PLACEHOLDER(Vars.x_transformer_l_293, Vars.mask_decoder_tran_39, Vars.mask_decoder_tran_38);

% MatMul:
[Vars.x_transformer_l_484, NumDims.x_transformer_l_484] = onnxMatMul(Vars.x_transformer_l_488, Vars.onnx__MatMul_1615, NumDims.x_transformer_l_488, NumDims.onnx__MatMul_1615);

% Add:
Vars.x_transformer_l_483 = Vars.mask_decoder_tran_34 + Vars.x_transformer_l_484;
NumDims.x_transformer_l_483 = max(NumDims.mask_decoder_tran_34, NumDims.x_transformer_l_484);

% Relu:
Vars.x_transformer_l_482 = relu(Vars.x_transformer_l_483);
NumDims.x_transformer_l_482 = NumDims.x_transformer_l_483;

% MatMul:
[Vars.x_transformer_l_486, NumDims.x_transformer_l_486] = onnxMatMul(Vars.x_transformer_l_482, Vars.onnx__MatMul_1616, NumDims.x_transformer_l_482, NumDims.onnx__MatMul_1616);

% Add:
Vars.x_transformer_l_485 = Vars.mask_decoder_tran_35 + Vars.x_transformer_l_486;
NumDims.x_transformer_l_485 = max(NumDims.mask_decoder_tran_35, NumDims.x_transformer_l_486);

% Add:
Vars.x_transformer_l_294 = Vars.x_transformer_l_488 + Vars.x_transformer_l_485;
NumDims.x_transformer_l_294 = max(NumDims.x_transformer_l_488, NumDims.x_transformer_l_485);

% PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (LayerNormalization):
[Vars.x_transformer_l_489, NumDims.x_transformer_l_489] = PLACEHOLDER(Vars.x_transformer_l_294, Vars.mask_decoder_tran_41, Vars.mask_decoder_tran_40);

% Add:
Vars.x_transformer_l_295 = Vars.x_transformer_l_489 + Vars.x_Concat_2_output_0;
NumDims.x_transformer_l_295 = max(NumDims.x_transformer_l_489, NumDims.x_Concat_2_output_0);

% MatMul:
[Vars.x_transformer_l_387, NumDims.x_transformer_l_387] = onnxMatMul(Vars.x_transformer_l_292, Vars.onnx__MatMul_1617, NumDims.x_transformer_l_292, NumDims.onnx__MatMul_1617);

% Add:
Vars.x_transformer_l_386 = Vars.mask_decoder_tran_28 + Vars.x_transformer_l_387;
NumDims.x_transformer_l_386 = max(NumDims.mask_decoder_tran_28, NumDims.x_transformer_l_387);

% MatMul:
[Vars.x_transformer_l_383, NumDims.x_transformer_l_383] = onnxMatMul(Vars.x_transformer_l_295, Vars.onnx__MatMul_1618, NumDims.x_transformer_l_295, NumDims.onnx__MatMul_1618);

% Add:
Vars.x_transformer_l_382 = Vars.mask_decoder_tran_26 + Vars.x_transformer_l_383;
NumDims.x_transformer_l_382 = max(NumDims.mask_decoder_tran_26, NumDims.x_transformer_l_383);

% MatMul:
[Vars.x_transformer_l_389, NumDims.x_transformer_l_389] = onnxMatMul(Vars.x_transformer_l_489, Vars.onnx__MatMul_1619, NumDims.x_transformer_l_489, NumDims.onnx__MatMul_1619);

% Add:
Vars.x_transformer_l_388 = Vars.mask_decoder_tran_29 + Vars.x_transformer_l_389;
NumDims.x_transformer_l_388 = max(NumDims.mask_decoder_tran_29, NumDims.x_transformer_l_389);

% Shape:
[Vars.x_transformer_l_364, NumDims.x_transformer_l_364] = onnxShape(Vars.x_transformer_l_386, NumDims.x_transformer_l_386);

% Gather:
[Vars.x_transformer_l_344, NumDims.x_transformer_l_344] = onnxGather(Vars.x_transformer_l_364, Vars.x_transformer_l_327, 0, NumDims.x_transformer_l_364, NumDims.x_transformer_l_327);

% Shape:
[Vars.x_transformer_l_355, NumDims.x_transformer_l_355] = onnxShape(Vars.x_transformer_l_386, NumDims.x_transformer_l_386);

% Gather:
[Vars.x_transformer_l_335, NumDims.x_transformer_l_335] = onnxGather(Vars.x_transformer_l_355, Vars.x_transformer_l_318, 0, NumDims.x_transformer_l_355, NumDims.x_transformer_l_318);

% Shape:
[Vars.x_transformer_l_356, NumDims.x_transformer_l_356] = onnxShape(Vars.x_transformer_l_386, NumDims.x_transformer_l_386);

% Gather:
[Vars.x_transformer_l_336, NumDims.x_transformer_l_336] = onnxGather(Vars.x_transformer_l_356, Vars.x_transformer_l_319, 0, NumDims.x_transformer_l_356, NumDims.x_transformer_l_319);

% Div:
Vars.x_transformer_l_331 = fix(Vars.x_transformer_l_336 ./ Vars.x_transformer_l_320);
NumDims.x_transformer_l_331 = max(NumDims.x_transformer_l_336, NumDims.x_transformer_l_320);

% Cast:
Vars.x_transformer_l_303 = cast(int64(extractdata(Vars.x_transformer_l_331)), 'like', Vars.x_transformer_l_331);
NumDims.x_transformer_l_303 = NumDims.x_transformer_l_331;

% Cast:
Vars.x_transformer_l_298 = cast(int64(extractdata(Vars.x_transformer_l_303)), 'like', Vars.x_transformer_l_303);
NumDims.x_transformer_l_298 = NumDims.x_transformer_l_303;

% Unsqueeze:
[shape, NumDims.x_transformer_l_381] = prepareUnsqueezeArgs(Vars.x_transformer_l_344, Vars.onnx__Unsqueeze_1179, NumDims.x_transformer_l_344);
Vars.x_transformer_l_381 = reshape(Vars.x_transformer_l_344, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_372] = prepareUnsqueezeArgs(Vars.x_transformer_l_335, Vars.onnx__Unsqueeze_1181, NumDims.x_transformer_l_335);
Vars.x_transformer_l_372 = reshape(Vars.x_transformer_l_335, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_373] = prepareUnsqueezeArgs(Vars.x_transformer_l_298, Vars.onnx__Unsqueeze_1185, NumDims.x_transformer_l_298);
Vars.x_transformer_l_373 = reshape(Vars.x_transformer_l_298, shape);

% Concat:
[Vars.x_transformer_l_307, NumDims.x_transformer_l_307] = onnxConcat(0, {Vars.x_transformer_l_381, Vars.x_transformer_l_372, Vars.x_transformer_l_321, Vars.x_transformer_l_373}, [NumDims.x_transformer_l_381, NumDims.x_transformer_l_372, NumDims.x_transformer_l_321, NumDims.x_transformer_l_373]);

% Reshape:
[shape, NumDims.x_transformer_l_351] = prepareReshapeArgs(Vars.x_transformer_l_386, Vars.x_transformer_l_307, NumDims.x_transformer_l_386, 0);
Vars.x_transformer_l_351 = reshape(Vars.x_transformer_l_386, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_369] = prepareTransposeArgs(Vars.TransposePerm1080, NumDims.x_transformer_l_351);
if ~isempty(perm)
    Vars.x_transformer_l_369 = permute(Vars.x_transformer_l_351, perm);
end

% Shape:
[Vars.x_transformer_l_357, NumDims.x_transformer_l_357] = onnxShape(Vars.x_transformer_l_382, NumDims.x_transformer_l_382);

% Gather:
[Vars.x_transformer_l_337, NumDims.x_transformer_l_337] = onnxGather(Vars.x_transformer_l_357, Vars.x_transformer_l_322, 0, NumDims.x_transformer_l_357, NumDims.x_transformer_l_322);

% Shape:
[Vars.x_transformer_l_358, NumDims.x_transformer_l_358] = onnxShape(Vars.x_transformer_l_382, NumDims.x_transformer_l_382);

% Gather:
[Vars.x_transformer_l_338, NumDims.x_transformer_l_338] = onnxGather(Vars.x_transformer_l_358, Vars.x_transformer_l_323, 0, NumDims.x_transformer_l_358, NumDims.x_transformer_l_323);

% Shape:
[Vars.x_transformer_l_359, NumDims.x_transformer_l_359] = onnxShape(Vars.x_transformer_l_382, NumDims.x_transformer_l_382);

% Gather:
[Vars.x_transformer_l_339, NumDims.x_transformer_l_339] = onnxGather(Vars.x_transformer_l_359, Vars.x_transformer_l_324, 0, NumDims.x_transformer_l_359, NumDims.x_transformer_l_324);

% Div:
Vars.x_transformer_l_328 = fix(Vars.x_transformer_l_339 ./ Vars.x_transformer_l_325);
NumDims.x_transformer_l_328 = max(NumDims.x_transformer_l_339, NumDims.x_transformer_l_325);

% Cast:
Vars.x_transformer_l_299 = cast(int64(extractdata(Vars.x_transformer_l_328)), 'like', Vars.x_transformer_l_328);
NumDims.x_transformer_l_299 = NumDims.x_transformer_l_328;

% Cast:
Vars.x_transformer_l_300 = cast(int64(extractdata(Vars.x_transformer_l_299)), 'like', Vars.x_transformer_l_299);
NumDims.x_transformer_l_300 = NumDims.x_transformer_l_299;

% Unsqueeze:
[shape, NumDims.x_transformer_l_374] = prepareUnsqueezeArgs(Vars.x_transformer_l_337, Vars.onnx__Unsqueeze_1203, NumDims.x_transformer_l_337);
Vars.x_transformer_l_374 = reshape(Vars.x_transformer_l_337, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_375] = prepareUnsqueezeArgs(Vars.x_transformer_l_338, Vars.onnx__Unsqueeze_1205, NumDims.x_transformer_l_338);
Vars.x_transformer_l_375 = reshape(Vars.x_transformer_l_338, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_376] = prepareUnsqueezeArgs(Vars.x_transformer_l_300, Vars.onnx__Unsqueeze_1209, NumDims.x_transformer_l_300);
Vars.x_transformer_l_376 = reshape(Vars.x_transformer_l_300, shape);

% Concat:
[Vars.x_transformer_l_304, NumDims.x_transformer_l_304] = onnxConcat(0, {Vars.x_transformer_l_374, Vars.x_transformer_l_375, Vars.x_transformer_l_326, Vars.x_transformer_l_376}, [NumDims.x_transformer_l_374, NumDims.x_transformer_l_375, NumDims.x_transformer_l_326, NumDims.x_transformer_l_376]);

% Reshape:
[shape, NumDims.x_transformer_l_348] = prepareReshapeArgs(Vars.x_transformer_l_382, Vars.x_transformer_l_304, NumDims.x_transformer_l_382, 0);
Vars.x_transformer_l_348 = reshape(Vars.x_transformer_l_382, shape{:});

% Shape:
[Vars.x_transformer_l_360, NumDims.x_transformer_l_360] = onnxShape(Vars.x_transformer_l_388, NumDims.x_transformer_l_388);

% Gather:
[Vars.x_transformer_l_340, NumDims.x_transformer_l_340] = onnxGather(Vars.x_transformer_l_360, Vars.x_transformer_l_308, 0, NumDims.x_transformer_l_360, NumDims.x_transformer_l_308);

% Shape:
[Vars.x_transformer_l_361, NumDims.x_transformer_l_361] = onnxShape(Vars.x_transformer_l_388, NumDims.x_transformer_l_388);

% Gather:
[Vars.x_transformer_l_341, NumDims.x_transformer_l_341] = onnxGather(Vars.x_transformer_l_361, Vars.x_transformer_l_309, 0, NumDims.x_transformer_l_361, NumDims.x_transformer_l_309);

% Shape:
[Vars.x_transformer_l_362, NumDims.x_transformer_l_362] = onnxShape(Vars.x_transformer_l_388, NumDims.x_transformer_l_388);

% Gather:
[Vars.x_transformer_l_342, NumDims.x_transformer_l_342] = onnxGather(Vars.x_transformer_l_362, Vars.x_transformer_l_310, 0, NumDims.x_transformer_l_362, NumDims.x_transformer_l_310);

% Div:
Vars.x_transformer_l_329 = fix(Vars.x_transformer_l_342 ./ Vars.x_transformer_l_311);
NumDims.x_transformer_l_329 = max(NumDims.x_transformer_l_342, NumDims.x_transformer_l_311);

% Cast:
Vars.x_transformer_l_301 = cast(int64(extractdata(Vars.x_transformer_l_329)), 'like', Vars.x_transformer_l_329);
NumDims.x_transformer_l_301 = NumDims.x_transformer_l_329;

% Cast:
Vars.x_transformer_l_302 = cast(int64(extractdata(Vars.x_transformer_l_301)), 'like', Vars.x_transformer_l_301);
NumDims.x_transformer_l_302 = NumDims.x_transformer_l_301;

% Unsqueeze:
[shape, NumDims.x_transformer_l_377] = prepareUnsqueezeArgs(Vars.x_transformer_l_340, Vars.onnx__Unsqueeze_1226, NumDims.x_transformer_l_340);
Vars.x_transformer_l_377 = reshape(Vars.x_transformer_l_340, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_378] = prepareUnsqueezeArgs(Vars.x_transformer_l_341, Vars.onnx__Unsqueeze_1228, NumDims.x_transformer_l_341);
Vars.x_transformer_l_378 = reshape(Vars.x_transformer_l_341, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_379] = prepareUnsqueezeArgs(Vars.x_transformer_l_302, Vars.onnx__Unsqueeze_1232, NumDims.x_transformer_l_302);
Vars.x_transformer_l_379 = reshape(Vars.x_transformer_l_302, shape);

% Concat:
[Vars.x_transformer_l_305, NumDims.x_transformer_l_305] = onnxConcat(0, {Vars.x_transformer_l_377, Vars.x_transformer_l_378, Vars.x_transformer_l_312, Vars.x_transformer_l_379}, [NumDims.x_transformer_l_377, NumDims.x_transformer_l_378, NumDims.x_transformer_l_312, NumDims.x_transformer_l_379]);

% Reshape:
[shape, NumDims.x_transformer_l_349] = prepareReshapeArgs(Vars.x_transformer_l_388, Vars.x_transformer_l_305, NumDims.x_transformer_l_388, 0);
Vars.x_transformer_l_349 = reshape(Vars.x_transformer_l_388, shape{:});

% Transpose:
[perm, NumDims.x_transformer_l_366] = prepareTransposeArgs(Vars.TransposePerm1081, NumDims.x_transformer_l_349);
if ~isempty(perm)
    Vars.x_transformer_l_366 = permute(Vars.x_transformer_l_349, perm);
end

% Transpose:
[perm, NumDims.x_transformer_l_367] = prepareTransposeArgs(Vars.TransposePerm1082, NumDims.x_transformer_l_348);
if ~isempty(perm)
    Vars.x_transformer_l_367 = permute(Vars.x_transformer_l_348, perm);
end

% MatMul:
[Vars.x_transformer_l_346, NumDims.x_transformer_l_346] = onnxMatMul(Vars.x_transformer_l_369, Vars.x_transformer_l_367, NumDims.x_transformer_l_369, NumDims.x_transformer_l_367);

% Div:
Vars.x_transformer_l_330 = Vars.x_transformer_l_346 ./ Vars.x_transformer_l_313;
NumDims.x_transformer_l_330 = max(NumDims.x_transformer_l_346, NumDims.x_transformer_l_313);

% Softmax:
[Vars.x_transformer_l_365, NumDims.x_transformer_l_365] = onnxSoftmax13(Vars.x_transformer_l_330, -1, NumDims.x_transformer_l_330);

% MatMul:
[Vars.x_transformer_l_345, NumDims.x_transformer_l_345] = onnxMatMul(Vars.x_transformer_l_365, Vars.x_transformer_l_366, NumDims.x_transformer_l_365, NumDims.x_transformer_l_366);

% Shape:
[Vars.x_transformer_l_363, NumDims.x_transformer_l_363] = onnxShape(Vars.x_transformer_l_345, NumDims.x_transformer_l_345);

% Gather:
[Vars.x_transformer_l_343, NumDims.x_transformer_l_343] = onnxGather(Vars.x_transformer_l_363, Vars.x_transformer_l_314, 0, NumDims.x_transformer_l_363, NumDims.x_transformer_l_314);

% Shape:
[Vars.x_transformer_l_352, NumDims.x_transformer_l_352] = onnxShape(Vars.x_transformer_l_345, NumDims.x_transformer_l_345);

% Gather:
[Vars.x_transformer_l_332, NumDims.x_transformer_l_332] = onnxGather(Vars.x_transformer_l_352, Vars.x_transformer_l_315, 0, NumDims.x_transformer_l_352, NumDims.x_transformer_l_315);

% Shape:
[Vars.x_transformer_l_353, NumDims.x_transformer_l_353] = onnxShape(Vars.x_transformer_l_345, NumDims.x_transformer_l_345);

% Gather:
[Vars.x_transformer_l_333, NumDims.x_transformer_l_333] = onnxGather(Vars.x_transformer_l_353, Vars.x_transformer_l_316, 0, NumDims.x_transformer_l_353, NumDims.x_transformer_l_316);

% Shape:
[Vars.x_transformer_l_354, NumDims.x_transformer_l_354] = onnxShape(Vars.x_transformer_l_345, NumDims.x_transformer_l_345);

% Gather:
[Vars.x_transformer_l_334, NumDims.x_transformer_l_334] = onnxGather(Vars.x_transformer_l_354, Vars.x_transformer_l_317, 0, NumDims.x_transformer_l_354, NumDims.x_transformer_l_317);

% Transpose:
[perm, NumDims.x_transformer_l_368] = prepareTransposeArgs(Vars.TransposePerm1083, NumDims.x_transformer_l_345);
if ~isempty(perm)
    Vars.x_transformer_l_368 = permute(Vars.x_transformer_l_345, perm);
end

% Mul:
Vars.x_transformer_l_347 = Vars.x_transformer_l_332 .* Vars.x_transformer_l_334;
NumDims.x_transformer_l_347 = max(NumDims.x_transformer_l_332, NumDims.x_transformer_l_334);

% Unsqueeze:
[shape, NumDims.x_transformer_l_380] = prepareUnsqueezeArgs(Vars.x_transformer_l_343, Vars.onnx__Unsqueeze_1257, NumDims.x_transformer_l_343);
Vars.x_transformer_l_380 = reshape(Vars.x_transformer_l_343, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_370] = prepareUnsqueezeArgs(Vars.x_transformer_l_333, Vars.onnx__Unsqueeze_1259, NumDims.x_transformer_l_333);
Vars.x_transformer_l_370 = reshape(Vars.x_transformer_l_333, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_l_371] = prepareUnsqueezeArgs(Vars.x_transformer_l_347, Vars.onnx__Unsqueeze_1261, NumDims.x_transformer_l_347);
Vars.x_transformer_l_371 = reshape(Vars.x_transformer_l_347, shape);

% Concat:
[Vars.x_transformer_l_306, NumDims.x_transformer_l_306] = onnxConcat(0, {Vars.x_transformer_l_380, Vars.x_transformer_l_370, Vars.x_transformer_l_371}, [NumDims.x_transformer_l_380, NumDims.x_transformer_l_370, NumDims.x_transformer_l_371]);

% Reshape:
[shape, NumDims.x_transformer_l_350] = prepareReshapeArgs(Vars.x_transformer_l_368, Vars.x_transformer_l_306, NumDims.x_transformer_l_368, 0);
Vars.x_transformer_l_350 = reshape(Vars.x_transformer_l_368, shape{:});

% MatMul:
[Vars.x_transformer_l_385, NumDims.x_transformer_l_385] = onnxMatMul(Vars.x_transformer_l_350, Vars.onnx__MatMul_1623, NumDims.x_transformer_l_350, NumDims.onnx__MatMul_1623);

% Add:
Vars.x_transformer_l_384 = Vars.mask_decoder_tran_27 + Vars.x_transformer_l_385;
NumDims.x_transformer_l_384 = max(NumDims.mask_decoder_tran_27, NumDims.x_transformer_l_385);

% Add:
Vars.x_transformer_l_296 = Vars.x_transformer_l_198 + Vars.x_transformer_l_384;
NumDims.x_transformer_l_296 = max(NumDims.x_transformer_l_198, NumDims.x_transformer_l_384);

% PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (LayerNormalization):
[Vars.x_transformer_l_490, NumDims.x_transformer_l_490] = PLACEHOLDER(Vars.x_transformer_l_296, Vars.mask_decoder_tran_43, Vars.mask_decoder_tran_42);

% Add:
Vars.x_transformer_Add_ou = Vars.x_transformer_l_490 + Vars.x_transformer_Transp;
NumDims.x_transformer_Add_ou = max(NumDims.x_transformer_l_490, NumDims.x_transformer_Transp);

% MatMul:
[Vars.x_transformer_fi_89, NumDims.x_transformer_fi_89] = onnxMatMul(Vars.x_transformer_l_295, Vars.onnx__MatMul_1624, NumDims.x_transformer_l_295, NumDims.onnx__MatMul_1624);

% Add:
Vars.x_transformer_fi_88 = Vars.mask_decoder_tran_2 + Vars.x_transformer_fi_89;
NumDims.x_transformer_fi_88 = max(NumDims.mask_decoder_tran_2, NumDims.x_transformer_fi_89);

% MatMul:
[Vars.x_transformer_fi_85, NumDims.x_transformer_fi_85] = onnxMatMul(Vars.x_transformer_Add_ou, Vars.onnx__MatMul_1625, NumDims.x_transformer_Add_ou, NumDims.onnx__MatMul_1625);

% Add:
Vars.x_transformer_fi_84 = Vars.mask_decoder_transfo + Vars.x_transformer_fi_85;
NumDims.x_transformer_fi_84 = max(NumDims.mask_decoder_transfo, NumDims.x_transformer_fi_85);

% MatMul:
[Vars.x_transformer_fi_91, NumDims.x_transformer_fi_91] = onnxMatMul(Vars.x_transformer_l_490, Vars.onnx__MatMul_1626, NumDims.x_transformer_l_490, NumDims.onnx__MatMul_1626);

% Add:
Vars.x_transformer_fi_90 = Vars.mask_decoder_tran_3 + Vars.x_transformer_fi_91;
NumDims.x_transformer_fi_90 = max(NumDims.mask_decoder_tran_3, NumDims.x_transformer_fi_91);

% Shape:
[Vars.x_transformer_fi_66, NumDims.x_transformer_fi_66] = onnxShape(Vars.x_transformer_fi_88, NumDims.x_transformer_fi_88);

% Gather:
[Vars.x_transformer_fi_46, NumDims.x_transformer_fi_46] = onnxGather(Vars.x_transformer_fi_66, Vars.x_transformer_fi_29, 0, NumDims.x_transformer_fi_66, NumDims.x_transformer_fi_29);

% Shape:
[Vars.x_transformer_fi_57, NumDims.x_transformer_fi_57] = onnxShape(Vars.x_transformer_fi_88, NumDims.x_transformer_fi_88);

% Gather:
[Vars.x_transformer_fi_37, NumDims.x_transformer_fi_37] = onnxGather(Vars.x_transformer_fi_57, Vars.x_transformer_fi_20, 0, NumDims.x_transformer_fi_57, NumDims.x_transformer_fi_20);

% Shape:
[Vars.x_transformer_fi_58, NumDims.x_transformer_fi_58] = onnxShape(Vars.x_transformer_fi_88, NumDims.x_transformer_fi_88);

% Gather:
[Vars.x_transformer_fi_38, NumDims.x_transformer_fi_38] = onnxGather(Vars.x_transformer_fi_58, Vars.x_transformer_fi_21, 0, NumDims.x_transformer_fi_58, NumDims.x_transformer_fi_21);

% Div:
Vars.x_transformer_fi_33 = fix(Vars.x_transformer_fi_38 ./ Vars.x_transformer_fi_22);
NumDims.x_transformer_fi_33 = max(NumDims.x_transformer_fi_38, NumDims.x_transformer_fi_22);

% Cast:
Vars.x_transformer_fi_5 = cast(int64(extractdata(Vars.x_transformer_fi_33)), 'like', Vars.x_transformer_fi_33);
NumDims.x_transformer_fi_5 = NumDims.x_transformer_fi_33;

% Cast:
Vars.x_transformer_final_ = cast(int64(extractdata(Vars.x_transformer_fi_5)), 'like', Vars.x_transformer_fi_5);
NumDims.x_transformer_final_ = NumDims.x_transformer_fi_5;

% Unsqueeze:
[shape, NumDims.x_transformer_fi_83] = prepareUnsqueezeArgs(Vars.x_transformer_fi_46, Vars.onnx__Unsqueeze_1293, NumDims.x_transformer_fi_46);
Vars.x_transformer_fi_83 = reshape(Vars.x_transformer_fi_46, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_fi_74] = prepareUnsqueezeArgs(Vars.x_transformer_fi_37, Vars.onnx__Unsqueeze_1295, NumDims.x_transformer_fi_37);
Vars.x_transformer_fi_74 = reshape(Vars.x_transformer_fi_37, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_fi_75] = prepareUnsqueezeArgs(Vars.x_transformer_final_, Vars.onnx__Unsqueeze_1299, NumDims.x_transformer_final_);
Vars.x_transformer_fi_75 = reshape(Vars.x_transformer_final_, shape);

% Concat:
[Vars.x_transformer_fi_9, NumDims.x_transformer_fi_9] = onnxConcat(0, {Vars.x_transformer_fi_83, Vars.x_transformer_fi_74, Vars.x_transformer_fi_23, Vars.x_transformer_fi_75}, [NumDims.x_transformer_fi_83, NumDims.x_transformer_fi_74, NumDims.x_transformer_fi_23, NumDims.x_transformer_fi_75]);

% Reshape:
[shape, NumDims.x_transformer_fi_53] = prepareReshapeArgs(Vars.x_transformer_fi_88, Vars.x_transformer_fi_9, NumDims.x_transformer_fi_88, 0);
Vars.x_transformer_fi_53 = reshape(Vars.x_transformer_fi_88, shape{:});

% Transpose:
[perm, NumDims.x_transformer_fi_71] = prepareTransposeArgs(Vars.TransposePerm1084, NumDims.x_transformer_fi_53);
if ~isempty(perm)
    Vars.x_transformer_fi_71 = permute(Vars.x_transformer_fi_53, perm);
end

% Shape:
[Vars.x_transformer_fi_59, NumDims.x_transformer_fi_59] = onnxShape(Vars.x_transformer_fi_84, NumDims.x_transformer_fi_84);

% Gather:
[Vars.x_transformer_fi_39, NumDims.x_transformer_fi_39] = onnxGather(Vars.x_transformer_fi_59, Vars.x_transformer_fi_24, 0, NumDims.x_transformer_fi_59, NumDims.x_transformer_fi_24);

% Shape:
[Vars.x_transformer_fi_60, NumDims.x_transformer_fi_60] = onnxShape(Vars.x_transformer_fi_84, NumDims.x_transformer_fi_84);

% Gather:
[Vars.x_transformer_fi_40, NumDims.x_transformer_fi_40] = onnxGather(Vars.x_transformer_fi_60, Vars.x_transformer_fi_25, 0, NumDims.x_transformer_fi_60, NumDims.x_transformer_fi_25);

% Shape:
[Vars.x_transformer_fi_61, NumDims.x_transformer_fi_61] = onnxShape(Vars.x_transformer_fi_84, NumDims.x_transformer_fi_84);

% Gather:
[Vars.x_transformer_fi_41, NumDims.x_transformer_fi_41] = onnxGather(Vars.x_transformer_fi_61, Vars.x_transformer_fi_26, 0, NumDims.x_transformer_fi_61, NumDims.x_transformer_fi_26);

% Div:
Vars.x_transformer_fi_30 = fix(Vars.x_transformer_fi_41 ./ Vars.x_transformer_fi_27);
NumDims.x_transformer_fi_30 = max(NumDims.x_transformer_fi_41, NumDims.x_transformer_fi_27);

% Cast:
Vars.x_transformer_fi_1 = cast(int64(extractdata(Vars.x_transformer_fi_30)), 'like', Vars.x_transformer_fi_30);
NumDims.x_transformer_fi_1 = NumDims.x_transformer_fi_30;

% Cast:
Vars.x_transformer_fi_2 = cast(int64(extractdata(Vars.x_transformer_fi_1)), 'like', Vars.x_transformer_fi_1);
NumDims.x_transformer_fi_2 = NumDims.x_transformer_fi_1;

% Unsqueeze:
[shape, NumDims.x_transformer_fi_76] = prepareUnsqueezeArgs(Vars.x_transformer_fi_39, Vars.onnx__Unsqueeze_1317, NumDims.x_transformer_fi_39);
Vars.x_transformer_fi_76 = reshape(Vars.x_transformer_fi_39, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_fi_77] = prepareUnsqueezeArgs(Vars.x_transformer_fi_40, Vars.onnx__Unsqueeze_1319, NumDims.x_transformer_fi_40);
Vars.x_transformer_fi_77 = reshape(Vars.x_transformer_fi_40, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_fi_78] = prepareUnsqueezeArgs(Vars.x_transformer_fi_2, Vars.onnx__Unsqueeze_1323, NumDims.x_transformer_fi_2);
Vars.x_transformer_fi_78 = reshape(Vars.x_transformer_fi_2, shape);

% Concat:
[Vars.x_transformer_fi_6, NumDims.x_transformer_fi_6] = onnxConcat(0, {Vars.x_transformer_fi_76, Vars.x_transformer_fi_77, Vars.x_transformer_fi_28, Vars.x_transformer_fi_78}, [NumDims.x_transformer_fi_76, NumDims.x_transformer_fi_77, NumDims.x_transformer_fi_28, NumDims.x_transformer_fi_78]);

% Reshape:
[shape, NumDims.x_transformer_fi_50] = prepareReshapeArgs(Vars.x_transformer_fi_84, Vars.x_transformer_fi_6, NumDims.x_transformer_fi_84, 0);
Vars.x_transformer_fi_50 = reshape(Vars.x_transformer_fi_84, shape{:});

% Shape:
[Vars.x_transformer_fi_62, NumDims.x_transformer_fi_62] = onnxShape(Vars.x_transformer_fi_90, NumDims.x_transformer_fi_90);

% Gather:
[Vars.x_transformer_fi_42, NumDims.x_transformer_fi_42] = onnxGather(Vars.x_transformer_fi_62, Vars.x_transformer_fi_10, 0, NumDims.x_transformer_fi_62, NumDims.x_transformer_fi_10);

% Shape:
[Vars.x_transformer_fi_63, NumDims.x_transformer_fi_63] = onnxShape(Vars.x_transformer_fi_90, NumDims.x_transformer_fi_90);

% Gather:
[Vars.x_transformer_fi_43, NumDims.x_transformer_fi_43] = onnxGather(Vars.x_transformer_fi_63, Vars.x_transformer_fi_11, 0, NumDims.x_transformer_fi_63, NumDims.x_transformer_fi_11);

% Shape:
[Vars.x_transformer_fi_64, NumDims.x_transformer_fi_64] = onnxShape(Vars.x_transformer_fi_90, NumDims.x_transformer_fi_90);

% Gather:
[Vars.x_transformer_fi_44, NumDims.x_transformer_fi_44] = onnxGather(Vars.x_transformer_fi_64, Vars.x_transformer_fi_12, 0, NumDims.x_transformer_fi_64, NumDims.x_transformer_fi_12);

% Div:
Vars.x_transformer_fi_31 = fix(Vars.x_transformer_fi_44 ./ Vars.x_transformer_fi_13);
NumDims.x_transformer_fi_31 = max(NumDims.x_transformer_fi_44, NumDims.x_transformer_fi_13);

% Cast:
Vars.x_transformer_fi_3 = cast(int64(extractdata(Vars.x_transformer_fi_31)), 'like', Vars.x_transformer_fi_31);
NumDims.x_transformer_fi_3 = NumDims.x_transformer_fi_31;

% Cast:
Vars.x_transformer_fi_4 = cast(int64(extractdata(Vars.x_transformer_fi_3)), 'like', Vars.x_transformer_fi_3);
NumDims.x_transformer_fi_4 = NumDims.x_transformer_fi_3;

% Unsqueeze:
[shape, NumDims.x_transformer_fi_79] = prepareUnsqueezeArgs(Vars.x_transformer_fi_42, Vars.onnx__Unsqueeze_1340, NumDims.x_transformer_fi_42);
Vars.x_transformer_fi_79 = reshape(Vars.x_transformer_fi_42, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_fi_80] = prepareUnsqueezeArgs(Vars.x_transformer_fi_43, Vars.onnx__Unsqueeze_1342, NumDims.x_transformer_fi_43);
Vars.x_transformer_fi_80 = reshape(Vars.x_transformer_fi_43, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_fi_81] = prepareUnsqueezeArgs(Vars.x_transformer_fi_4, Vars.onnx__Unsqueeze_1346, NumDims.x_transformer_fi_4);
Vars.x_transformer_fi_81 = reshape(Vars.x_transformer_fi_4, shape);

% Concat:
[Vars.x_transformer_fi_7, NumDims.x_transformer_fi_7] = onnxConcat(0, {Vars.x_transformer_fi_79, Vars.x_transformer_fi_80, Vars.x_transformer_fi_14, Vars.x_transformer_fi_81}, [NumDims.x_transformer_fi_79, NumDims.x_transformer_fi_80, NumDims.x_transformer_fi_14, NumDims.x_transformer_fi_81]);

% Reshape:
[shape, NumDims.x_transformer_fi_51] = prepareReshapeArgs(Vars.x_transformer_fi_90, Vars.x_transformer_fi_7, NumDims.x_transformer_fi_90, 0);
Vars.x_transformer_fi_51 = reshape(Vars.x_transformer_fi_90, shape{:});

% Transpose:
[perm, NumDims.x_transformer_fi_68] = prepareTransposeArgs(Vars.TransposePerm1085, NumDims.x_transformer_fi_51);
if ~isempty(perm)
    Vars.x_transformer_fi_68 = permute(Vars.x_transformer_fi_51, perm);
end

% Transpose:
[perm, NumDims.x_transformer_fi_69] = prepareTransposeArgs(Vars.TransposePerm1086, NumDims.x_transformer_fi_50);
if ~isempty(perm)
    Vars.x_transformer_fi_69 = permute(Vars.x_transformer_fi_50, perm);
end

% MatMul:
[Vars.x_transformer_fi_48, NumDims.x_transformer_fi_48] = onnxMatMul(Vars.x_transformer_fi_71, Vars.x_transformer_fi_69, NumDims.x_transformer_fi_71, NumDims.x_transformer_fi_69);

% Div:
Vars.x_transformer_fi_32 = Vars.x_transformer_fi_48 ./ Vars.x_transformer_fi_15;
NumDims.x_transformer_fi_32 = max(NumDims.x_transformer_fi_48, NumDims.x_transformer_fi_15);

% Softmax:
[Vars.x_transformer_fi_67, NumDims.x_transformer_fi_67] = onnxSoftmax13(Vars.x_transformer_fi_32, -1, NumDims.x_transformer_fi_32);

% MatMul:
[Vars.x_transformer_fi_47, NumDims.x_transformer_fi_47] = onnxMatMul(Vars.x_transformer_fi_67, Vars.x_transformer_fi_68, NumDims.x_transformer_fi_67, NumDims.x_transformer_fi_68);

% Shape:
[Vars.x_transformer_fi_65, NumDims.x_transformer_fi_65] = onnxShape(Vars.x_transformer_fi_47, NumDims.x_transformer_fi_47);

% Gather:
[Vars.x_transformer_fi_45, NumDims.x_transformer_fi_45] = onnxGather(Vars.x_transformer_fi_65, Vars.x_transformer_fi_16, 0, NumDims.x_transformer_fi_65, NumDims.x_transformer_fi_16);

% Shape:
[Vars.x_transformer_fi_54, NumDims.x_transformer_fi_54] = onnxShape(Vars.x_transformer_fi_47, NumDims.x_transformer_fi_47);

% Gather:
[Vars.x_transformer_fi_34, NumDims.x_transformer_fi_34] = onnxGather(Vars.x_transformer_fi_54, Vars.x_transformer_fi_17, 0, NumDims.x_transformer_fi_54, NumDims.x_transformer_fi_17);

% Shape:
[Vars.x_transformer_fi_55, NumDims.x_transformer_fi_55] = onnxShape(Vars.x_transformer_fi_47, NumDims.x_transformer_fi_47);

% Gather:
[Vars.x_transformer_fi_35, NumDims.x_transformer_fi_35] = onnxGather(Vars.x_transformer_fi_55, Vars.x_transformer_fi_18, 0, NumDims.x_transformer_fi_55, NumDims.x_transformer_fi_18);

% Shape:
[Vars.x_transformer_fi_56, NumDims.x_transformer_fi_56] = onnxShape(Vars.x_transformer_fi_47, NumDims.x_transformer_fi_47);

% Gather:
[Vars.x_transformer_fi_36, NumDims.x_transformer_fi_36] = onnxGather(Vars.x_transformer_fi_56, Vars.x_transformer_fi_19, 0, NumDims.x_transformer_fi_56, NumDims.x_transformer_fi_19);

% Transpose:
[perm, NumDims.x_transformer_fi_70] = prepareTransposeArgs(Vars.TransposePerm1087, NumDims.x_transformer_fi_47);
if ~isempty(perm)
    Vars.x_transformer_fi_70 = permute(Vars.x_transformer_fi_47, perm);
end

% Mul:
Vars.x_transformer_fi_49 = Vars.x_transformer_fi_34 .* Vars.x_transformer_fi_36;
NumDims.x_transformer_fi_49 = max(NumDims.x_transformer_fi_34, NumDims.x_transformer_fi_36);

% Unsqueeze:
[shape, NumDims.x_transformer_fi_82] = prepareUnsqueezeArgs(Vars.x_transformer_fi_45, Vars.onnx__Unsqueeze_1371, NumDims.x_transformer_fi_45);
Vars.x_transformer_fi_82 = reshape(Vars.x_transformer_fi_45, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_fi_72] = prepareUnsqueezeArgs(Vars.x_transformer_fi_35, Vars.onnx__Unsqueeze_1373, NumDims.x_transformer_fi_35);
Vars.x_transformer_fi_72 = reshape(Vars.x_transformer_fi_35, shape);

% Unsqueeze:
[shape, NumDims.x_transformer_fi_73] = prepareUnsqueezeArgs(Vars.x_transformer_fi_49, Vars.onnx__Unsqueeze_1375, NumDims.x_transformer_fi_49);
Vars.x_transformer_fi_73 = reshape(Vars.x_transformer_fi_49, shape);

% Concat:
[Vars.x_transformer_fi_8, NumDims.x_transformer_fi_8] = onnxConcat(0, {Vars.x_transformer_fi_82, Vars.x_transformer_fi_72, Vars.x_transformer_fi_73}, [NumDims.x_transformer_fi_82, NumDims.x_transformer_fi_72, NumDims.x_transformer_fi_73]);

% Reshape:
[shape, NumDims.x_transformer_fi_52] = prepareReshapeArgs(Vars.x_transformer_fi_70, Vars.x_transformer_fi_8, NumDims.x_transformer_fi_70, 0);
Vars.x_transformer_fi_52 = reshape(Vars.x_transformer_fi_70, shape{:});

% MatMul:
[Vars.x_transformer_fi_87, NumDims.x_transformer_fi_87] = onnxMatMul(Vars.x_transformer_fi_52, Vars.onnx__MatMul_1630, NumDims.x_transformer_fi_52, NumDims.onnx__MatMul_1630);

% Add:
Vars.x_transformer_fi_86 = Vars.mask_decoder_tran_1 + Vars.x_transformer_fi_87;
NumDims.x_transformer_fi_86 = max(NumDims.mask_decoder_tran_1, NumDims.x_transformer_fi_87);

% Add:
Vars.x_transformer_Add_1_ = Vars.x_transformer_l_489 + Vars.x_transformer_fi_86;
NumDims.x_transformer_Add_1_ = max(NumDims.x_transformer_l_489, NumDims.x_transformer_fi_86);

% PLACEHOLDER FUNCTION FOR UNSUPPORTED OPERATOR (LayerNormalization):
[Vars.x_transformer_norm_f, NumDims.x_transformer_norm_f] = PLACEHOLDER(Vars.x_transformer_Add_1_, Vars.mask_decoder_tran_49, Vars.mask_decoder_tran_48);

% Gather:
[Vars.x_Gather_6_output_0, NumDims.x_Gather_6_output_0] = onnxGather(Vars.x_transformer_norm_f, Vars.x_Constant_9_output_, 1, NumDims.x_transformer_norm_f, NumDims.x_Constant_9_output_);

% Slice:
[Indices, NumDims.x_Slice_6_output_0] = prepareSliceArgs(Vars.x_transformer_norm_f, Vars.x_Constant_62_output, Vars.x_Constant_63_output, Vars.x_Constant_61_output, Vars.x_Constant_64_output, NumDims.x_transformer_norm_f);
Vars.x_Slice_6_output_0 = subsref(Vars.x_transformer_norm_f, Indices);

% Transpose:
[perm, NumDims.x_Transpose_output_0] = prepareTransposeArgs(Vars.TransposePerm1088, NumDims.x_transformer_l_490);
if ~isempty(perm)
    Vars.x_Transpose_output_0 = permute(Vars.x_transformer_l_490, perm);
end

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_5_output] = prepareUnsqueezeArgs(Vars.x_Gather_2_output_0, Vars.onnx__Unsqueeze_1396, NumDims.x_Gather_2_output_0);
Vars.x_Unsqueeze_5_output = reshape(Vars.x_Gather_2_output_0, shape);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_6_output] = prepareUnsqueezeArgs(Vars.x_Gather_3_output_0, Vars.onnx__Unsqueeze_1398, NumDims.x_Gather_3_output_0);
Vars.x_Unsqueeze_6_output = reshape(Vars.x_Gather_3_output_0, shape);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_7_output] = prepareUnsqueezeArgs(Vars.x_Gather_4_output_0, Vars.onnx__Unsqueeze_1400, NumDims.x_Gather_4_output_0);
Vars.x_Unsqueeze_7_output = reshape(Vars.x_Gather_4_output_0, shape);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_8_output] = prepareUnsqueezeArgs(Vars.x_Gather_5_output_0, Vars.onnx__Unsqueeze_1402, NumDims.x_Gather_5_output_0);
Vars.x_Unsqueeze_8_output = reshape(Vars.x_Gather_5_output_0, shape);

% Concat:
[Vars.x_Concat_9_output_0, NumDims.x_Concat_9_output_0] = onnxConcat(0, {Vars.x_Unsqueeze_5_output, Vars.x_Unsqueeze_6_output, Vars.x_Unsqueeze_7_output, Vars.x_Unsqueeze_8_output}, [NumDims.x_Unsqueeze_5_output, NumDims.x_Unsqueeze_6_output, NumDims.x_Unsqueeze_7_output, NumDims.x_Unsqueeze_8_output]);

% Reshape:
[shape, NumDims.x_Reshape_7_output_0] = prepareReshapeArgs(Vars.x_Transpose_output_0, Vars.x_Concat_9_output_0, NumDims.x_Transpose_output_0, 0);
Vars.x_Reshape_7_output_0 = reshape(Vars.x_Transpose_output_0, shape{:});

% Gather:
[Vars.x_Gather_7_output_0, NumDims.x_Gather_7_output_0] = onnxGather(Vars.x_Slice_6_output_0, Vars.x_Constant_9_output_, 1, NumDims.x_Slice_6_output_0, NumDims.x_Constant_9_output_);

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_2] = prepareGemmArgs(Vars.x_Gather_7_output_0, Vars.mask_decoder_outp_1, Vars.mask_decoder_output_, Vars.Gemmalpha1089, Vars.Gemmbeta1090, 0, 1, NumDims.mask_decoder_output_);
Vars.x_output_hypernet_2 = alpha*B*A + beta*C;

% Relu:
Vars.x_output_hypernet_1 = relu(Vars.x_output_hypernet_2);
NumDims.x_output_hypernet_1 = NumDims.x_output_hypernet_2;

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_3] = prepareGemmArgs(Vars.x_output_hypernet_1, Vars.mask_decoder_outp_3, Vars.mask_decoder_outp_2, Vars.Gemmalpha1091, Vars.Gemmbeta1092, 0, 1, NumDims.mask_decoder_outp_2);
Vars.x_output_hypernet_3 = alpha*B*A + beta*C;

% Relu:
Vars.x_output_hypernetwor = relu(Vars.x_output_hypernet_3);
NumDims.x_output_hypernetwor = NumDims.x_output_hypernet_3;

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_4] = prepareGemmArgs(Vars.x_output_hypernetwor, Vars.mask_decoder_outp_5, Vars.mask_decoder_outp_4, Vars.Gemmalpha1093, Vars.Gemmbeta1094, 0, 1, NumDims.mask_decoder_outp_4);
Vars.x_output_hypernet_4 = alpha*B*A + beta*C;

% Gather:
[Vars.x_Gather_8_output_0, NumDims.x_Gather_8_output_0] = onnxGather(Vars.x_Slice_6_output_0, Vars.x_Constant_output_0, 1, NumDims.x_Slice_6_output_0, NumDims.x_Constant_output_0);

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_7] = prepareGemmArgs(Vars.x_Gather_8_output_0, Vars.mask_decoder_outp_7, Vars.mask_decoder_outp_6, Vars.Gemmalpha1095, Vars.Gemmbeta1096, 0, 1, NumDims.mask_decoder_outp_6);
Vars.x_output_hypernet_7 = alpha*B*A + beta*C;

% Relu:
Vars.x_output_hypernet_6 = relu(Vars.x_output_hypernet_7);
NumDims.x_output_hypernet_6 = NumDims.x_output_hypernet_7;

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_8] = prepareGemmArgs(Vars.x_output_hypernet_6, Vars.mask_decoder_outp_9, Vars.mask_decoder_outp_8, Vars.Gemmalpha1097, Vars.Gemmbeta1098, 0, 1, NumDims.mask_decoder_outp_8);
Vars.x_output_hypernet_8 = alpha*B*A + beta*C;

% Relu:
Vars.x_output_hypernet_5 = relu(Vars.x_output_hypernet_8);
NumDims.x_output_hypernet_5 = NumDims.x_output_hypernet_8;

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_9] = prepareGemmArgs(Vars.x_output_hypernet_5, Vars.mask_decoder_outp_11, Vars.mask_decoder_outp_10, Vars.Gemmalpha1099, Vars.Gemmbeta1100, 0, 1, NumDims.mask_decoder_outp_10);
Vars.x_output_hypernet_9 = alpha*B*A + beta*C;

% Gather:
[Vars.x_Gather_9_output_0, NumDims.x_Gather_9_output_0] = onnxGather(Vars.x_Slice_6_output_0, Vars.x_Constant_12_output, 1, NumDims.x_Slice_6_output_0, NumDims.x_Constant_12_output);

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_12] = prepareGemmArgs(Vars.x_Gather_9_output_0, Vars.mask_decoder_outp_13, Vars.mask_decoder_outp_12, Vars.Gemmalpha1101, Vars.Gemmbeta1102, 0, 1, NumDims.mask_decoder_outp_12);
Vars.x_output_hypernet_12 = alpha*B*A + beta*C;

% Relu:
Vars.x_output_hypernet_11 = relu(Vars.x_output_hypernet_12);
NumDims.x_output_hypernet_11 = NumDims.x_output_hypernet_12;

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_13] = prepareGemmArgs(Vars.x_output_hypernet_11, Vars.mask_decoder_outp_15, Vars.mask_decoder_outp_14, Vars.Gemmalpha1103, Vars.Gemmbeta1104, 0, 1, NumDims.mask_decoder_outp_14);
Vars.x_output_hypernet_13 = alpha*B*A + beta*C;

% Relu:
Vars.x_output_hypernet_10 = relu(Vars.x_output_hypernet_13);
NumDims.x_output_hypernet_10 = NumDims.x_output_hypernet_13;

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_14] = prepareGemmArgs(Vars.x_output_hypernet_10, Vars.mask_decoder_outp_17, Vars.mask_decoder_outp_16, Vars.Gemmalpha1105, Vars.Gemmbeta1106, 0, 1, NumDims.mask_decoder_outp_16);
Vars.x_output_hypernet_14 = alpha*B*A + beta*C;

% Gather:
[Vars.x_Gather_10_output_0, NumDims.x_Gather_10_output_0] = onnxGather(Vars.x_Slice_6_output_0, Vars.x_Constant_14_output, 1, NumDims.x_Slice_6_output_0, NumDims.x_Constant_14_output);

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_17] = prepareGemmArgs(Vars.x_Gather_10_output_0, Vars.mask_decoder_outp_19, Vars.mask_decoder_outp_18, Vars.Gemmalpha1107, Vars.Gemmbeta1108, 0, 1, NumDims.mask_decoder_outp_18);
Vars.x_output_hypernet_17 = alpha*B*A + beta*C;

% Relu:
Vars.x_output_hypernet_16 = relu(Vars.x_output_hypernet_17);
NumDims.x_output_hypernet_16 = NumDims.x_output_hypernet_17;

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_18] = prepareGemmArgs(Vars.x_output_hypernet_16, Vars.mask_decoder_outp_21, Vars.mask_decoder_outp_20, Vars.Gemmalpha1109, Vars.Gemmbeta1110, 0, 1, NumDims.mask_decoder_outp_20);
Vars.x_output_hypernet_18 = alpha*B*A + beta*C;

% Relu:
Vars.x_output_hypernet_15 = relu(Vars.x_output_hypernet_18);
NumDims.x_output_hypernet_15 = NumDims.x_output_hypernet_18;

% Gemm:
[A, B, C, alpha, beta, NumDims.x_output_hypernet_19] = prepareGemmArgs(Vars.x_output_hypernet_15, Vars.mask_decoder_outp_23, Vars.mask_decoder_outp_22, Vars.Gemmalpha1111, Vars.Gemmbeta1112, 0, 1, NumDims.mask_decoder_outp_22);
Vars.x_output_hypernet_19 = alpha*B*A + beta*C;

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_9_output] = prepareUnsqueezeArgs(Vars.x_output_hypernet_4, Vars.x_Constant_65_output, NumDims.x_output_hypernet_4);
Vars.x_Unsqueeze_9_output = reshape(Vars.x_output_hypernet_4, shape);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_10_outpu] = prepareUnsqueezeArgs(Vars.x_output_hypernet_9, Vars.x_Constant_66_output, NumDims.x_output_hypernet_9);
Vars.x_Unsqueeze_10_outpu = reshape(Vars.x_output_hypernet_9, shape);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_11_outpu] = prepareUnsqueezeArgs(Vars.x_output_hypernet_14, Vars.x_Constant_67_output, NumDims.x_output_hypernet_14);
Vars.x_Unsqueeze_11_outpu = reshape(Vars.x_output_hypernet_14, shape);

% Unsqueeze:
[shape, NumDims.x_Unsqueeze_12_outpu] = prepareUnsqueezeArgs(Vars.x_output_hypernet_19, Vars.x_Constant_68_output, NumDims.x_output_hypernet_19);
Vars.x_Unsqueeze_12_outpu = reshape(Vars.x_output_hypernet_19, shape);

% Concat:
[Vars.x_Concat_10_output_0, NumDims.x_Concat_10_output_0] = onnxConcat(1, {Vars.x_Unsqueeze_9_output, Vars.x_Unsqueeze_10_outpu, Vars.x_Unsqueeze_11_outpu, Vars.x_Unsqueeze_12_outpu}, [NumDims.x_Unsqueeze_9_output, NumDims.x_Unsqueeze_10_outpu, NumDims.x_Unsqueeze_11_outpu, NumDims.x_Unsqueeze_12_outpu]);

% Gemm:
[A, B, C, alpha, beta, NumDims.x_iou_prediction_h_2] = prepareGemmArgs(Vars.x_Gather_6_output_0, Vars.mask_decoder_iou_p_1, Vars.mask_decoder_iou_pre, Vars.Gemmalpha1113, Vars.Gemmbeta1114, 0, 1, NumDims.mask_decoder_iou_pre);
Vars.x_iou_prediction_h_2 = alpha*B*A + beta*C;

% Relu:
Vars.x_iou_prediction_h_1 = relu(Vars.x_iou_prediction_h_2);
NumDims.x_iou_prediction_h_1 = NumDims.x_iou_prediction_h_2;

% Gemm:
[A, B, C, alpha, beta, NumDims.x_iou_prediction_h_3] = prepareGemmArgs(Vars.x_iou_prediction_h_1, Vars.mask_decoder_iou_p_3, Vars.mask_decoder_iou_p_2, Vars.Gemmalpha1115, Vars.Gemmbeta1116, 0, 1, NumDims.mask_decoder_iou_p_2);
Vars.x_iou_prediction_h_3 = alpha*B*A + beta*C;

% Relu:
Vars.x_iou_prediction_hea = relu(Vars.x_iou_prediction_h_3);
NumDims.x_iou_prediction_hea = NumDims.x_iou_prediction_h_3;

% Gemm:
[A, B, C, alpha, beta, NumDims.iou_predictions] = prepareGemmArgs(Vars.x_iou_prediction_hea, Vars.mask_decoder_iou_p_5, Vars.mask_decoder_iou_p_4, Vars.Gemmalpha1117, Vars.Gemmbeta1118, 0, 1, NumDims.mask_decoder_iou_p_4);
Vars.iou_predictions = alpha*B*A + beta*C;

% Set graph output arguments from Vars and NumDims:
iou_predictions = Vars.iou_predictions;
iou_predictionsNumDims1124 = NumDims.iou_predictions;
x_Reshape_7_output_0 = Vars.x_Reshape_7_output_0;
x_Reshape_7_output_0NumDims1125 = NumDims.x_Reshape_7_output_0;
x_Concat_10_output_0 = Vars.x_Concat_10_output_0;
x_Concat_10_output_0NumDims1126 = NumDims.x_Concat_10_output_0;
% Set output state from Vars:
state = updateStruct(state, Vars);
end

function [inputDataPerms, outputDataPerms, Training] = parseInputs(point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, numDataOutputs, params, varargin)
% Function to validate inputs to Unsqueeze_To_ReshapeFcn:
p = inputParser;
isValidArrayInput = @(x)isnumeric(x) || isstring(x);
isValidONNXParameters = @(x)isa(x, 'ONNXParameters');
addRequired(p, 'point_coords', isValidArrayInput);
addRequired(p, 'point_labels', isValidArrayInput);
addRequired(p, 'has_mask_input', isValidArrayInput);
addRequired(p, 'x_mask_downscalin_40', isValidArrayInput);
addRequired(p, 'image_embeddings', isValidArrayInput);
addRequired(p, 'params', isValidONNXParameters);
addParameter(p, 'InputDataPermutation', 'auto');
addParameter(p, 'OutputDataPermutation', 'auto');
addParameter(p, 'Training', false);
parse(p, point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, params, varargin{:});
inputDataPerms = p.Results.InputDataPermutation;
outputDataPerms = p.Results.OutputDataPermutation;
Training = p.Results.Training;
if isnumeric(inputDataPerms)
    inputDataPerms = {inputDataPerms};
end
if isstring(inputDataPerms) && isscalar(inputDataPerms) || ischar(inputDataPerms)
    inputDataPerms = repmat({inputDataPerms},1,5);
end
if isnumeric(outputDataPerms)
    outputDataPerms = {outputDataPerms};
end
if isstring(outputDataPerms) && isscalar(outputDataPerms) || ischar(outputDataPerms)
    outputDataPerms = repmat({outputDataPerms},1,numDataOutputs);
end
end

function [point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, Training, outputDataPerms, anyDlarrayInputs] = preprocessInput(point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, params, varargin)
% Parse input arguments
[inputDataPerms, outputDataPerms, Training] = parseInputs(point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings, 3, params, varargin{:});
anyDlarrayInputs = any(cellfun(@(x)isa(x, 'dlarray'), {point_coords, point_labels, has_mask_input, x_mask_downscalin_40, image_embeddings}));
% Make the input variables into unlabelled dlarrays:
point_coords = makeUnlabeledDlarray(point_coords);
point_labels = makeUnlabeledDlarray(point_labels);
has_mask_input = makeUnlabeledDlarray(has_mask_input);
x_mask_downscalin_40 = makeUnlabeledDlarray(x_mask_downscalin_40);
image_embeddings = makeUnlabeledDlarray(image_embeddings);
% Permute inputs if requested:
point_coords = permuteInputVar(point_coords, inputDataPerms{1}, 3);
point_labels = permuteInputVar(point_labels, inputDataPerms{2}, 2);
has_mask_input = permuteInputVar(has_mask_input, inputDataPerms{3}, 1);
x_mask_downscalin_40 = permuteInputVar(x_mask_downscalin_40, inputDataPerms{4}, 4);
image_embeddings = permuteInputVar(image_embeddings, inputDataPerms{5}, 4);
end

function [iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0] = postprocessOutput(iou_predictions, x_Reshape_7_output_0, x_Concat_10_output_0, outputDataPerms, anyDlarrayInputs, Training, varargin)
% Set output type:
if ~anyDlarrayInputs && ~Training
    if isdlarray(iou_predictions)
        iou_predictions = extractdata(iou_predictions);
    end
    if isdlarray(x_Reshape_7_output_0)
        x_Reshape_7_output_0 = extractdata(x_Reshape_7_output_0);
    end
    if isdlarray(x_Concat_10_output_0)
        x_Concat_10_output_0 = extractdata(x_Concat_10_output_0);
    end
end
% Permute outputs if requested:
iou_predictions = permuteOutputVar(iou_predictions, outputDataPerms{1}, 2);
x_Reshape_7_output_0 = permuteOutputVar(x_Reshape_7_output_0, outputDataPerms{2}, 4);
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

function [Y, numDimsY] = onnxConstantOfShape(value, ONNXShape)
% Returns a DLT tensor with the reverse of the ONNXShape.
DLTShape = fliplr(extractdata(ONNXShape(:)'));
numDimsY = numel(DLTShape);
switch numDimsY
    case 0
        % If shape is empty, output is a scalar
        Y = value;
    case 1
        Y = ones(DLTShape,1) .* value;
    otherwise
        Y = ones(DLTShape) .* value;
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

function [B, numDimsB] = onnxOneHot(ONNXIndices, Depth, Values, ONNXAxis, numDimsA)
% Implements the ONNX OneHot operator.

Depth       = extractdata(Depth);
Values      = extractdata(Values);
DLTIndices  = extractdata(ONNXIndices) + 1;   % ONNXIndices is origin-0.
% First handle negative axes:
% ONNXaxis is origin-0. axis=-1 means add the new dimension at the end.
if ONNXAxis < 0
    ONNXAxis = ONNXAxis + numDimsA+1;
end
DLTAxis = numDimsA+1 - ONNXAxis;     % DLT location of the new axis to be added.
% Prepare call to onehotencode:
% Add a singleton dimension in the desired location
sz          = size(DLTIndices, 1:max(2,numDimsA));
shape       = [sz(1:DLTAxis-1), 1, sz(DLTAxis:end)];
DLTIndices  = reshape(DLTIndices, shape);
% encode
B = onehotencode(DLTIndices, DLTAxis, 'double', 'ClassNames', 1:Depth);
% Set nondefault on and off values
if ~isequal(Values, [0;1])
    zeroLocs = B==0;
    B(zeroLocs) = Values(1);
    B(~zeroLocs) = Values(2);
end
B = dlarray(B);
numDimsB = numDimsA+1;
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

function [Y, numDimsY] = onnxSoftmax13(X, ONNXaxis, numDimsX)
% Implements the ONNX Softmax function:
% Softmax(input, axis) = Exp(input) / ReduceSum(Exp(input), axis=axis, keepdims=1)
% The input is constrained to floating point types.

if ONNXaxis < 0
    ONNXaxis = ONNXaxis + numDimsX;
end
DLTaxis = numDimsX - ONNXaxis;

X = X - max(X, [], DLTaxis); % Subtract max(X) for numerical stability
expX = exp(X);
dims = prepareReduceArgs(ONNXaxis, numDimsX);
Y = expX ./ sum(expX, dims);
numDimsY = numDimsX;

end
function [output, numDimsOutput] = onnxWhere(condition, X, Y, numDimsCondition, numDimsX, numDimsY)
bigz = zeros(size(condition + X + Y));      % broadcast
condition = condition + bigz;
X = X + bigz;
output = Y + bigz;
output(condition==1) = X(condition==1);
numDimsOutput = max([numDimsCondition, numDimsX, numDimsY]);
end

function [shape, numDimsY] = prepareExpandArgs(ONNXShape)
% Prepares arguments for implementing the ONNX Expand operator

% Broadcast X to ONNXShape. The shape of X must be compatible with ONNXShape.
ONNXShape = extractdata(ONNXShape);
shape = fliplr(ONNXShape(:)');
if numel(shape) < 2
    shape = [shape ones(1, 2-numel(shape))];
end
numDimsY = numel(ONNXShape);
end

function [A, B, C, alpha, beta, numDimsY] = prepareGemmArgs(A, B, C, alpha, beta, transA, transB, numDimsC)
% Prepares arguments for implementing the ONNX Gemm operator
if transA
    A = A';
end
if transB
    B = B';
end
if numDimsC < 2
    C = C(:);   % C can be broadcast to [N M]. Make C a col vector ([N 1])
end
numDimsY = 2;
% Y=B*A because we want (AB)'=B'A', and B and A are already transposed.
end

function dims = prepareReduceArgs(ONNXAxes, numDimsX)
% Prepares arguments for implementing the ONNX Reduce operator
if isempty(ONNXAxes)
    ONNXAxes = 0:numDimsX-1;   % All axes
end
ONNXAxes(ONNXAxes<0) = ONNXAxes(ONNXAxes<0) + numDimsX;
dims = numDimsX - ONNXAxes;
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

function [sz, numDimsY] = prepareTileArgs(ONNXRepeats)
% Prepares arguments for implementing the ONNX Tile operator.  The
% generated code looks like this:
%
% [sz, NumDims.Y] = prepareTileArgs(Vars.repeats);
% Vars.Y = repmat(Vars.X, sz)

ONNXRepeats = extractdata(ONNXRepeats(:)');     % Make repeats a row.
if isscalar(ONNXRepeats)
    % If scalar, just repmat a 1D vector into a longer 1D vector
    sz = [ONNXRepeats 1];
else
    sz = fliplr(ONNXRepeats);
end
numDimsY = numel(ONNXRepeats);
end

function [perm, numDimsA] = prepareTransposeArgs(ONNXPerm, numDimsA)
% Prepares arguments for implementing the ONNX Transpose operator
if numDimsA <= 1        % Tensors of numDims 0 or 1 are unchanged by ONNX Transpose.
    perm = [];
else
    if isempty(ONNXPerm)        % Empty ONNXPerm means reverse the dimensions.
        perm = numDimsA:-1:1;
    else
        perm = numDimsA-flip(ONNXPerm);
    end
end
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
