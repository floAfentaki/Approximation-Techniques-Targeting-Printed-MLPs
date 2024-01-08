//weights: [[[-128, 64, 8, -128, 64, -8, 128, 128, -128, -16, -128], [-128, -128, -16, 128, 8, 64, 128, -128, -64, 2, -32], [-64, -128, 32, 32, 64, 16, -4, 8, -16, 0, 64], [32, -32, 0, -16, -32, -16, 32, -4, 16, -32, -2]], [[64, -128, -64, -16], [128, -128, 16, 16], [128, -32, -16, -32], [32, 32, 128, 8], [-128, 128, -16, 32], [-128, 128, -16, 32], [-128, -32, -32, -16]]]
//intercepts: [[128, 128, 16, -32], [-64, 32, 32, 64, 32, -64, -64]]
module top (inp, out);
input [43:0] inp;
output [2:0] out;

// layer: 0 - neuron: 0
    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_0_po_0;
    assign n_0_0_po_0 = (inp[3:0]) << 7;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_1;
    assign n_0_0_po_1 = (inp[7:4]) << 6;

    //weight 8 : 4'b1000
    wire [7:0] n_0_0_po_2;
    assign n_0_0_po_2 = (inp[11:8]) << 3;

    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_0_po_3;
    assign n_0_0_po_3 = (inp[15:12]) << 7;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_4;
    assign n_0_0_po_4 = (inp[19:16]) << 6;

    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_0_po_5;
    assign n_0_0_po_5 = (inp[23:20]) << 3;

    //weight 128 : 8'b10000000
    wire [11:0] n_0_0_po_6;
    assign n_0_0_po_6 = (inp[27:24]) << 7;

    //weight 128 : 8'b10000000
    wire [11:0] n_0_0_po_7;
    assign n_0_0_po_7 = (inp[31:28]) << 7;

    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_0_po_8;
    assign n_0_0_po_8 = (inp[35:32]) << 7;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_9;
    assign n_0_0_po_9 = (inp[39:36]) << 4;

    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_0_po_10;
    assign n_0_0_po_10 = (inp[43:40]) << 7;

    //accumulate positive/negative subproducts
    wire [14:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = 12'b100000000000 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_4 + n_0_0_po_6 + n_0_0_po_7;
    wire [14:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_0 + n_0_0_po_3 + n_0_0_po_5 + n_0_0_po_8 + n_0_0_po_9 + n_0_0_po_10;
    wire signed [15:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) - $signed({1'b0,n_0_0_sum_neg});

    wire signed [15:0] n_0_0_sum_f;
    assign n_0_0_sum_f = $signed(n_0_0_sum);
    //relu
    wire [7:0] n_0_0, n_0_0_qrelu;
    DW01_satrnd #(15, 10, 3) USR_n_0_0 ( .din(n_0_0_sum_f[14:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_0_qrelu));
    assign n_0_0 = (n_0_0_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_0_qrelu);

// layer: 0 - neuron: 1
    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_1_po_0;
    assign n_0_1_po_0 = (inp[3:0]) << 7;

    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_1_po_1;
    assign n_0_1_po_1 = (inp[7:4]) << 7;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_1_po_2;
    assign n_0_1_po_2 = (inp[11:8]) << 4;

    //weight 128 : 8'b10000000
    wire [11:0] n_0_1_po_3;
    assign n_0_1_po_3 = (inp[15:12]) << 7;

    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_4;
    assign n_0_1_po_4 = (inp[19:16]) << 3;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_5;
    assign n_0_1_po_5 = (inp[23:20]) << 6;

    //weight 128 : 8'b10000000
    wire [11:0] n_0_1_po_6;
    assign n_0_1_po_6 = (inp[27:24]) << 7;

    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_1_po_7;
    assign n_0_1_po_7 = (inp[31:28]) << 7;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_8;
    assign n_0_1_po_8 = (inp[35:32]) << 6;

    //weight 2 : 2'b10
    wire [5:0] n_0_1_po_9;
    assign n_0_1_po_9 = (inp[39:36]) << 1;

    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_1_po_10;
    assign n_0_1_po_10 = (inp[43:40]) << 5;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = 12'b100000000000 + n_0_1_po_3 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_9;
    wire [13:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_10;
    wire signed [14:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) - $signed({1'b0,n_0_1_sum_neg});

    wire signed [14:0] n_0_1_sum_f;
    assign n_0_1_sum_f = $signed(n_0_1_sum);
    //relu
    wire [7:0] n_0_1, n_0_1_qrelu;
    DW01_satrnd #(14, 10, 3) USR_n_0_1 ( .din(n_0_1_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_1_qrelu));
    assign n_0_1 = (n_0_1_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_1_qrelu);

// layer: 0 - neuron: 2
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_0;
    assign n_0_2_po_0 = (inp[3:0]) << 6;

    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_2_po_1;
    assign n_0_2_po_1 = (inp[7:4]) << 7;

    //weight 32 : 6'b100000
    wire [9:0] n_0_2_po_2;
    assign n_0_2_po_2 = (inp[11:8]) << 5;

    //weight 32 : 6'b100000
    wire [9:0] n_0_2_po_3;
    assign n_0_2_po_3 = (inp[15:12]) << 5;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_4;
    assign n_0_2_po_4 = (inp[19:16]) << 6;

    //weight 16 : 5'b10000
    wire [8:0] n_0_2_po_5;
    assign n_0_2_po_5 = (inp[23:20]) << 4;

    //weight abs(-4) : 3'b100
    wire [6:0] n_0_2_po_6;
    assign n_0_2_po_6 = (inp[27:24]) << 2;

    //weight 8 : 4'b1000
    wire [7:0] n_0_2_po_7;
    assign n_0_2_po_7 = (inp[31:28]) << 3;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_2_po_8;
    assign n_0_2_po_8 = (inp[35:32]) << 4;

    //weight 0 : skip
    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_10;
    assign n_0_2_po_10 = (inp[43:40]) << 6;

    //accumulate positive/negative subproducts
    wire [12:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = 9'b100000000 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_7 + n_0_2_po_10;
    wire [12:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_6 + n_0_2_po_8;
    wire signed [13:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) - $signed({1'b0,n_0_2_sum_neg});

    wire signed [13:0] n_0_2_sum_f;
    assign n_0_2_sum_f = $signed(n_0_2_sum);
    //relu
    wire [7:0] n_0_2, n_0_2_qrelu;
    DW01_satrnd #(13, 10, 3) USR_n_0_2 ( .din(n_0_2_sum_f[12:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_2_qrelu));
    assign n_0_2 = (n_0_2_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_2_qrelu);

// layer: 0 - neuron: 3
    //weight 32 : 6'b100000
    wire [9:0] n_0_3_po_0;
    assign n_0_3_po_0 = (inp[3:0]) << 5;

    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_3_po_1;
    assign n_0_3_po_1 = (inp[7:4]) << 5;

    //weight 0 : skip
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_3_po_3;
    assign n_0_3_po_3 = (inp[15:12]) << 4;

    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_3_po_4;
    assign n_0_3_po_4 = (inp[19:16]) << 5;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_3_po_5;
    assign n_0_3_po_5 = (inp[23:20]) << 4;

    //weight 32 : 6'b100000
    wire [9:0] n_0_3_po_6;
    assign n_0_3_po_6 = (inp[27:24]) << 5;

    //weight abs(-4) : 3'b100
    wire [6:0] n_0_3_po_7;
    assign n_0_3_po_7 = (inp[31:28]) << 2;

    //weight 16 : 5'b10000
    wire [8:0] n_0_3_po_8;
    assign n_0_3_po_8 = (inp[35:32]) << 4;

    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_3_po_9;
    assign n_0_3_po_9 = (inp[39:36]) << 5;

    //weight abs(-2) : 2'b10
    wire [5:0] n_0_3_po_10;
    assign n_0_3_po_10 = (inp[43:40]) << 1;

    //accumulate positive/negative subproducts
    wire [12:0] n_0_3_sum_pos;
    assign n_0_3_sum_pos = n_0_3_po_0 + n_0_3_po_6 + n_0_3_po_8;
    wire [12:0] n_0_3_sum_neg;
    assign n_0_3_sum_neg = 10'b1000000000 + n_0_3_po_1 + n_0_3_po_3 + n_0_3_po_4 + n_0_3_po_5 + n_0_3_po_7 + n_0_3_po_9 + n_0_3_po_10;
    wire signed [13:0] n_0_3_sum;
    assign n_0_3_sum = $signed({1'b0,n_0_3_sum_pos}) - $signed({1'b0,n_0_3_sum_neg});

    wire signed [13:0] n_0_3_sum_f;
    assign n_0_3_sum_f = $signed(n_0_3_sum);
    //relu
    wire [7:0] n_0_3, n_0_3_qrelu;
    DW01_satrnd #(13, 10, 3) USR_n_0_3 ( .din(n_0_3_sum_f[12:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_3_qrelu));
    assign n_0_3 = (n_0_3_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_3_qrelu);

// layer: 1 - neuron: 0
    //weight 64 : 7'b1000000
    wire [14:0] n_1_0_po_0;
    assign n_1_0_po_0 = (n_0_0) << 6;

    //weight abs(-128) : 8'b10000000
    wire [15:0] n_1_0_po_1;
    assign n_1_0_po_1 = (n_0_1) << 7;

    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_0_po_2;
    assign n_1_0_po_2 = (n_0_2) << 6;

    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_0_po_3;
    assign n_1_0_po_3 = (n_0_3) << 4;

    //accumulate positive/negative subproducts
    wire [16:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = n_1_0_po_0;
    wire [16:0] n_1_0_sum_neg;
    assign n_1_0_sum_neg = 14'b10000000000000 + n_1_0_po_1 + n_1_0_po_2 + n_1_0_po_3;
    wire signed [17:0] n_1_0_sum;
    assign n_1_0_sum = $signed({1'b0,n_1_0_sum_pos}) - $signed({1'b0,n_1_0_sum_neg});

    wire signed [17:0] n_1_0_sum_f;
    assign n_1_0_sum_f = $signed(n_1_0_sum);
    //relu
    wire [16:0] n_1_0;
    assign n_1_0 = (n_1_0_sum_f<0) ? $unsigned({17{1'b0}}) : $unsigned(n_1_0_sum_f);

// layer: 1 - neuron: 1
    //weight 128 : 8'b10000000
    wire [15:0] n_1_1_po_0;
    assign n_1_1_po_0 = (n_0_0) << 7;

    //weight abs(-128) : 8'b10000000
    wire [15:0] n_1_1_po_1;
    assign n_1_1_po_1 = (n_0_1) << 7;

    //weight 16 : 5'b10000
    wire [12:0] n_1_1_po_2;
    assign n_1_1_po_2 = (n_0_2) << 4;

    //weight 16 : 5'b10000
    wire [12:0] n_1_1_po_3;
    assign n_1_1_po_3 = (n_0_3) << 4;

    //accumulate positive/negative subproducts
    wire [16:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = 13'b1000000000000 + n_1_1_po_0 + n_1_1_po_2 + n_1_1_po_3;
    wire [16:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = n_1_1_po_1;
    wire signed [17:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) - $signed({1'b0,n_1_1_sum_neg});

    wire signed [17:0] n_1_1_sum_f;
    assign n_1_1_sum_f = $signed(n_1_1_sum);
    //relu
    wire [16:0] n_1_1;
    assign n_1_1 = (n_1_1_sum_f<0) ? $unsigned({17{1'b0}}) : $unsigned(n_1_1_sum_f);

// layer: 1 - neuron: 2
    //weight 128 : 8'b10000000
    wire [15:0] n_1_2_po_0;
    assign n_1_2_po_0 = (n_0_0) << 7;

    //weight abs(-32) : 6'b100000
    wire [13:0] n_1_2_po_1;
    assign n_1_2_po_1 = (n_0_1) << 5;

    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_2_po_2;
    assign n_1_2_po_2 = (n_0_2) << 4;

    //weight abs(-32) : 6'b100000
    wire [13:0] n_1_2_po_3;
    assign n_1_2_po_3 = (n_0_3) << 5;

    //accumulate positive/negative subproducts
    wire [16:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = 13'b1000000000000 + n_1_2_po_0;
    wire [16:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = n_1_2_po_1 + n_1_2_po_2 + n_1_2_po_3;
    wire signed [17:0] n_1_2_sum;
    assign n_1_2_sum = $signed({1'b0,n_1_2_sum_pos}) - $signed({1'b0,n_1_2_sum_neg});

    wire signed [17:0] n_1_2_sum_f;
    assign n_1_2_sum_f = $signed(n_1_2_sum);
    //relu
    wire [16:0] n_1_2;
    assign n_1_2 = (n_1_2_sum_f<0) ? $unsigned({17{1'b0}}) : $unsigned(n_1_2_sum_f);

// layer: 1 - neuron: 3
    //weight 32 : 6'b100000
    wire [13:0] n_1_3_po_0;
    assign n_1_3_po_0 = (n_0_0) << 5;

    //weight 32 : 6'b100000
    wire [13:0] n_1_3_po_1;
    assign n_1_3_po_1 = (n_0_1) << 5;

    //weight 128 : 8'b10000000
    wire [15:0] n_1_3_po_2;
    assign n_1_3_po_2 = (n_0_2) << 7;

    //weight 8 : 4'b1000
    wire [11:0] n_1_3_po_3;
    assign n_1_3_po_3 = (n_0_3) << 3;

    //accumulate positive/negative subproducts
    wire [16:0] n_1_3_sum_pos;
    assign n_1_3_sum_pos = 14'b10000000000000 + n_1_3_po_0 + n_1_3_po_1 + n_1_3_po_2 + n_1_3_po_3;

    //WARN: only positive weights. Using identity
    wire signed [17:0] n_1_3_sum;
    assign n_1_3_sum = $signed({1'b0,n_1_3_sum_pos});

    wire signed [17:0] n_1_3_sum_f;
    assign n_1_3_sum_f = $signed(n_1_3_sum);
    //relu
    wire [16:0] n_1_3;
    assign n_1_3 = (n_1_3_sum_f<0) ? $unsigned({17{1'b0}}) : $unsigned(n_1_3_sum_f);

// layer: 1 - neuron: 4
    //weight abs(-128) : 8'b10000000
    wire [15:0] n_1_4_po_0;
    assign n_1_4_po_0 = (n_0_0) << 7;

    //weight 128 : 8'b10000000
    wire [15:0] n_1_4_po_1;
    assign n_1_4_po_1 = (n_0_1) << 7;

    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_4_po_2;
    assign n_1_4_po_2 = (n_0_2) << 4;

    //weight 32 : 6'b100000
    wire [13:0] n_1_4_po_3;
    assign n_1_4_po_3 = (n_0_3) << 5;

    //accumulate positive/negative subproducts
    wire [16:0] n_1_4_sum_pos;
    assign n_1_4_sum_pos = 13'b1000000000000 + n_1_4_po_1 + n_1_4_po_3;
    wire [16:0] n_1_4_sum_neg;
    assign n_1_4_sum_neg = n_1_4_po_0 + n_1_4_po_2;
    wire signed [17:0] n_1_4_sum;
    assign n_1_4_sum = $signed({1'b0,n_1_4_sum_pos}) - $signed({1'b0,n_1_4_sum_neg});

    wire signed [17:0] n_1_4_sum_f;
    assign n_1_4_sum_f = $signed(n_1_4_sum);
    //relu
    wire [16:0] n_1_4;
    assign n_1_4 = (n_1_4_sum_f<0) ? $unsigned({17{1'b0}}) : $unsigned(n_1_4_sum_f);

// layer: 1 - neuron: 5
    //weight abs(-128) : 8'b10000000
    wire [15:0] n_1_5_po_0;
    assign n_1_5_po_0 = (n_0_0) << 7;

    //weight 128 : 8'b10000000
    wire [15:0] n_1_5_po_1;
    assign n_1_5_po_1 = (n_0_1) << 7;

    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_5_po_2;
    assign n_1_5_po_2 = (n_0_2) << 4;

    //weight 32 : 6'b100000
    wire [13:0] n_1_5_po_3;
    assign n_1_5_po_3 = (n_0_3) << 5;

    //accumulate positive/negative subproducts
    wire [16:0] n_1_5_sum_pos;
    assign n_1_5_sum_pos = n_1_5_po_1 + n_1_5_po_3;
    wire [16:0] n_1_5_sum_neg;
    assign n_1_5_sum_neg = 14'b10000000000000 + n_1_5_po_0 + n_1_5_po_2;
    wire signed [17:0] n_1_5_sum;
    assign n_1_5_sum = $signed({1'b0,n_1_5_sum_pos}) - $signed({1'b0,n_1_5_sum_neg});

    wire signed [17:0] n_1_5_sum_f;
    assign n_1_5_sum_f = $signed(n_1_5_sum);
    //relu
    wire [16:0] n_1_5;
    assign n_1_5 = (n_1_5_sum_f<0) ? $unsigned({17{1'b0}}) : $unsigned(n_1_5_sum_f);

// layer: 1 - neuron: 6
    //weight abs(-128) : 8'b10000000
    wire [15:0] n_1_6_po_0;
    assign n_1_6_po_0 = (n_0_0) << 7;

    //weight abs(-32) : 6'b100000
    wire [13:0] n_1_6_po_1;
    assign n_1_6_po_1 = (n_0_1) << 5;

    //weight abs(-32) : 6'b100000
    wire [13:0] n_1_6_po_2;
    assign n_1_6_po_2 = (n_0_2) << 5;

    //weight abs(-16) : 5'b10000
    wire [12:0] n_1_6_po_3;
    assign n_1_6_po_3 = (n_0_3) << 4;

    //accumulate positive/negative subproducts

    //WARN: only negative weights with relu. Using zero
    wire signed [17:0] n_1_6_sum;
    assign n_1_6_sum = $signed({18{1'b0}});

    wire signed [17:0] n_1_6_sum_f;
    assign n_1_6_sum_f = $signed(n_1_6_sum);
    //relu
    wire [16:0] n_1_6;
    assign n_1_6 = (n_1_6_sum_f<0) ? $unsigned({17{1'b0}}) : $unsigned(n_1_6_sum_f);

// argmax: 7 classes, need 3 bits
// argmax inp: n_1_0, n_1_1, n_1_2, n_1_3, n_1_4, n_1_5, n_1_6
    //comp level 0
    wire cmp_0_0;
    wire [16:0] argmax_val_0_0;
    wire [2:0] argmax_idx_0_0;
    //current mask = 00000100000000000
    assign {cmp_0_0} = ( {n_1_0[11]} >= {n_1_4[11]} );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_4;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 3'b000 : 3'b100;

    wire cmp_0_2;
    wire [16:0] argmax_val_0_2;
    wire [2:0] argmax_idx_0_2;
    //current mask = 10000000000000000
    assign {cmp_0_2} = ( {n_1_1[16]} >= {n_1_5[16]} );
    assign {argmax_val_0_2} = ( cmp_0_2 ) ? n_1_1 : n_1_5;
    assign {argmax_idx_0_2} = ( cmp_0_2 ) ? 3'b001 : 3'b101;

    wire cmp_0_4;
    wire [16:0] argmax_val_0_4;
    wire [2:0] argmax_idx_0_4;
    //current mask = 10000000000000000
    assign {cmp_0_4} = ( {n_1_2[16]} >= {n_1_6[16]} );
    assign {argmax_val_0_4} = ( cmp_0_4 ) ? n_1_2 : n_1_6;
    assign {argmax_idx_0_4} = ( cmp_0_4 ) ? 3'b010 : 3'b110;

    wire cmp_0_6;
    wire [16:0] argmax_val_0_6;
    wire [2:0] argmax_idx_0_6;
    assign {cmp_0_6} = 1;
    assign {argmax_val_0_6} =  n_1_3;
    assign {argmax_idx_0_6} =  3'b011;

    //comp level 1
    wire cmp_1_0;
    wire [16:0] argmax_val_1_0;
    wire [2:0] argmax_idx_1_0;
    //current mask = 00100000000000000
    assign {cmp_1_0} = ( {argmax_val_0_0[14]} >= {argmax_val_0_2[14]} );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : argmax_val_0_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : argmax_idx_0_2;

    wire cmp_1_2;
    wire [16:0] argmax_val_1_2;
    wire [2:0] argmax_idx_1_2;
    //current mask = 00111100000000000
    assign {cmp_1_2} = ( {argmax_val_0_4[14], argmax_val_0_4[13], argmax_val_0_4[12], argmax_val_0_4[11]} >= {argmax_val_0_6[14], argmax_val_0_6[13], argmax_val_0_6[12], argmax_val_0_6[11]} );
    assign {argmax_val_1_2} = ( cmp_1_2 ) ? argmax_val_0_4 : argmax_val_0_6;
    assign {argmax_idx_1_2} = ( cmp_1_2 ) ? argmax_idx_0_4 : argmax_idx_0_6;

    //comp level 2
    wire cmp_2_0;
    wire [16:0] argmax_val_2_0;
    wire [2:0] argmax_idx_2_0;
    //current mask = 00100000000000000
    assign {cmp_2_0} = ( {argmax_val_1_2[14]} >= {argmax_val_1_0[14]} );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_2 : argmax_val_1_0;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_2 : argmax_idx_1_0;

    assign out = argmax_idx_2_0;

endmodule
