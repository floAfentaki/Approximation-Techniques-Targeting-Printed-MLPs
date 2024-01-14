//weights: [[[-16, 64, -16, 64, 64, -16, -128, -64, 64, -64, 64, 64, 2, 16, -32, 8, 32, 32, 16, -64, 8], [64, -128, 64, -32, 0, 8, 128, 64, -64, 64, 8, 16, -16, 32, 8, -16, -2, 8, 8, 64, -16], [-4, -64, 16, 64, 32, 16, 128, 64, 64, -64, 64, 4, -64, 8, 8, 0, 0, -64, -64, 64, -4]], [[64, -64, -64], [-16, 64, -64], [-64, 64, 0]]]
//intercepts: [[32, -2, 32], [64, -32, -64]]
module top (inp, out);
input [83:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    wire [3:0] n_0_0_po_0_a;
    assign n_0_0_po_0_a = inp[3:0];
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_0;
    assign n_0_0_po_0 = (4'd0) << 4;

    wire [3:0] n_0_0_po_1_a;
    assign n_0_0_po_1_a = inp[7:4];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_1;
    assign n_0_0_po_1 = (4'd0) << 6;

    wire [3:0] n_0_0_po_2_a;
    assign n_0_0_po_2_a = inp[11:8];
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_2;
    assign n_0_0_po_2 = (4'd0) << 4;

    wire [3:0] n_0_0_po_3_a;
    assign n_0_0_po_3_a = inp[15:12];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_3;
    assign n_0_0_po_3 = (4'd0) << 6;

    wire [3:0] n_0_0_po_4_a;
    assign n_0_0_po_4_a = inp[19:16];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_4;
    assign n_0_0_po_4 = (4'd0) << 6;

    wire [3:0] n_0_0_po_5_a;
    assign n_0_0_po_5_a = inp[23:20];
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_5;
    assign n_0_0_po_5 = (4'd0) << 4;

    wire [3:0] n_0_0_po_6_a;
    assign n_0_0_po_6_a = inp[27:24];
    //mask 4 : [2]
    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_0_po_6;
    assign n_0_0_po_6 = ((n_0_0_po_6_a[2] << 2)) << 7;

    wire [3:0] n_0_0_po_7_a;
    assign n_0_0_po_7_a = inp[31:28];
    //mask 7 : [0, 1, 2]
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_7;
    assign n_0_0_po_7 = (n_0_0_po_7_a[0] + (n_0_0_po_7_a[1] << 1) + (n_0_0_po_7_a[2] << 2)) << 6;

    wire [3:0] n_0_0_po_8_a;
    assign n_0_0_po_8_a = inp[35:32];
    //mask 7 : [0, 1, 2]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_8;
    assign n_0_0_po_8 = (n_0_0_po_8_a[0] + (n_0_0_po_8_a[1] << 1) + (n_0_0_po_8_a[2] << 2)) << 6;

    wire [3:0] n_0_0_po_9_a;
    assign n_0_0_po_9_a = inp[39:36];
    //mask 1 : [0]
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_9;
    assign n_0_0_po_9 = (n_0_0_po_9_a[0]) << 6;

    wire [3:0] n_0_0_po_10_a;
    assign n_0_0_po_10_a = inp[43:40];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_10;
    assign n_0_0_po_10 = (4'd0) << 6;

    wire [3:0] n_0_0_po_11_a;
    assign n_0_0_po_11_a = inp[47:44];
    //mask 1 : [0]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_11;
    assign n_0_0_po_11 = (n_0_0_po_11_a[0]) << 6;

    wire [3:0] n_0_0_po_12_a;
    assign n_0_0_po_12_a = inp[51:48];
    //mask 0 : []
    //weight 2 : 2'b10
    wire [5:0] n_0_0_po_12;
    assign n_0_0_po_12 = (4'd0) << 1;

    wire [3:0] n_0_0_po_13_a;
    assign n_0_0_po_13_a = inp[55:52];
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [8:0] n_0_0_po_13;
    assign n_0_0_po_13 = (4'd0) << 4;

    wire [3:0] n_0_0_po_14_a;
    assign n_0_0_po_14_a = inp[59:56];
    //mask 0 : []
    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_0_po_14;
    assign n_0_0_po_14 = (4'd0) << 5;

    wire [3:0] n_0_0_po_15_a;
    assign n_0_0_po_15_a = inp[63:60];
    //mask 0 : []
    //weight 8 : 4'b1000
    wire [7:0] n_0_0_po_15;
    assign n_0_0_po_15 = (4'd0) << 3;

    wire [3:0] n_0_0_po_16_a;
    assign n_0_0_po_16_a = inp[67:64];
    //mask 0 : []
    //weight 32 : 6'b100000
    wire [9:0] n_0_0_po_16;
    assign n_0_0_po_16 = (4'd0) << 5;

    wire [3:0] n_0_0_po_17_a;
    assign n_0_0_po_17_a = inp[71:68];
    //mask 0 : []
    //weight 32 : 6'b100000
    wire [9:0] n_0_0_po_17;
    assign n_0_0_po_17 = (4'd0) << 5;

    wire [3:0] n_0_0_po_18_a;
    assign n_0_0_po_18_a = inp[75:72];
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [8:0] n_0_0_po_18;
    assign n_0_0_po_18 = (4'd0) << 4;

    wire [3:0] n_0_0_po_19_a;
    assign n_0_0_po_19_a = inp[79:76];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_19;
    assign n_0_0_po_19 = (4'd0) << 6;

    wire [3:0] n_0_0_po_20_a;
    assign n_0_0_po_20_a = inp[83:80];
    //mask 0 : []
    //weight 8 : 4'b1000
    wire [7:0] n_0_0_po_20;
    assign n_0_0_po_20 = (4'd0) << 3;

    //accumulate positive/negative subproducts
    wire [14:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = 10'b1000000000 + n_0_0_po_1 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_8 + n_0_0_po_10 + n_0_0_po_11 + n_0_0_po_12 + n_0_0_po_13 + n_0_0_po_15 + n_0_0_po_16 + n_0_0_po_17 + n_0_0_po_18 + n_0_0_po_20;
    wire [14:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_0 + n_0_0_po_2 + n_0_0_po_5 + n_0_0_po_6 + n_0_0_po_7 + n_0_0_po_9 + n_0_0_po_14 + n_0_0_po_19;
    wire signed [15:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) - $signed({1'b0,n_0_0_sum_neg});

    wire signed [15:0] n_0_0_sum_f;
    assign n_0_0_sum_f = $signed(n_0_0_sum);
    //relu
    wire [7:0] n_0_0, n_0_0_qrelu;
    DW01_satrnd #(15, 11, 4) USR_n_0_0 ( .din(n_0_0_sum_f[14:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_0_qrelu));
    assign n_0_0 = (n_0_0_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_0_qrelu);

// layer: 0 - neuron: 1
    wire [3:0] n_0_1_po_0_a;
    assign n_0_1_po_0_a = inp[3:0];
    //mask 14 : [1, 2, 3]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_0;
    assign n_0_1_po_0 = ((n_0_1_po_0_a[1] << 1) + (n_0_1_po_0_a[2] << 2) + (n_0_1_po_0_a[3] << 3)) << 6;

    wire [3:0] n_0_1_po_1_a;
    assign n_0_1_po_1_a = inp[7:4];
    //mask 14 : [1, 2, 3]
    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_1_po_1;
    assign n_0_1_po_1 = ((n_0_1_po_1_a[1] << 1) + (n_0_1_po_1_a[2] << 2) + (n_0_1_po_1_a[3] << 3)) << 7;

    wire [3:0] n_0_1_po_2_a;
    assign n_0_1_po_2_a = inp[11:8];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_2;
    assign n_0_1_po_2 = (4'd0) << 6;

    wire [3:0] n_0_1_po_3_a;
    assign n_0_1_po_3_a = inp[15:12];
    //mask 0 : []
    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_1_po_3;
    assign n_0_1_po_3 = (4'd0) << 5;

    //weight 0 : skip
    wire [3:0] n_0_1_po_5_a;
    assign n_0_1_po_5_a = inp[23:20];
    //mask 0 : []
    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_5;
    assign n_0_1_po_5 = (4'd0) << 3;

    wire [3:0] n_0_1_po_6_a;
    assign n_0_1_po_6_a = inp[27:24];
    //mask 12 : [2, 3]
    //weight 128 : 8'b10000000
    wire [11:0] n_0_1_po_6;
    assign n_0_1_po_6 = ((n_0_1_po_6_a[2] << 2) + (n_0_1_po_6_a[3] << 3)) << 7;

    wire [3:0] n_0_1_po_7_a;
    assign n_0_1_po_7_a = inp[31:28];
    //mask 9 : [0, 3]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_7;
    assign n_0_1_po_7 = (n_0_1_po_7_a[0] + (n_0_1_po_7_a[3] << 3)) << 6;

    wire [3:0] n_0_1_po_8_a;
    assign n_0_1_po_8_a = inp[35:32];
    //mask 8 : [3]
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_8;
    assign n_0_1_po_8 = ((n_0_1_po_8_a[3] << 3)) << 6;

    wire [3:0] n_0_1_po_9_a;
    assign n_0_1_po_9_a = inp[39:36];
    //mask 11 : [0, 1, 3]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_9;
    assign n_0_1_po_9 = (n_0_1_po_9_a[0] + (n_0_1_po_9_a[1] << 1) + (n_0_1_po_9_a[3] << 3)) << 6;

    wire [3:0] n_0_1_po_10_a;
    assign n_0_1_po_10_a = inp[43:40];
    //mask 0 : []
    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_10;
    assign n_0_1_po_10 = (4'd0) << 3;

    wire [3:0] n_0_1_po_11_a;
    assign n_0_1_po_11_a = inp[47:44];
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [8:0] n_0_1_po_11;
    assign n_0_1_po_11 = (4'd0) << 4;

    wire [3:0] n_0_1_po_12_a;
    assign n_0_1_po_12_a = inp[51:48];
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_1_po_12;
    assign n_0_1_po_12 = (4'd0) << 4;

    wire [3:0] n_0_1_po_13_a;
    assign n_0_1_po_13_a = inp[55:52];
    //mask 0 : []
    //weight 32 : 6'b100000
    wire [9:0] n_0_1_po_13;
    assign n_0_1_po_13 = (4'd0) << 5;

    wire [3:0] n_0_1_po_14_a;
    assign n_0_1_po_14_a = inp[59:56];
    //mask 6 : [1, 2]
    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_14;
    assign n_0_1_po_14 = ((n_0_1_po_14_a[1] << 1) + (n_0_1_po_14_a[2] << 2)) << 3;

    wire [3:0] n_0_1_po_15_a;
    assign n_0_1_po_15_a = inp[63:60];
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_1_po_15;
    assign n_0_1_po_15 = (4'd0) << 4;

    wire [3:0] n_0_1_po_16_a;
    assign n_0_1_po_16_a = inp[67:64];
    //mask 1 : [0]
    //weight abs(-2) : 2'b10
    wire [5:0] n_0_1_po_16;
    assign n_0_1_po_16 = (n_0_1_po_16_a[0]) << 1;

    wire [3:0] n_0_1_po_17_a;
    assign n_0_1_po_17_a = inp[71:68];
    //mask 5 : [0, 2]
    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_17;
    assign n_0_1_po_17 = (n_0_1_po_17_a[0] + (n_0_1_po_17_a[2] << 2)) << 3;

    wire [3:0] n_0_1_po_18_a;
    assign n_0_1_po_18_a = inp[75:72];
    //mask 0 : []
    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_18;
    assign n_0_1_po_18 = (4'd0) << 3;

    wire [3:0] n_0_1_po_19_a;
    assign n_0_1_po_19_a = inp[79:76];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_19;
    assign n_0_1_po_19 = (4'd0) << 6;

    wire [3:0] n_0_1_po_20_a;
    assign n_0_1_po_20_a = inp[83:80];
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_1_po_20;
    assign n_0_1_po_20 = (4'd0) << 4;

    //accumulate positive/negative subproducts
    wire [14:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = n_0_1_po_0 + n_0_1_po_2 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_9 + n_0_1_po_10 + n_0_1_po_11 + n_0_1_po_13 + n_0_1_po_14 + n_0_1_po_17 + n_0_1_po_18 + n_0_1_po_19;
    wire [14:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = 6'b100000 + n_0_1_po_1 + n_0_1_po_3 + n_0_1_po_8 + n_0_1_po_12 + n_0_1_po_15 + n_0_1_po_16 + n_0_1_po_20;
    wire signed [15:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) - $signed({1'b0,n_0_1_sum_neg});

    wire signed [15:0] n_0_1_sum_f;
    assign n_0_1_sum_f = $signed(n_0_1_sum);
    //relu
    wire [7:0] n_0_1, n_0_1_qrelu;
    DW01_satrnd #(15, 11, 4) USR_n_0_1 ( .din(n_0_1_sum_f[14:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_1_qrelu));
    assign n_0_1 = (n_0_1_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_1_qrelu);

// layer: 0 - neuron: 2
    wire [3:0] n_0_2_po_0_a;
    assign n_0_2_po_0_a = inp[3:0];
    //mask 4 : [2]
    //weight abs(-4) : 3'b100
    wire [6:0] n_0_2_po_0;
    assign n_0_2_po_0 = ((n_0_2_po_0_a[2] << 2)) << 2;

    wire [3:0] n_0_2_po_1_a;
    assign n_0_2_po_1_a = inp[7:4];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_1;
    assign n_0_2_po_1 = (4'd0) << 6;

    wire [3:0] n_0_2_po_2_a;
    assign n_0_2_po_2_a = inp[11:8];
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [8:0] n_0_2_po_2;
    assign n_0_2_po_2 = (4'd0) << 4;

    wire [3:0] n_0_2_po_3_a;
    assign n_0_2_po_3_a = inp[15:12];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_3;
    assign n_0_2_po_3 = (4'd0) << 6;

    wire [3:0] n_0_2_po_4_a;
    assign n_0_2_po_4_a = inp[19:16];
    //mask 0 : []
    //weight 32 : 6'b100000
    wire [9:0] n_0_2_po_4;
    assign n_0_2_po_4 = (4'd0) << 5;

    wire [3:0] n_0_2_po_5_a;
    assign n_0_2_po_5_a = inp[23:20];
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [8:0] n_0_2_po_5;
    assign n_0_2_po_5 = (4'd0) << 4;

    wire [3:0] n_0_2_po_6_a;
    assign n_0_2_po_6_a = inp[27:24];
    //mask 8 : [3]
    //weight 128 : 8'b10000000
    wire [11:0] n_0_2_po_6;
    assign n_0_2_po_6 = ((n_0_2_po_6_a[3] << 3)) << 7;

    wire [3:0] n_0_2_po_7_a;
    assign n_0_2_po_7_a = inp[31:28];
    //mask 8 : [3]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_7;
    assign n_0_2_po_7 = ((n_0_2_po_7_a[3] << 3)) << 6;

    wire [3:0] n_0_2_po_8_a;
    assign n_0_2_po_8_a = inp[35:32];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_8;
    assign n_0_2_po_8 = (4'd0) << 6;

    wire [3:0] n_0_2_po_9_a;
    assign n_0_2_po_9_a = inp[39:36];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_9;
    assign n_0_2_po_9 = (4'd0) << 6;

    wire [3:0] n_0_2_po_10_a;
    assign n_0_2_po_10_a = inp[43:40];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_10;
    assign n_0_2_po_10 = (4'd0) << 6;

    wire [3:0] n_0_2_po_11_a;
    assign n_0_2_po_11_a = inp[47:44];
    //mask 5 : [0, 2]
    //weight 4 : 3'b100
    wire [6:0] n_0_2_po_11;
    assign n_0_2_po_11 = (n_0_2_po_11_a[0] + (n_0_2_po_11_a[2] << 2)) << 2;

    wire [3:0] n_0_2_po_12_a;
    assign n_0_2_po_12_a = inp[51:48];
    //mask 2 : [1]
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_12;
    assign n_0_2_po_12 = ((n_0_2_po_12_a[1] << 1)) << 6;

    wire [3:0] n_0_2_po_13_a;
    assign n_0_2_po_13_a = inp[55:52];
    //mask 1 : [0]
    //weight 8 : 4'b1000
    wire [7:0] n_0_2_po_13;
    assign n_0_2_po_13 = (n_0_2_po_13_a[0]) << 3;

    wire [3:0] n_0_2_po_14_a;
    assign n_0_2_po_14_a = inp[59:56];
    //mask 0 : []
    //weight 8 : 4'b1000
    wire [7:0] n_0_2_po_14;
    assign n_0_2_po_14 = (4'd0) << 3;

    //weight 0 : skip
    //weight 0 : skip
    wire [3:0] n_0_2_po_17_a;
    assign n_0_2_po_17_a = inp[71:68];
    //mask 11 : [0, 1, 3]
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_17;
    assign n_0_2_po_17 = (n_0_2_po_17_a[0] + (n_0_2_po_17_a[1] << 1) + (n_0_2_po_17_a[3] << 3)) << 6;

    wire [3:0] n_0_2_po_18_a;
    assign n_0_2_po_18_a = inp[75:72];
    //mask 8 : [3]
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_18;
    assign n_0_2_po_18 = ((n_0_2_po_18_a[3] << 3)) << 6;

    wire [3:0] n_0_2_po_19_a;
    assign n_0_2_po_19_a = inp[79:76];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_19;
    assign n_0_2_po_19 = (4'd0) << 6;

    wire [3:0] n_0_2_po_20_a;
    assign n_0_2_po_20_a = inp[83:80];
    //mask 1 : [0]
    //weight abs(-4) : 3'b100
    wire [6:0] n_0_2_po_20;
    assign n_0_2_po_20 = (n_0_2_po_20_a[0]) << 2;

    //accumulate positive/negative subproducts
    wire [14:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = 10'b1000000000 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_8 + n_0_2_po_10 + n_0_2_po_11 + n_0_2_po_13 + n_0_2_po_14 + n_0_2_po_19;
    wire [14:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_9 + n_0_2_po_12 + n_0_2_po_17 + n_0_2_po_18 + n_0_2_po_20;
    wire signed [15:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) - $signed({1'b0,n_0_2_sum_neg});

    wire signed [15:0] n_0_2_sum_f;
    assign n_0_2_sum_f = $signed(n_0_2_sum);
    //relu
    wire [7:0] n_0_2, n_0_2_qrelu;
    DW01_satrnd #(15, 11, 4) USR_n_0_2 ( .din(n_0_2_sum_f[14:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_2_qrelu));
    assign n_0_2 = (n_0_2_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_2_qrelu);

// layer: 1 - neuron: 0
    wire [7:0] n_1_0_po_0_a;
    assign n_1_0_po_0_a = n_0_0;
    //mask 227 : [0, 1, 5, 6, 7]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_0_po_0;
    assign n_1_0_po_0 = (n_1_0_po_0_a[0] + (n_1_0_po_0_a[1] << 1) + (n_1_0_po_0_a[5] << 5) + (n_1_0_po_0_a[6] << 6) + (n_1_0_po_0_a[7] << 7)) << 6;

    wire [7:0] n_1_0_po_1_a;
    assign n_1_0_po_1_a = n_0_1;
    //mask 192 : [6, 7]
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_0_po_1;
    assign n_1_0_po_1 = ((n_1_0_po_1_a[6] << 6) + (n_1_0_po_1_a[7] << 7)) << 6;

    wire [7:0] n_1_0_po_2_a;
    assign n_1_0_po_2_a = n_0_2;
    //mask 193 : [0, 6, 7]
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_0_po_2;
    assign n_1_0_po_2 = (n_1_0_po_2_a[0] + (n_1_0_po_2_a[6] << 6) + (n_1_0_po_2_a[7] << 7)) << 6;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = 13'b1000000000000 + n_1_0_po_0;
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
    wire [7:0] n_1_1_po_0_a;
    assign n_1_1_po_0_a = n_0_0;
    //mask 172 : [2, 3, 5, 7]
    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_1_po_0;
    assign n_1_1_po_0 = ((n_1_1_po_0_a[2] << 2) + (n_1_1_po_0_a[3] << 3) + (n_1_1_po_0_a[5] << 5) + (n_1_1_po_0_a[7] << 7)) << 4;

    wire [7:0] n_1_1_po_1_a;
    assign n_1_1_po_1_a = n_0_1;
    //mask 239 : [0, 1, 2, 3, 5, 6, 7]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_1_po_1;
    assign n_1_1_po_1 = (n_1_1_po_1_a[0] + (n_1_1_po_1_a[1] << 1) + (n_1_1_po_1_a[2] << 2) + (n_1_1_po_1_a[3] << 3) + (n_1_1_po_1_a[5] << 5) + (n_1_1_po_1_a[6] << 6) + (n_1_1_po_1_a[7] << 7)) << 6;

    wire [7:0] n_1_1_po_2_a;
    assign n_1_1_po_2_a = n_0_2;
    //mask 124 : [2, 3, 4, 5, 6]
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_1_po_2;
    assign n_1_1_po_2 = ((n_1_1_po_2_a[2] << 2) + (n_1_1_po_2_a[3] << 3) + (n_1_1_po_2_a[4] << 4) + (n_1_1_po_2_a[5] << 5) + (n_1_1_po_2_a[6] << 6)) << 6;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = n_1_1_po_1;
    wire [15:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = 12'b100000000000 + n_1_1_po_0 + n_1_1_po_2;
    wire signed [16:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) - $signed({1'b0,n_1_1_sum_neg});

    wire signed [16:0] n_1_1_sum_f;
    assign n_1_1_sum_f = $signed(n_1_1_sum);
    //relu
    wire [15:0] n_1_1;
    assign n_1_1 = (n_1_1_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_1_sum_f);

// layer: 1 - neuron: 2
    wire [7:0] n_1_2_po_0_a;
    assign n_1_2_po_0_a = n_0_0;
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_2_po_0;
    assign n_1_2_po_0 = (8'd0) << 6;

    wire [7:0] n_1_2_po_1_a;
    assign n_1_2_po_1_a = n_0_1;
    //mask 246 : [1, 2, 4, 5, 6, 7]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_2_po_1;
    assign n_1_2_po_1 = ((n_1_2_po_1_a[1] << 1) + (n_1_2_po_1_a[2] << 2) + (n_1_2_po_1_a[4] << 4) + (n_1_2_po_1_a[5] << 5) + (n_1_2_po_1_a[6] << 6) + (n_1_2_po_1_a[7] << 7)) << 6;

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [15:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = n_1_2_po_1;
    wire [15:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = 13'b1000000000000 + n_1_2_po_0;
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
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire [15:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= n_1_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : n_1_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
