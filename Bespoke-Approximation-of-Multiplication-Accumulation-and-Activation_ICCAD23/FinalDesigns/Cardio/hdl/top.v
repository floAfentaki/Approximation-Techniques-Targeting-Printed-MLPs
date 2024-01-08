//weights: [[[-16, 64, -16, 64, 64, -16, -64, -64, 64, -64, 64, 64, 16, 16, 16, 8, 32, 32, 16, -64, 8], [64, -64, 64, -64, 2, 8, 64, 64, -64, 64, 8, 16, -16, 32, 8, -16, -1, 8, 8, 64, -16], [-4, -64, 16, 64, 32, 16, 64, 64, 64, -64, -16, 8, -64, 8, 8, 32, -32, -64, -64, 64, -16]], [[64, -64, -64], [-16, 64, -64], [-64, 64, 64]]]
//intercepts: [[32, -2, 32], [64, -32, -64]]
module top (inp, out);
input [83:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_0;
    assign n_0_0_po_0 = (inp[3:0]) << 4;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_1;
    assign n_0_0_po_1 = (inp[7:4]) << 6;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_2;
    assign n_0_0_po_2 = (inp[11:8]) << 4;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_3;
    assign n_0_0_po_3 = (inp[15:12]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_4;
    assign n_0_0_po_4 = (inp[19:16]) << 6;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_5;
    assign n_0_0_po_5 = (inp[23:20]) << 4;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_6;
    assign n_0_0_po_6 = (inp[27:24]) << 6;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_7;
    assign n_0_0_po_7 = (inp[31:28]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_8;
    assign n_0_0_po_8 = (inp[35:32]) << 6;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_9;
    assign n_0_0_po_9 = (inp[39:36]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_10;
    assign n_0_0_po_10 = (inp[43:40]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_11;
    assign n_0_0_po_11 = (inp[47:44]) << 6;

    //weight 16 : 5'b10000
    wire [8:0] n_0_0_po_12;
    assign n_0_0_po_12 = (inp[51:48]) << 4;

    //weight 16 : 5'b10000
    wire [8:0] n_0_0_po_13;
    assign n_0_0_po_13 = (inp[55:52]) << 4;

    //weight 16 : 5'b10000
    wire [8:0] n_0_0_po_14;
    assign n_0_0_po_14 = (inp[59:56]) << 4;

    //weight 8 : 4'b1000
    wire [7:0] n_0_0_po_15;
    assign n_0_0_po_15 = (inp[63:60]) << 3;

    //weight 32 : 6'b100000
    wire [9:0] n_0_0_po_16;
    assign n_0_0_po_16 = (inp[67:64]) << 5;

    //weight 32 : 6'b100000
    wire [9:0] n_0_0_po_17;
    assign n_0_0_po_17 = (inp[71:68]) << 5;

    //weight 16 : 5'b10000
    wire [8:0] n_0_0_po_18;
    assign n_0_0_po_18 = (inp[75:72]) << 4;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_19;
    assign n_0_0_po_19 = (inp[79:76]) << 6;

    //weight 8 : 4'b1000
    wire [7:0] n_0_0_po_20;
    assign n_0_0_po_20 = (inp[83:80]) << 3;

    //accumulate positive/negative subproducts
    wire [14:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = 10'b1000000000 + n_0_0_po_1 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_8 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_14 + n_0_0_po_15 + n_0_0_po_16 + n_0_0_po_17 + n_0_0_po_18 + n_0_0_po_20;
    wire [14:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_0 + n_0_0_po_2 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_9 + n_0_0_po_19;
    wire signed [15:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) - $signed({1'b0,n_0_0_sum_neg});

    wire signed [15:0] n_0_0_sum_f;
    assign n_0_0_sum_f = $signed(n_0_0_sum);
    //relu
    wire [7:0] n_0_0, n_0_0_qrelu;
    DW01_satrnd #(15, 12, 5) USR_n_0_0 ( .din(n_0_0_sum_f[14:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_0_qrelu));
    assign n_0_0 = (n_0_0_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_0_qrelu);

// layer: 0 - neuron: 1
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_0;
    assign n_0_1_po_0 = (inp[3:0]) << 6;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_1;
    assign n_0_1_po_1 = (inp[7:4]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_2;
    assign n_0_1_po_2 = (inp[11:8]) << 6;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_3;
    assign n_0_1_po_3 = (inp[15:12]) << 6;

    //weight 2 : 2'b10
    wire [5:0] n_0_1_po_4;
    assign n_0_1_po_4 = (inp[19:16]) << 1;

    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_5;
    assign n_0_1_po_5 = (inp[23:20]) << 3;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_6;
    assign n_0_1_po_6 = (inp[27:24]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_7;
    assign n_0_1_po_7 = (inp[31:28]) << 6;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_8;
    assign n_0_1_po_8 = (inp[35:32]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_9;
    assign n_0_1_po_9 = (inp[39:36]) << 6;

    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_10;
    assign n_0_1_po_10 = (inp[43:40]) << 3;

    //weight 16 : 5'b10000
    wire [8:0] n_0_1_po_11;
    assign n_0_1_po_11 = (inp[47:44]) << 4;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_1_po_12;
    assign n_0_1_po_12 = (inp[51:48]) << 4;

    //weight 32 : 6'b100000
    wire [9:0] n_0_1_po_13;
    assign n_0_1_po_13 = (inp[55:52]) << 5;

    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_14;
    assign n_0_1_po_14 = (inp[59:56]) << 3;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_1_po_15;
    assign n_0_1_po_15 = (inp[63:60]) << 4;

    //weight abs(-1) : 1'b1
    wire [4:0] n_0_1_po_16;
    assign n_0_1_po_16 = (inp[67:64]);

    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_17;
    assign n_0_1_po_17 = (inp[71:68]) << 3;

    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_18;
    assign n_0_1_po_18 = (inp[75:72]) << 3;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_19;
    assign n_0_1_po_19 = (inp[79:76]) << 6;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_1_po_20;
    assign n_0_1_po_20 = (inp[83:80]) << 4;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = n_0_1_po_0 + n_0_1_po_2 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_9 + n_0_1_po_10 + n_0_1_po_11 + n_0_1_po_13 + n_0_1_po_14 + n_0_1_po_17 + n_0_1_po_18 + n_0_1_po_19;
    wire [13:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = 6'b100000 + n_0_1_po_1 + n_0_1_po_3 + n_0_1_po_8 + n_0_1_po_12 + n_0_1_po_15 + n_0_1_po_16 + n_0_1_po_20;
    wire signed [14:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) - $signed({1'b0,n_0_1_sum_neg});

    wire signed [14:0] n_0_1_sum_f;
    assign n_0_1_sum_f = $signed(n_0_1_sum);
    //relu
    wire [7:0] n_0_1, n_0_1_qrelu;
    DW01_satrnd #(14, 12, 5) USR_n_0_1 ( .din(n_0_1_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_1_qrelu));
    assign n_0_1 = (n_0_1_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_1_qrelu);

// layer: 0 - neuron: 2
    //weight abs(-4) : 3'b100
    wire [6:0] n_0_2_po_0;
    assign n_0_2_po_0 = (inp[3:0]) << 2;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_1;
    assign n_0_2_po_1 = (inp[7:4]) << 6;

    //weight 16 : 5'b10000
    wire [8:0] n_0_2_po_2;
    assign n_0_2_po_2 = (inp[11:8]) << 4;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_3;
    assign n_0_2_po_3 = (inp[15:12]) << 6;

    //weight 32 : 6'b100000
    wire [9:0] n_0_2_po_4;
    assign n_0_2_po_4 = (inp[19:16]) << 5;

    //weight 16 : 5'b10000
    wire [8:0] n_0_2_po_5;
    assign n_0_2_po_5 = (inp[23:20]) << 4;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_6;
    assign n_0_2_po_6 = (inp[27:24]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_7;
    assign n_0_2_po_7 = (inp[31:28]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_8;
    assign n_0_2_po_8 = (inp[35:32]) << 6;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_9;
    assign n_0_2_po_9 = (inp[39:36]) << 6;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_2_po_10;
    assign n_0_2_po_10 = (inp[43:40]) << 4;

    //weight 8 : 4'b1000
    wire [7:0] n_0_2_po_11;
    assign n_0_2_po_11 = (inp[47:44]) << 3;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_12;
    assign n_0_2_po_12 = (inp[51:48]) << 6;

    //weight 8 : 4'b1000
    wire [7:0] n_0_2_po_13;
    assign n_0_2_po_13 = (inp[55:52]) << 3;

    //weight 8 : 4'b1000
    wire [7:0] n_0_2_po_14;
    assign n_0_2_po_14 = (inp[59:56]) << 3;

    //weight 32 : 6'b100000
    wire [9:0] n_0_2_po_15;
    assign n_0_2_po_15 = (inp[63:60]) << 5;

    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_2_po_16;
    assign n_0_2_po_16 = (inp[67:64]) << 5;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_17;
    assign n_0_2_po_17 = (inp[71:68]) << 6;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_18;
    assign n_0_2_po_18 = (inp[75:72]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_19;
    assign n_0_2_po_19 = (inp[79:76]) << 6;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_2_po_20;
    assign n_0_2_po_20 = (inp[83:80]) << 4;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = 10'b1000000000 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_11 + n_0_2_po_13 + n_0_2_po_14 + n_0_2_po_15 + n_0_2_po_19;
    wire [13:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_9 + n_0_2_po_10 + n_0_2_po_12 + n_0_2_po_16 + n_0_2_po_17 + n_0_2_po_18 + n_0_2_po_20;
    wire signed [14:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) - $signed({1'b0,n_0_2_sum_neg});

    wire signed [14:0] n_0_2_sum_f;
    assign n_0_2_sum_f = $signed(n_0_2_sum);
    //relu
    wire [7:0] n_0_2, n_0_2_qrelu;
    DW01_satrnd #(14, 12, 5) USR_n_0_2 ( .din(n_0_2_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_2_qrelu));
    assign n_0_2 = (n_0_2_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_2_qrelu);

// layer: 1 - neuron: 0
    //weight 64 : 7'b1000000
    wire [14:0] n_1_0_po_0;
    assign n_1_0_po_0 = (n_0_0) << 6;

    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_0_po_1;
    assign n_1_0_po_1 = (n_0_1) << 6;

    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_0_po_2;
    assign n_1_0_po_2 = (n_0_2) << 6;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = 12'b100000000000 + n_1_0_po_0;
    wire [15:0] n_1_0_sum_neg;
    assign n_1_0_sum_neg = n_1_0_po_1 + n_1_0_po_2;
    wire signed [16:0] n_1_0_sum;
    assign n_1_0_sum = $signed({1'b0,n_1_0_sum_pos}) - $signed({1'b0,n_1_0_sum_neg});

    wire signed [16:0] n_1_0_sum_f;
    assign n_1_0_sum_f = $signed(n_1_0_sum);
    //relu
    wire [15:0] n_1_0;
    assign n_1_0 = (n_1_0_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_0_sum_f);

// layer: 1 - neuron: 1
    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_1_po_0;
    assign n_1_1_po_0 = (n_0_0) << 4;

    //weight 64 : 7'b1000000
    wire [14:0] n_1_1_po_1;
    assign n_1_1_po_1 = (n_0_1) << 6;

    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_1_po_2;
    assign n_1_1_po_2 = (n_0_2) << 6;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = n_1_1_po_1;
    wire [15:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = 11'b10000000000 + n_1_1_po_0 + n_1_1_po_2;
    wire signed [16:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) - $signed({1'b0,n_1_1_sum_neg});

    wire signed [16:0] n_1_1_sum_f;
    assign n_1_1_sum_f = $signed(n_1_1_sum);
    //relu
    wire [15:0] n_1_1;
    assign n_1_1 = (n_1_1_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_1_sum_f);

// layer: 1 - neuron: 2
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_2_po_0;
    assign n_1_2_po_0 = (n_0_0) << 6;

    //weight 64 : 7'b1000000
    wire [14:0] n_1_2_po_1;
    assign n_1_2_po_1 = (n_0_1) << 6;

    //weight 64 : 7'b1000000
    wire [14:0] n_1_2_po_2;
    assign n_1_2_po_2 = (n_0_2) << 6;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = n_1_2_po_1 + n_1_2_po_2;
    wire [15:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = 12'b100000000000 + n_1_2_po_0;
    wire signed [16:0] n_1_2_sum;
    assign n_1_2_sum = $signed({1'b0,n_1_2_sum_pos}) - $signed({1'b0,n_1_2_sum_neg});

    wire signed [16:0] n_1_2_sum_f;
    assign n_1_2_sum_f = $signed(n_1_2_sum);
    //relu
    wire [15:0] n_1_2;
    assign n_1_2 = (n_1_2_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_2_sum_f);

// argmax: 3 classes, need 2 bits
// argmax inp: n_1_0, n_1_1, n_1_2
    //comp level 0
    wire cmp_0_0;
    wire [15:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    //current mask = 0000010000000000
    assign {cmp_0_0} = ( {n_1_0[10]} >= {n_1_1[10]} );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    wire cmp_0_2;
    wire [15:0] argmax_val_0_2;
    wire [1:0] argmax_idx_0_2;
    assign {cmp_0_2} = 1;
    assign {argmax_val_0_2} =  n_1_2;
    assign {argmax_idx_0_2} =  2'b10;

    //comp level 1
    wire cmp_1_0;
    wire [15:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    //current mask = 0000011100000000
    assign {cmp_1_0} = ( {argmax_val_0_0[10], argmax_val_0_0[9], argmax_val_0_0[8]} >= {argmax_val_0_2[10], argmax_val_0_2[9], argmax_val_0_2[8]} );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    assign out = argmax_idx_1_0;

endmodule
