//weights: [[[-128, 32, 0, -64, 32, -4, 64, 64, -64, -2, -64], [-64, -64, -8, 64, 4, 32, 64, -64, -32, 0, -16], [-32, -64, 16, 16, 32, 8, -2, 4, -8, 0, 32], [16, -16, 0, -8, -16, -8, 16, -2, 8, -16, -2]], [[32, -64, -2, 0], [64, -8, 8, 8], [64, -16, -8, -16], [16, 16, 64, 4], [-64, 64, -8, 16], [-64, 64, -8, 16], [-64, -16, -16, -2]]]
//intercepts: [[128, 64, 8, -16], [-32, 16, 16, 32, 16, -32, -32]]
module top (inp, out);
input [43:0] inp;
output [2:0] out;

// layer: 0 - neuron: 0
    wire [3:0] n_0_0_po_0_a;
    assign n_0_0_po_0_a = inp[3:0];
    //mask 0 : []
    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_0_po_0;
    assign n_0_0_po_0 = (4'd0) << 7;

    wire [3:0] n_0_0_po_1_a;
    assign n_0_0_po_1_a = inp[7:4];
    //mask 7 : [0, 1, 2]
    //weight 32 : 6'b100000
    wire [9:0] n_0_0_po_1;
    assign n_0_0_po_1 = (n_0_0_po_1_a[0] + (n_0_0_po_1_a[1] << 1) + (n_0_0_po_1_a[2] << 2)) << 5;

    //weight 0 : skip
    wire [3:0] n_0_0_po_3_a;
    assign n_0_0_po_3_a = inp[15:12];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_3;
    assign n_0_0_po_3 = (4'd0) << 6;

    wire [3:0] n_0_0_po_4_a;
    assign n_0_0_po_4_a = inp[19:16];
    //mask 0 : []
    //weight 32 : 6'b100000
    wire [9:0] n_0_0_po_4;
    assign n_0_0_po_4 = (4'd0) << 5;

    wire [3:0] n_0_0_po_5_a;
    assign n_0_0_po_5_a = inp[23:20];
    //mask 0 : []
    //weight abs(-4) : 3'b100
    wire [6:0] n_0_0_po_5;
    assign n_0_0_po_5 = (4'd0) << 2;

    wire [3:0] n_0_0_po_6_a;
    assign n_0_0_po_6_a = inp[27:24];
    //mask 12 : [2, 3]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_6;
    assign n_0_0_po_6 = ((n_0_0_po_6_a[2] << 2) + (n_0_0_po_6_a[3] << 3)) << 6;

    wire [3:0] n_0_0_po_7_a;
    assign n_0_0_po_7_a = inp[31:28];
    //mask 13 : [0, 2, 3]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_7;
    assign n_0_0_po_7 = (n_0_0_po_7_a[0] + (n_0_0_po_7_a[2] << 2) + (n_0_0_po_7_a[3] << 3)) << 6;

    wire [3:0] n_0_0_po_8_a;
    assign n_0_0_po_8_a = inp[35:32];
    //mask 11 : [0, 1, 3]
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_8;
    assign n_0_0_po_8 = (n_0_0_po_8_a[0] + (n_0_0_po_8_a[1] << 1) + (n_0_0_po_8_a[3] << 3)) << 6;

    wire [3:0] n_0_0_po_9_a;
    assign n_0_0_po_9_a = inp[39:36];
    //mask 1 : [0]
    //weight abs(-2) : 2'b10
    wire [5:0] n_0_0_po_9;
    assign n_0_0_po_9 = (n_0_0_po_9_a[0]) << 1;

    wire [3:0] n_0_0_po_10_a;
    assign n_0_0_po_10_a = inp[43:40];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_10;
    assign n_0_0_po_10 = (4'd0) << 6;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = 12'b100000000000 + n_0_0_po_1 + n_0_0_po_4 + n_0_0_po_6 + n_0_0_po_7;
    wire [13:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_0 + n_0_0_po_3 + n_0_0_po_5 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;
    wire signed [14:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) - $signed({1'b0,n_0_0_sum_neg});

    wire signed [14:0] n_0_0_sum_f;
    assign n_0_0_sum_f = $signed(n_0_0_sum);
    //relu
    wire [7:0] n_0_0, n_0_0_qrelu;
    DW01_satrnd #(14, 9, 2) USR_n_0_0 ( .din(n_0_0_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_0_qrelu));
    assign n_0_0 = (n_0_0_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_0_qrelu);

// layer: 0 - neuron: 1
    wire [3:0] n_0_1_po_0_a;
    assign n_0_1_po_0_a = inp[3:0];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_0;
    assign n_0_1_po_0 = (4'd0) << 6;

    wire [3:0] n_0_1_po_1_a;
    assign n_0_1_po_1_a = inp[7:4];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_1;
    assign n_0_1_po_1 = (4'd0) << 6;

    wire [3:0] n_0_1_po_2_a;
    assign n_0_1_po_2_a = inp[11:8];
    //mask 0 : []
    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_1_po_2;
    assign n_0_1_po_2 = (4'd0) << 3;

    wire [3:0] n_0_1_po_3_a;
    assign n_0_1_po_3_a = inp[15:12];
    //mask 1 : [0]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_3;
    assign n_0_1_po_3 = (n_0_1_po_3_a[0]) << 6;

    wire [3:0] n_0_1_po_4_a;
    assign n_0_1_po_4_a = inp[19:16];
    //mask 0 : []
    //weight 4 : 3'b100
    wire [6:0] n_0_1_po_4;
    assign n_0_1_po_4 = (4'd0) << 2;

    wire [3:0] n_0_1_po_5_a;
    assign n_0_1_po_5_a = inp[23:20];
    //mask 0 : []
    //weight 32 : 6'b100000
    wire [9:0] n_0_1_po_5;
    assign n_0_1_po_5 = (4'd0) << 5;

    wire [3:0] n_0_1_po_6_a;
    assign n_0_1_po_6_a = inp[27:24];
    //mask 12 : [2, 3]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_6;
    assign n_0_1_po_6 = ((n_0_1_po_6_a[2] << 2) + (n_0_1_po_6_a[3] << 3)) << 6;

    wire [3:0] n_0_1_po_7_a;
    assign n_0_1_po_7_a = inp[31:28];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_7;
    assign n_0_1_po_7 = (4'd0) << 6;

    wire [3:0] n_0_1_po_8_a;
    assign n_0_1_po_8_a = inp[35:32];
    //mask 0 : []
    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_1_po_8;
    assign n_0_1_po_8 = (4'd0) << 5;

    //weight 0 : skip
    wire [3:0] n_0_1_po_10_a;
    assign n_0_1_po_10_a = inp[43:40];
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_1_po_10;
    assign n_0_1_po_10 = (4'd0) << 4;

    //accumulate positive/negative subproducts
    wire [12:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = 11'b10000000000 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6;
    wire [12:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_10;
    wire signed [13:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) - $signed({1'b0,n_0_1_sum_neg});

    wire signed [13:0] n_0_1_sum_f;
    assign n_0_1_sum_f = $signed(n_0_1_sum);
    //relu
    wire [7:0] n_0_1, n_0_1_qrelu;
    DW01_satrnd #(13, 9, 2) USR_n_0_1 ( .din(n_0_1_sum_f[12:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_1_qrelu));
    assign n_0_1 = (n_0_1_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_1_qrelu);

// layer: 0 - neuron: 2
    wire [3:0] n_0_2_po_0_a;
    assign n_0_2_po_0_a = inp[3:0];
    //mask 0 : []
    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_2_po_0;
    assign n_0_2_po_0 = (4'd0) << 5;

    wire [3:0] n_0_2_po_1_a;
    assign n_0_2_po_1_a = inp[7:4];
    //mask 14 : [1, 2, 3]
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_1;
    assign n_0_2_po_1 = ((n_0_2_po_1_a[1] << 1) + (n_0_2_po_1_a[2] << 2) + (n_0_2_po_1_a[3] << 3)) << 6;

    wire [3:0] n_0_2_po_2_a;
    assign n_0_2_po_2_a = inp[11:8];
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [8:0] n_0_2_po_2;
    assign n_0_2_po_2 = (4'd0) << 4;

    wire [3:0] n_0_2_po_3_a;
    assign n_0_2_po_3_a = inp[15:12];
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [8:0] n_0_2_po_3;
    assign n_0_2_po_3 = (4'd0) << 4;

    wire [3:0] n_0_2_po_4_a;
    assign n_0_2_po_4_a = inp[19:16];
    //mask 5 : [0, 2]
    //weight 32 : 6'b100000
    wire [9:0] n_0_2_po_4;
    assign n_0_2_po_4 = (n_0_2_po_4_a[0] + (n_0_2_po_4_a[2] << 2)) << 5;

    wire [3:0] n_0_2_po_5_a;
    assign n_0_2_po_5_a = inp[23:20];
    //mask 6 : [1, 2]
    //weight 8 : 4'b1000
    wire [7:0] n_0_2_po_5;
    assign n_0_2_po_5 = ((n_0_2_po_5_a[1] << 1) + (n_0_2_po_5_a[2] << 2)) << 3;

    wire [3:0] n_0_2_po_6_a;
    assign n_0_2_po_6_a = inp[27:24];
    //mask 0 : []
    //weight abs(-2) : 2'b10
    wire [5:0] n_0_2_po_6;
    assign n_0_2_po_6 = (4'd0) << 1;

    wire [3:0] n_0_2_po_7_a;
    assign n_0_2_po_7_a = inp[31:28];
    //mask 4 : [2]
    //weight 4 : 3'b100
    wire [6:0] n_0_2_po_7;
    assign n_0_2_po_7 = ((n_0_2_po_7_a[2] << 2)) << 2;

    wire [3:0] n_0_2_po_8_a;
    assign n_0_2_po_8_a = inp[35:32];
    //mask 5 : [0, 2]
    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_2_po_8;
    assign n_0_2_po_8 = (n_0_2_po_8_a[0] + (n_0_2_po_8_a[2] << 2)) << 3;

    //weight 0 : skip
    wire [3:0] n_0_2_po_10_a;
    assign n_0_2_po_10_a = inp[43:40];
    //mask 14 : [1, 2, 3]
    //weight 32 : 6'b100000
    wire [9:0] n_0_2_po_10;
    assign n_0_2_po_10 = ((n_0_2_po_10_a[1] << 1) + (n_0_2_po_10_a[2] << 2) + (n_0_2_po_10_a[3] << 3)) << 5;

    //accumulate positive/negative subproducts
    wire [11:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = 8'b10000000 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_7 + n_0_2_po_10;
    wire [11:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_6 + n_0_2_po_8;
    wire signed [12:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) - $signed({1'b0,n_0_2_sum_neg});

    wire signed [12:0] n_0_2_sum_f;
    assign n_0_2_sum_f = $signed(n_0_2_sum);
    //relu
    wire [7:0] n_0_2, n_0_2_qrelu;
    DW01_satrnd #(12, 9, 2) USR_n_0_2 ( .din(n_0_2_sum_f[11:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_2_qrelu));
    assign n_0_2 = (n_0_2_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_2_qrelu);

// layer: 0 - neuron: 3
    wire [3:0] n_0_3_po_0_a;
    assign n_0_3_po_0_a = inp[3:0];
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [8:0] n_0_3_po_0;
    assign n_0_3_po_0 = (4'd0) << 4;

    wire [3:0] n_0_3_po_1_a;
    assign n_0_3_po_1_a = inp[7:4];
    //mask 8 : [3]
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_3_po_1;
    assign n_0_3_po_1 = ((n_0_3_po_1_a[3] << 3)) << 4;

    //weight 0 : skip
    wire [3:0] n_0_3_po_3_a;
    assign n_0_3_po_3_a = inp[15:12];
    //mask 0 : []
    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_3_po_3;
    assign n_0_3_po_3 = (4'd0) << 3;

    wire [3:0] n_0_3_po_4_a;
    assign n_0_3_po_4_a = inp[19:16];
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_3_po_4;
    assign n_0_3_po_4 = (4'd0) << 4;

    wire [3:0] n_0_3_po_5_a;
    assign n_0_3_po_5_a = inp[23:20];
    //mask 4 : [2]
    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_3_po_5;
    assign n_0_3_po_5 = ((n_0_3_po_5_a[2] << 2)) << 3;

    wire [3:0] n_0_3_po_6_a;
    assign n_0_3_po_6_a = inp[27:24];
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [8:0] n_0_3_po_6;
    assign n_0_3_po_6 = (4'd0) << 4;

    wire [3:0] n_0_3_po_7_a;
    assign n_0_3_po_7_a = inp[31:28];
    //mask 1 : [0]
    //weight abs(-2) : 2'b10
    wire [5:0] n_0_3_po_7;
    assign n_0_3_po_7 = (n_0_3_po_7_a[0]) << 1;

    wire [3:0] n_0_3_po_8_a;
    assign n_0_3_po_8_a = inp[35:32];
    //mask 0 : []
    //weight 8 : 4'b1000
    wire [7:0] n_0_3_po_8;
    assign n_0_3_po_8 = (4'd0) << 3;

    wire [3:0] n_0_3_po_9_a;
    assign n_0_3_po_9_a = inp[39:36];
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_3_po_9;
    assign n_0_3_po_9 = (4'd0) << 4;

    wire [3:0] n_0_3_po_10_a;
    assign n_0_3_po_10_a = inp[43:40];
    //mask 0 : []
    //weight abs(-2) : 2'b10
    wire [5:0] n_0_3_po_10;
    assign n_0_3_po_10 = (4'd0) << 1;

    //accumulate positive/negative subproducts
    wire [11:0] n_0_3_sum_pos;
    assign n_0_3_sum_pos = n_0_3_po_0 + n_0_3_po_6 + n_0_3_po_8;
    wire [11:0] n_0_3_sum_neg;
    assign n_0_3_sum_neg = 9'b100000000 + n_0_3_po_1 + n_0_3_po_3 + n_0_3_po_4 + n_0_3_po_5 + n_0_3_po_7 + n_0_3_po_9 + n_0_3_po_10;
    wire signed [12:0] n_0_3_sum;
    assign n_0_3_sum = $signed({1'b0,n_0_3_sum_pos}) - $signed({1'b0,n_0_3_sum_neg});

    wire signed [12:0] n_0_3_sum_f;
    assign n_0_3_sum_f = $signed(n_0_3_sum);
    //relu
    wire [7:0] n_0_3, n_0_3_qrelu;
    DW01_satrnd #(12, 9, 2) USR_n_0_3 ( .din(n_0_3_sum_f[11:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_3_qrelu));
    assign n_0_3 = (n_0_3_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_3_qrelu);

// layer: 1 - neuron: 0
    wire [7:0] n_1_0_po_0_a;
    assign n_1_0_po_0_a = n_0_0;
    //mask 234 : [1, 3, 5, 6, 7]
    //weight 32 : 6'b100000
    wire [13:0] n_1_0_po_0;
    assign n_1_0_po_0 = ((n_1_0_po_0_a[1] << 1) + (n_1_0_po_0_a[3] << 3) + (n_1_0_po_0_a[5] << 5) + (n_1_0_po_0_a[6] << 6) + (n_1_0_po_0_a[7] << 7)) << 5;

    wire [7:0] n_1_0_po_1_a;
    assign n_1_0_po_1_a = n_0_1;
    //mask 240 : [4, 5, 6, 7]
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_0_po_1;
    assign n_1_0_po_1 = ((n_1_0_po_1_a[4] << 4) + (n_1_0_po_1_a[5] << 5) + (n_1_0_po_1_a[6] << 6) + (n_1_0_po_1_a[7] << 7)) << 6;

    wire [7:0] n_1_0_po_2_a;
    assign n_1_0_po_2_a = n_0_2;
    //mask 1 : [0]
    //weight abs(-2) : 2'b10
    wire [9:0] n_1_0_po_2;
    assign n_1_0_po_2 = (n_1_0_po_2_a[0]) << 1;

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [15:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = n_1_0_po_0;
    wire [15:0] n_1_0_sum_neg;
    assign n_1_0_sum_neg = 13'b1000000000000 + n_1_0_po_1 + n_1_0_po_2;
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
    //mask 152 : [3, 4, 7]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_1_po_0;
    assign n_1_1_po_0 = ((n_1_1_po_0_a[3] << 3) + (n_1_1_po_0_a[4] << 4) + (n_1_1_po_0_a[7] << 7)) << 6;

    wire [7:0] n_1_1_po_1_a;
    assign n_1_1_po_1_a = n_0_1;
    //mask 235 : [0, 1, 3, 5, 6, 7]
    //weight abs(-8) : 4'b1000
    wire [11:0] n_1_1_po_1;
    assign n_1_1_po_1 = (n_1_1_po_1_a[0] + (n_1_1_po_1_a[1] << 1) + (n_1_1_po_1_a[3] << 3) + (n_1_1_po_1_a[5] << 5) + (n_1_1_po_1_a[6] << 6) + (n_1_1_po_1_a[7] << 7)) << 3;

    wire [7:0] n_1_1_po_2_a;
    assign n_1_1_po_2_a = n_0_2;
    //mask 0 : []
    //weight 8 : 4'b1000
    wire [11:0] n_1_1_po_2;
    assign n_1_1_po_2 = (8'd0) << 3;

    wire [7:0] n_1_1_po_3_a;
    assign n_1_1_po_3_a = n_0_3;
    //mask 231 : [0, 1, 2, 5, 6, 7]
    //weight 8 : 4'b1000
    wire [11:0] n_1_1_po_3;
    assign n_1_1_po_3 = (n_1_1_po_3_a[0] + (n_1_1_po_3_a[1] << 1) + (n_1_1_po_3_a[2] << 2) + (n_1_1_po_3_a[5] << 5) + (n_1_1_po_3_a[6] << 6) + (n_1_1_po_3_a[7] << 7)) << 3;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = 12'b100000000000 + n_1_1_po_0 + n_1_1_po_2 + n_1_1_po_3;
    wire [15:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = n_1_1_po_1;
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
    //mask 242 : [1, 4, 5, 6, 7]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_2_po_0;
    assign n_1_2_po_0 = ((n_1_2_po_0_a[1] << 1) + (n_1_2_po_0_a[4] << 4) + (n_1_2_po_0_a[5] << 5) + (n_1_2_po_0_a[6] << 6) + (n_1_2_po_0_a[7] << 7)) << 6;

    wire [7:0] n_1_2_po_1_a;
    assign n_1_2_po_1_a = n_0_1;
    //mask 247 : [0, 1, 2, 4, 5, 6, 7]
    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_2_po_1;
    assign n_1_2_po_1 = (n_1_2_po_1_a[0] + (n_1_2_po_1_a[1] << 1) + (n_1_2_po_1_a[2] << 2) + (n_1_2_po_1_a[4] << 4) + (n_1_2_po_1_a[5] << 5) + (n_1_2_po_1_a[6] << 6) + (n_1_2_po_1_a[7] << 7)) << 4;

    wire [7:0] n_1_2_po_2_a;
    assign n_1_2_po_2_a = n_0_2;
    //mask 1 : [0]
    //weight abs(-8) : 4'b1000
    wire [11:0] n_1_2_po_2;
    assign n_1_2_po_2 = (n_1_2_po_2_a[0]) << 3;

    wire [7:0] n_1_2_po_3_a;
    assign n_1_2_po_3_a = n_0_3;
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_2_po_3;
    assign n_1_2_po_3 = (8'd0) << 4;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = 12'b100000000000 + n_1_2_po_0;
    wire [15:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = n_1_2_po_1 + n_1_2_po_2 + n_1_2_po_3;
    wire signed [16:0] n_1_2_sum;
    assign n_1_2_sum = $signed({1'b0,n_1_2_sum_pos}) - $signed({1'b0,n_1_2_sum_neg});

    wire signed [16:0] n_1_2_sum_f;
    assign n_1_2_sum_f = $signed(n_1_2_sum);
    //relu
    wire [15:0] n_1_2;
    assign n_1_2 = (n_1_2_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_2_sum_f);

// layer: 1 - neuron: 3
    wire [7:0] n_1_3_po_0_a;
    assign n_1_3_po_0_a = n_0_0;
    //mask 242 : [1, 4, 5, 6, 7]
    //weight 16 : 5'b10000
    wire [12:0] n_1_3_po_0;
    assign n_1_3_po_0 = ((n_1_3_po_0_a[1] << 1) + (n_1_3_po_0_a[4] << 4) + (n_1_3_po_0_a[5] << 5) + (n_1_3_po_0_a[6] << 6) + (n_1_3_po_0_a[7] << 7)) << 4;

    wire [7:0] n_1_3_po_1_a;
    assign n_1_3_po_1_a = n_0_1;
    //mask 224 : [5, 6, 7]
    //weight 16 : 5'b10000
    wire [12:0] n_1_3_po_1;
    assign n_1_3_po_1 = ((n_1_3_po_1_a[5] << 5) + (n_1_3_po_1_a[6] << 6) + (n_1_3_po_1_a[7] << 7)) << 4;

    wire [7:0] n_1_3_po_2_a;
    assign n_1_3_po_2_a = n_0_2;
    //mask 227 : [0, 1, 5, 6, 7]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_3_po_2;
    assign n_1_3_po_2 = (n_1_3_po_2_a[0] + (n_1_3_po_2_a[1] << 1) + (n_1_3_po_2_a[5] << 5) + (n_1_3_po_2_a[6] << 6) + (n_1_3_po_2_a[7] << 7)) << 6;

    wire [7:0] n_1_3_po_3_a;
    assign n_1_3_po_3_a = n_0_3;
    //mask 0 : []
    //weight 4 : 3'b100
    wire [10:0] n_1_3_po_3;
    assign n_1_3_po_3 = (8'd0) << 2;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_3_sum_pos;
    assign n_1_3_sum_pos = 13'b1000000000000 + n_1_3_po_0 + n_1_3_po_1 + n_1_3_po_2 + n_1_3_po_3;

    //WARN: only positive weights. Using identity
    wire signed [16:0] n_1_3_sum;
    assign n_1_3_sum = $signed({1'b0,n_1_3_sum_pos});

    wire signed [16:0] n_1_3_sum_f;
    assign n_1_3_sum_f = $signed(n_1_3_sum);
    //relu
    wire [15:0] n_1_3;
    assign n_1_3 = (n_1_3_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_3_sum_f);

// layer: 1 - neuron: 4
    wire [7:0] n_1_4_po_0_a;
    assign n_1_4_po_0_a = n_0_0;
    //mask 240 : [4, 5, 6, 7]
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_4_po_0;
    assign n_1_4_po_0 = ((n_1_4_po_0_a[4] << 4) + (n_1_4_po_0_a[5] << 5) + (n_1_4_po_0_a[6] << 6) + (n_1_4_po_0_a[7] << 7)) << 6;

    wire [7:0] n_1_4_po_1_a;
    assign n_1_4_po_1_a = n_0_1;
    //mask 237 : [0, 2, 3, 5, 6, 7]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_4_po_1;
    assign n_1_4_po_1 = (n_1_4_po_1_a[0] + (n_1_4_po_1_a[2] << 2) + (n_1_4_po_1_a[3] << 3) + (n_1_4_po_1_a[5] << 5) + (n_1_4_po_1_a[6] << 6) + (n_1_4_po_1_a[7] << 7)) << 6;

    wire [7:0] n_1_4_po_2_a;
    assign n_1_4_po_2_a = n_0_2;
    //mask 252 : [2, 3, 4, 5, 6, 7]
    //weight abs(-8) : 4'b1000
    wire [11:0] n_1_4_po_2;
    assign n_1_4_po_2 = ((n_1_4_po_2_a[2] << 2) + (n_1_4_po_2_a[3] << 3) + (n_1_4_po_2_a[4] << 4) + (n_1_4_po_2_a[5] << 5) + (n_1_4_po_2_a[6] << 6) + (n_1_4_po_2_a[7] << 7)) << 3;

    wire [7:0] n_1_4_po_3_a;
    assign n_1_4_po_3_a = n_0_3;
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [12:0] n_1_4_po_3;
    assign n_1_4_po_3 = (8'd0) << 4;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_4_sum_pos;
    assign n_1_4_sum_pos = 12'b100000000000 + n_1_4_po_1 + n_1_4_po_3;
    wire [15:0] n_1_4_sum_neg;
    assign n_1_4_sum_neg = n_1_4_po_0 + n_1_4_po_2;
    wire signed [16:0] n_1_4_sum;
    assign n_1_4_sum = $signed({1'b0,n_1_4_sum_pos}) - $signed({1'b0,n_1_4_sum_neg});

    wire signed [16:0] n_1_4_sum_f;
    assign n_1_4_sum_f = $signed(n_1_4_sum);
    //relu
    wire [15:0] n_1_4;
    assign n_1_4 = (n_1_4_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_4_sum_f);

// layer: 1 - neuron: 5
    wire [7:0] n_1_5_po_0_a;
    assign n_1_5_po_0_a = n_0_0;
    //mask 239 : [0, 1, 2, 3, 5, 6, 7]
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_5_po_0;
    assign n_1_5_po_0 = (n_1_5_po_0_a[0] + (n_1_5_po_0_a[1] << 1) + (n_1_5_po_0_a[2] << 2) + (n_1_5_po_0_a[3] << 3) + (n_1_5_po_0_a[5] << 5) + (n_1_5_po_0_a[6] << 6) + (n_1_5_po_0_a[7] << 7)) << 6;

    wire [7:0] n_1_5_po_1_a;
    assign n_1_5_po_1_a = n_0_1;
    //mask 254 : [1, 2, 3, 4, 5, 6, 7]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_5_po_1;
    assign n_1_5_po_1 = ((n_1_5_po_1_a[1] << 1) + (n_1_5_po_1_a[2] << 2) + (n_1_5_po_1_a[3] << 3) + (n_1_5_po_1_a[4] << 4) + (n_1_5_po_1_a[5] << 5) + (n_1_5_po_1_a[6] << 6) + (n_1_5_po_1_a[7] << 7)) << 6;

    wire [7:0] n_1_5_po_2_a;
    assign n_1_5_po_2_a = n_0_2;
    //mask 244 : [2, 4, 5, 6, 7]
    //weight abs(-8) : 4'b1000
    wire [11:0] n_1_5_po_2;
    assign n_1_5_po_2 = ((n_1_5_po_2_a[2] << 2) + (n_1_5_po_2_a[4] << 4) + (n_1_5_po_2_a[5] << 5) + (n_1_5_po_2_a[6] << 6) + (n_1_5_po_2_a[7] << 7)) << 3;

    wire [7:0] n_1_5_po_3_a;
    assign n_1_5_po_3_a = n_0_3;
    //mask 14 : [1, 2, 3]
    //weight 16 : 5'b10000
    wire [12:0] n_1_5_po_3;
    assign n_1_5_po_3 = ((n_1_5_po_3_a[1] << 1) + (n_1_5_po_3_a[2] << 2) + (n_1_5_po_3_a[3] << 3)) << 4;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_5_sum_pos;
    assign n_1_5_sum_pos = n_1_5_po_1 + n_1_5_po_3;
    wire [15:0] n_1_5_sum_neg;
    assign n_1_5_sum_neg = 13'b1000000000000 + n_1_5_po_0 + n_1_5_po_2;
    wire signed [16:0] n_1_5_sum;
    assign n_1_5_sum = $signed({1'b0,n_1_5_sum_pos}) - $signed({1'b0,n_1_5_sum_neg});

    wire signed [16:0] n_1_5_sum_f;
    assign n_1_5_sum_f = $signed(n_1_5_sum);
    //relu
    wire [15:0] n_1_5;
    assign n_1_5 = (n_1_5_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_5_sum_f);

// layer: 1 - neuron: 6
    wire [7:0] n_1_6_po_0_a;
    assign n_1_6_po_0_a = n_0_0;
    //mask 121 : [0, 3, 4, 5, 6]
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_6_po_0;
    assign n_1_6_po_0 = (n_1_6_po_0_a[0] + (n_1_6_po_0_a[3] << 3) + (n_1_6_po_0_a[4] << 4) + (n_1_6_po_0_a[5] << 5) + (n_1_6_po_0_a[6] << 6)) << 6;

    wire [7:0] n_1_6_po_1_a;
    assign n_1_6_po_1_a = n_0_1;
    //mask 17 : [0, 4]
    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_6_po_1;
    assign n_1_6_po_1 = (n_1_6_po_1_a[0] + (n_1_6_po_1_a[4] << 4)) << 4;

    wire [7:0] n_1_6_po_2_a;
    assign n_1_6_po_2_a = n_0_2;
    //mask 163 : [0, 1, 5, 7]
    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_6_po_2;
    assign n_1_6_po_2 = (n_1_6_po_2_a[0] + (n_1_6_po_2_a[1] << 1) + (n_1_6_po_2_a[5] << 5) + (n_1_6_po_2_a[7] << 7)) << 4;

    wire [7:0] n_1_6_po_3_a;
    assign n_1_6_po_3_a = n_0_3;
    //mask 1 : [0]
    //weight abs(-2) : 2'b10
    wire [9:0] n_1_6_po_3;
    assign n_1_6_po_3 = (n_1_6_po_3_a[0]) << 1;

    //accumulate positive/negative subproducts

    //WARN: only negative weights with relu. Using zero
    wire signed [16:0] n_1_6_sum;
    assign n_1_6_sum = $signed({17{1'b0}});

    wire signed [16:0] n_1_6_sum_f;
    assign n_1_6_sum_f = $signed(n_1_6_sum);
    //relu
    wire [15:0] n_1_6;
    assign n_1_6 = (n_1_6_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_6_sum_f);

// argmax: 7 classes, need 3 bits
// argmax inp: n_1_0, n_1_1, n_1_2, n_1_3, n_1_4, n_1_5, n_1_6
    //comp level 0
    wire cmp_0_0;
    wire [15:0] argmax_val_0_0;
    wire [2:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 3'b000 : 3'b001;

    wire cmp_0_2;
    wire [15:0] argmax_val_0_2;
    wire [2:0] argmax_idx_0_2;
    assign {cmp_0_2} = ( n_1_2 >= n_1_3 );
    assign {argmax_val_0_2} = ( cmp_0_2 ) ? n_1_2 : n_1_3;
    assign {argmax_idx_0_2} = ( cmp_0_2 ) ? 3'b010 : 3'b011;

    wire cmp_0_4;
    wire [15:0] argmax_val_0_4;
    wire [2:0] argmax_idx_0_4;
    assign {cmp_0_4} = ( n_1_4 >= n_1_5 );
    assign {argmax_val_0_4} = ( cmp_0_4 ) ? n_1_4 : n_1_5;
    assign {argmax_idx_0_4} = ( cmp_0_4 ) ? 3'b100 : 3'b101;

    //comp level 1
    wire cmp_1_0;
    wire [15:0] argmax_val_1_0;
    wire [2:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= argmax_val_0_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    wire cmp_1_2;
    wire [15:0] argmax_val_1_2;
    wire [2:0] argmax_idx_1_2;
    assign {cmp_1_2} = ( argmax_val_0_4 >= n_1_6 );
    assign {argmax_val_1_2} = ( cmp_1_2 ) ? argmax_val_0_4 : n_1_6;
    assign {argmax_idx_1_2} = ( cmp_1_2 ) ? argmax_idx_0_4 : 3'b110;

    //comp level 2
    wire cmp_2_0;
    wire [15:0] argmax_val_2_0;
    wire [2:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 >= argmax_val_1_2 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_1_2;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_1_2;

    assign out = argmax_idx_2_0;

endmodule
