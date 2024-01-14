//weights: [[[96, -79, -116, -31, 12, -11, 120, -117, -15, -85], [-96, -28, -115, -72, 78, 4, -108, -1, -122, -52], [-87, 0, -69, -118, -90, -122, -87, -30, 27, -38], [-77, -77, -22, -74, -72, 57, -16, 0, 20, 53], [-81, -97, -79, -124, -89, -115, -83, -74, -38, -102], [-64, -12, -59, -89, -61, -4, -52, 56, -44, -29], [62, -60, 71, 1, -25, -73, 0, 111, -85, -98], [-74, 9, -114, 71, -61, -53, 120, -53, 65, 45]], [[-112, 16, -83, 11, -120, -27, -92, -100], [6, 3, -90, -60, -55, 0, -46, 54]]]
//intercepts: [[0, -84, 21, -60, -105, -71, -122, -64], [-65, 1]]
module top (inp, out);
input [39:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    wire [3:0] n_0_0_po_0_a;
    assign n_0_0_po_0_a = inp[3:0];
    //mask 0 : []
    //weight 96 : 7'b1100000
    wire [10:0] n_0_0_po_0;
    assign n_0_0_po_0 = (4'd0) << 6;

    wire [3:0] n_0_0_po_1_a;
    assign n_0_0_po_1_a = inp[7:4];
    //mask 0 : []
    //weight abs(-79) : 7'b1001111
    wire [10:0] n_0_0_po_1;
    assign n_0_0_po_1 = (4'd0) << 6;

    wire [3:0] n_0_0_po_2_a;
    assign n_0_0_po_2_a = inp[11:8];
    //mask 4 : [2]
    //weight abs(-116) : 7'b1110100
    wire [10:0] n_0_0_po_2;
    assign n_0_0_po_2 = ((n_0_0_po_2_a[2] << 2)) << 6;

    wire [3:0] n_0_0_po_3_a;
    assign n_0_0_po_3_a = inp[15:12];
    //mask 0 : []
    //weight abs(-31) : 5'b11111
    wire [8:0] n_0_0_po_3;
    assign n_0_0_po_3 = (4'd0) << 4;

    wire [3:0] n_0_0_po_4_a;
    assign n_0_0_po_4_a = inp[19:16];
    //mask 0 : []
    //weight 12 : 4'b1100
    wire [7:0] n_0_0_po_4;
    assign n_0_0_po_4 = (4'd0) << 3;

    wire [3:0] n_0_0_po_5_a;
    assign n_0_0_po_5_a = inp[23:20];
    //mask 3 : [0, 1]
    //weight abs(-11) : 4'b1011
    wire [7:0] n_0_0_po_5;
    assign n_0_0_po_5 = (n_0_0_po_5_a[0] + (n_0_0_po_5_a[1] << 1)) << 3;

    wire [3:0] n_0_0_po_6_a;
    assign n_0_0_po_6_a = inp[27:24];
    //mask 2 : [1]
    //weight 120 : 7'b1111000
    wire [10:0] n_0_0_po_6;
    assign n_0_0_po_6 = ((n_0_0_po_6_a[1] << 1)) << 6;

    wire [3:0] n_0_0_po_7_a;
    assign n_0_0_po_7_a = inp[31:28];
    //mask 0 : []
    //weight abs(-117) : 7'b1110101
    wire [10:0] n_0_0_po_7;
    assign n_0_0_po_7 = (4'd0) << 6;

    wire [3:0] n_0_0_po_8_a;
    assign n_0_0_po_8_a = inp[35:32];
    //mask 1 : [0]
    //weight abs(-15) : 4'b1111
    wire [7:0] n_0_0_po_8;
    assign n_0_0_po_8 = (n_0_0_po_8_a[0]) << 3;

    wire [3:0] n_0_0_po_9_a;
    assign n_0_0_po_9_a = inp[39:36];
    //mask 0 : []
    //weight abs(-85) : 7'b1010101
    wire [10:0] n_0_0_po_9;
    assign n_0_0_po_9 = (4'd0) << 6;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = n_0_0_po_0 + n_0_0_po_4 + n_0_0_po_6;
    wire [13:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_5 + n_0_0_po_7 + n_0_0_po_8 + n_0_0_po_9;
    wire signed [14:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) - $signed({1'b0,n_0_0_sum_neg});

    wire signed [14:0] n_0_0_sum_f;
    assign n_0_0_sum_f = $signed(n_0_0_sum);
    //relu
    wire [7:0] n_0_0, n_0_0_qrelu;
    DW01_satrnd #(14, 11, 4) USR_n_0_0 ( .din(n_0_0_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_0_qrelu));
    assign n_0_0 = (n_0_0_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_0_qrelu);

// layer: 0 - neuron: 1
    wire [3:0] n_0_1_po_0_a;
    assign n_0_1_po_0_a = inp[3:0];
    //mask 0 : []
    //weight abs(-96) : 7'b1100000
    wire [10:0] n_0_1_po_0;
    assign n_0_1_po_0 = (4'd0) << 6;

    wire [3:0] n_0_1_po_1_a;
    assign n_0_1_po_1_a = inp[7:4];
    //mask 0 : []
    //weight abs(-28) : 5'b11100
    wire [8:0] n_0_1_po_1;
    assign n_0_1_po_1 = (4'd0) << 4;

    wire [3:0] n_0_1_po_2_a;
    assign n_0_1_po_2_a = inp[11:8];
    //mask 4 : [2]
    //weight abs(-115) : 7'b1110011
    wire [10:0] n_0_1_po_2;
    assign n_0_1_po_2 = ((n_0_1_po_2_a[2] << 2)) << 6;

    wire [3:0] n_0_1_po_3_a;
    assign n_0_1_po_3_a = inp[15:12];
    //mask 4 : [2]
    //weight abs(-72) : 7'b1001000
    wire [10:0] n_0_1_po_3;
    assign n_0_1_po_3 = ((n_0_1_po_3_a[2] << 2)) << 6;

    wire [3:0] n_0_1_po_4_a;
    assign n_0_1_po_4_a = inp[19:16];
    //mask 3 : [0, 1]
    //weight 78 : 7'b1001110
    wire [10:0] n_0_1_po_4;
    assign n_0_1_po_4 = (n_0_1_po_4_a[0] + (n_0_1_po_4_a[1] << 1)) << 6;

    wire [3:0] n_0_1_po_5_a;
    assign n_0_1_po_5_a = inp[23:20];
    //mask 0 : []
    //weight 4 : 3'b100
    wire [6:0] n_0_1_po_5;
    assign n_0_1_po_5 = (4'd0) << 2;

    wire [3:0] n_0_1_po_6_a;
    assign n_0_1_po_6_a = inp[27:24];
    //mask 0 : []
    //weight abs(-108) : 7'b1101100
    wire [10:0] n_0_1_po_6;
    assign n_0_1_po_6 = (4'd0) << 6;

    wire [3:0] n_0_1_po_7_a;
    assign n_0_1_po_7_a = inp[31:28];
    //mask 1 : [0]
    //weight abs(-1) : 1'b1
    wire [4:0] n_0_1_po_7;
    assign n_0_1_po_7 = (n_0_1_po_7_a[0]);

    wire [3:0] n_0_1_po_8_a;
    assign n_0_1_po_8_a = inp[35:32];
    //mask 0 : []
    //weight abs(-122) : 7'b1111010
    wire [10:0] n_0_1_po_8;
    assign n_0_1_po_8 = (4'd0) << 6;

    wire [3:0] n_0_1_po_9_a;
    assign n_0_1_po_9_a = inp[39:36];
    //mask 0 : []
    //weight abs(-52) : 6'b110100
    wire [9:0] n_0_1_po_9;
    assign n_0_1_po_9 = (4'd0) << 5;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = n_0_1_po_4 + n_0_1_po_5;
    wire [13:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = 11'b10101000000 + n_0_1_po_0 + n_0_1_po_1 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_6 + n_0_1_po_7 + n_0_1_po_8 + n_0_1_po_9;
    wire signed [14:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) - $signed({1'b0,n_0_1_sum_neg});

    wire signed [14:0] n_0_1_sum_f;
    assign n_0_1_sum_f = $signed(n_0_1_sum);
    //relu
    wire [7:0] n_0_1, n_0_1_qrelu;
    DW01_satrnd #(14, 11, 4) USR_n_0_1 ( .din(n_0_1_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_1_qrelu));
    assign n_0_1 = (n_0_1_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_1_qrelu);

// layer: 0 - neuron: 2
    wire [3:0] n_0_2_po_0_a;
    assign n_0_2_po_0_a = inp[3:0];
    //mask 0 : []
    //weight abs(-87) : 7'b1010111
    wire [10:0] n_0_2_po_0;
    assign n_0_2_po_0 = (4'd0) << 6;

    //weight 0 : skip
    wire [3:0] n_0_2_po_2_a;
    assign n_0_2_po_2_a = inp[11:8];
    //mask 0 : []
    //weight abs(-69) : 7'b1000101
    wire [10:0] n_0_2_po_2;
    assign n_0_2_po_2 = (4'd0) << 6;

    wire [3:0] n_0_2_po_3_a;
    assign n_0_2_po_3_a = inp[15:12];
    //mask 0 : []
    //weight abs(-118) : 7'b1110110
    wire [10:0] n_0_2_po_3;
    assign n_0_2_po_3 = (4'd0) << 6;

    wire [3:0] n_0_2_po_4_a;
    assign n_0_2_po_4_a = inp[19:16];
    //mask 7 : [0, 1, 2]
    //weight abs(-90) : 7'b1011010
    wire [10:0] n_0_2_po_4;
    assign n_0_2_po_4 = (n_0_2_po_4_a[0] + (n_0_2_po_4_a[1] << 1) + (n_0_2_po_4_a[2] << 2)) << 6;

    wire [3:0] n_0_2_po_5_a;
    assign n_0_2_po_5_a = inp[23:20];
    //mask 8 : [3]
    //weight abs(-122) : 7'b1111010
    wire [10:0] n_0_2_po_5;
    assign n_0_2_po_5 = ((n_0_2_po_5_a[3] << 3)) << 6;

    wire [3:0] n_0_2_po_6_a;
    assign n_0_2_po_6_a = inp[27:24];
    //mask 10 : [1, 3]
    //weight abs(-87) : 7'b1010111
    wire [10:0] n_0_2_po_6;
    assign n_0_2_po_6 = ((n_0_2_po_6_a[1] << 1) + (n_0_2_po_6_a[3] << 3)) << 6;

    wire [3:0] n_0_2_po_7_a;
    assign n_0_2_po_7_a = inp[31:28];
    //mask 0 : []
    //weight abs(-30) : 5'b11110
    wire [8:0] n_0_2_po_7;
    assign n_0_2_po_7 = (4'd0) << 4;

    wire [3:0] n_0_2_po_8_a;
    assign n_0_2_po_8_a = inp[35:32];
    //mask 0 : []
    //weight 27 : 5'b11011
    wire [8:0] n_0_2_po_8;
    assign n_0_2_po_8 = (4'd0) << 4;

    wire [3:0] n_0_2_po_9_a;
    assign n_0_2_po_9_a = inp[39:36];
    //mask 1 : [0]
    //weight abs(-38) : 6'b100110
    wire [9:0] n_0_2_po_9;
    assign n_0_2_po_9 = (n_0_2_po_9_a[0]) << 5;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = 9'b101010000 + n_0_2_po_8;
    wire [13:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = n_0_2_po_0 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6 + n_0_2_po_7 + n_0_2_po_9;
    wire signed [14:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) - $signed({1'b0,n_0_2_sum_neg});

    wire signed [14:0] n_0_2_sum_f;
    assign n_0_2_sum_f = $signed(n_0_2_sum);
    //relu
    wire [7:0] n_0_2, n_0_2_qrelu;
    DW01_satrnd #(14, 11, 4) USR_n_0_2 ( .din(n_0_2_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_2_qrelu));
    assign n_0_2 = (n_0_2_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_2_qrelu);

// layer: 0 - neuron: 3
    wire [3:0] n_0_3_po_0_a;
    assign n_0_3_po_0_a = inp[3:0];
    //mask 0 : []
    //weight abs(-77) : 7'b1001101
    wire [10:0] n_0_3_po_0;
    assign n_0_3_po_0 = (4'd0) << 6;

    wire [3:0] n_0_3_po_1_a;
    assign n_0_3_po_1_a = inp[7:4];
    //mask 0 : []
    //weight abs(-77) : 7'b1001101
    wire [10:0] n_0_3_po_1;
    assign n_0_3_po_1 = (4'd0) << 6;

    wire [3:0] n_0_3_po_2_a;
    assign n_0_3_po_2_a = inp[11:8];
    //mask 0 : []
    //weight abs(-22) : 5'b10110
    wire [8:0] n_0_3_po_2;
    assign n_0_3_po_2 = (4'd0) << 4;

    wire [3:0] n_0_3_po_3_a;
    assign n_0_3_po_3_a = inp[15:12];
    //mask 0 : []
    //weight abs(-74) : 7'b1001010
    wire [10:0] n_0_3_po_3;
    assign n_0_3_po_3 = (4'd0) << 6;

    wire [3:0] n_0_3_po_4_a;
    assign n_0_3_po_4_a = inp[19:16];
    //mask 0 : []
    //weight abs(-72) : 7'b1001000
    wire [10:0] n_0_3_po_4;
    assign n_0_3_po_4 = (4'd0) << 6;

    wire [3:0] n_0_3_po_5_a;
    assign n_0_3_po_5_a = inp[23:20];
    //mask 9 : [0, 3]
    //weight 57 : 6'b111001
    wire [9:0] n_0_3_po_5;
    assign n_0_3_po_5 = (n_0_3_po_5_a[0] + (n_0_3_po_5_a[3] << 3)) << 5;

    wire [3:0] n_0_3_po_6_a;
    assign n_0_3_po_6_a = inp[27:24];
    //mask 0 : []
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_3_po_6;
    assign n_0_3_po_6 = (4'd0) << 4;

    //weight 0 : skip
    wire [3:0] n_0_3_po_8_a;
    assign n_0_3_po_8_a = inp[35:32];
    //mask 0 : []
    //weight 20 : 5'b10100
    wire [8:0] n_0_3_po_8;
    assign n_0_3_po_8 = (4'd0) << 4;

    wire [3:0] n_0_3_po_9_a;
    assign n_0_3_po_9_a = inp[39:36];
    //mask 0 : []
    //weight 53 : 6'b110101
    wire [9:0] n_0_3_po_9;
    assign n_0_3_po_9 = (4'd0) << 5;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_3_sum_pos;
    assign n_0_3_sum_pos = n_0_3_po_5 + n_0_3_po_8 + n_0_3_po_9;
    wire [13:0] n_0_3_sum_neg;
    assign n_0_3_sum_neg = 10'b1111000000 + n_0_3_po_0 + n_0_3_po_1 + n_0_3_po_2 + n_0_3_po_3 + n_0_3_po_4 + n_0_3_po_6;
    wire signed [14:0] n_0_3_sum;
    assign n_0_3_sum = $signed({1'b0,n_0_3_sum_pos}) - $signed({1'b0,n_0_3_sum_neg});

    wire signed [14:0] n_0_3_sum_f;
    assign n_0_3_sum_f = $signed(n_0_3_sum);
    //relu
    wire [7:0] n_0_3, n_0_3_qrelu;
    DW01_satrnd #(14, 11, 4) USR_n_0_3 ( .din(n_0_3_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_3_qrelu));
    assign n_0_3 = (n_0_3_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_3_qrelu);

// layer: 0 - neuron: 4
    wire [3:0] n_0_4_po_0_a;
    assign n_0_4_po_0_a = inp[3:0];
    //mask 0 : []
    //weight abs(-81) : 7'b1010001
    wire [10:0] n_0_4_po_0;
    assign n_0_4_po_0 = (4'd0) << 6;

    wire [3:0] n_0_4_po_1_a;
    assign n_0_4_po_1_a = inp[7:4];
    //mask 0 : []
    //weight abs(-97) : 7'b1100001
    wire [10:0] n_0_4_po_1;
    assign n_0_4_po_1 = (4'd0) << 6;

    wire [3:0] n_0_4_po_2_a;
    assign n_0_4_po_2_a = inp[11:8];
    //mask 0 : []
    //weight abs(-79) : 7'b1001111
    wire [10:0] n_0_4_po_2;
    assign n_0_4_po_2 = (4'd0) << 6;

    wire [3:0] n_0_4_po_3_a;
    assign n_0_4_po_3_a = inp[15:12];
    //mask 0 : []
    //weight abs(-124) : 7'b1111100
    wire [10:0] n_0_4_po_3;
    assign n_0_4_po_3 = (4'd0) << 6;

    wire [3:0] n_0_4_po_4_a;
    assign n_0_4_po_4_a = inp[19:16];
    //mask 0 : []
    //weight abs(-89) : 7'b1011001
    wire [10:0] n_0_4_po_4;
    assign n_0_4_po_4 = (4'd0) << 6;

    wire [3:0] n_0_4_po_5_a;
    assign n_0_4_po_5_a = inp[23:20];
    //mask 0 : []
    //weight abs(-115) : 7'b1110011
    wire [10:0] n_0_4_po_5;
    assign n_0_4_po_5 = (4'd0) << 6;

    wire [3:0] n_0_4_po_6_a;
    assign n_0_4_po_6_a = inp[27:24];
    //mask 0 : []
    //weight abs(-83) : 7'b1010011
    wire [10:0] n_0_4_po_6;
    assign n_0_4_po_6 = (4'd0) << 6;

    wire [3:0] n_0_4_po_7_a;
    assign n_0_4_po_7_a = inp[31:28];
    //mask 0 : []
    //weight abs(-74) : 7'b1001010
    wire [10:0] n_0_4_po_7;
    assign n_0_4_po_7 = (4'd0) << 6;

    wire [3:0] n_0_4_po_8_a;
    assign n_0_4_po_8_a = inp[35:32];
    //mask 0 : []
    //weight abs(-38) : 6'b100110
    wire [9:0] n_0_4_po_8;
    assign n_0_4_po_8 = (4'd0) << 5;

    wire [3:0] n_0_4_po_9_a;
    assign n_0_4_po_9_a = inp[39:36];
    //mask 0 : []
    //weight abs(-102) : 7'b1100110
    wire [10:0] n_0_4_po_9;
    assign n_0_4_po_9 = (4'd0) << 6;

    //accumulate positive/negative subproducts

    //WARN: only negative weights with relu. Using zero
    wire signed [15:0] n_0_4_sum;
    assign n_0_4_sum = $signed({16{1'b0}});

    wire signed [15:0] n_0_4_sum_f;
    assign n_0_4_sum_f = $signed(n_0_4_sum);
    //relu
    wire [7:0] n_0_4, n_0_4_qrelu;
    DW01_satrnd #(15, 11, 4) USR_n_0_4 ( .din(n_0_4_sum_f[14:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_4_qrelu));
    assign n_0_4 = (n_0_4_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_4_qrelu);

// layer: 0 - neuron: 5
    wire [3:0] n_0_5_po_0_a;
    assign n_0_5_po_0_a = inp[3:0];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_5_po_0;
    assign n_0_5_po_0 = (4'd0) << 6;

    wire [3:0] n_0_5_po_1_a;
    assign n_0_5_po_1_a = inp[7:4];
    //mask 1 : [0]
    //weight abs(-12) : 4'b1100
    wire [7:0] n_0_5_po_1;
    assign n_0_5_po_1 = (n_0_5_po_1_a[0]) << 3;

    wire [3:0] n_0_5_po_2_a;
    assign n_0_5_po_2_a = inp[11:8];
    //mask 0 : []
    //weight abs(-59) : 6'b111011
    wire [9:0] n_0_5_po_2;
    assign n_0_5_po_2 = (4'd0) << 5;

    wire [3:0] n_0_5_po_3_a;
    assign n_0_5_po_3_a = inp[15:12];
    //mask 0 : []
    //weight abs(-89) : 7'b1011001
    wire [10:0] n_0_5_po_3;
    assign n_0_5_po_3 = (4'd0) << 6;

    wire [3:0] n_0_5_po_4_a;
    assign n_0_5_po_4_a = inp[19:16];
    //mask 0 : []
    //weight abs(-61) : 6'b111101
    wire [9:0] n_0_5_po_4;
    assign n_0_5_po_4 = (4'd0) << 5;

    wire [3:0] n_0_5_po_5_a;
    assign n_0_5_po_5_a = inp[23:20];
    //mask 0 : []
    //weight abs(-4) : 3'b100
    wire [6:0] n_0_5_po_5;
    assign n_0_5_po_5 = (4'd0) << 2;

    wire [3:0] n_0_5_po_6_a;
    assign n_0_5_po_6_a = inp[27:24];
    //mask 0 : []
    //weight abs(-52) : 6'b110100
    wire [9:0] n_0_5_po_6;
    assign n_0_5_po_6 = (4'd0) << 5;

    wire [3:0] n_0_5_po_7_a;
    assign n_0_5_po_7_a = inp[31:28];
    //mask 0 : []
    //weight 56 : 6'b111000
    wire [9:0] n_0_5_po_7;
    assign n_0_5_po_7 = (4'd0) << 5;

    wire [3:0] n_0_5_po_8_a;
    assign n_0_5_po_8_a = inp[35:32];
    //mask 0 : []
    //weight abs(-44) : 6'b101100
    wire [9:0] n_0_5_po_8;
    assign n_0_5_po_8 = (4'd0) << 5;

    wire [3:0] n_0_5_po_9_a;
    assign n_0_5_po_9_a = inp[39:36];
    //mask 0 : []
    //weight abs(-29) : 5'b11101
    wire [8:0] n_0_5_po_9;
    assign n_0_5_po_9 = (4'd0) << 4;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_5_sum_pos;
    assign n_0_5_sum_pos = n_0_5_po_7;
    wire [13:0] n_0_5_sum_neg;
    assign n_0_5_sum_neg = 11'b10001110000 + n_0_5_po_0 + n_0_5_po_1 + n_0_5_po_2 + n_0_5_po_3 + n_0_5_po_4 + n_0_5_po_5 + n_0_5_po_6 + n_0_5_po_8 + n_0_5_po_9;
    wire signed [14:0] n_0_5_sum;
    assign n_0_5_sum = $signed({1'b0,n_0_5_sum_pos}) - $signed({1'b0,n_0_5_sum_neg});

    wire signed [14:0] n_0_5_sum_f;
    assign n_0_5_sum_f = $signed(n_0_5_sum);
    //relu
    wire [7:0] n_0_5, n_0_5_qrelu;
    DW01_satrnd #(14, 11, 4) USR_n_0_5 ( .din(n_0_5_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_5_qrelu));
    assign n_0_5 = (n_0_5_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_5_qrelu);

// layer: 0 - neuron: 6
    wire [3:0] n_0_6_po_0_a;
    assign n_0_6_po_0_a = inp[3:0];
    //mask 0 : []
    //weight 62 : 6'b111110
    wire [9:0] n_0_6_po_0;
    assign n_0_6_po_0 = (4'd0) << 5;

    wire [3:0] n_0_6_po_1_a;
    assign n_0_6_po_1_a = inp[7:4];
    //mask 0 : []
    //weight abs(-60) : 6'b111100
    wire [9:0] n_0_6_po_1;
    assign n_0_6_po_1 = (4'd0) << 5;

    wire [3:0] n_0_6_po_2_a;
    assign n_0_6_po_2_a = inp[11:8];
    //mask 0 : []
    //weight 71 : 7'b1000111
    wire [10:0] n_0_6_po_2;
    assign n_0_6_po_2 = (4'd0) << 6;

    wire [3:0] n_0_6_po_3_a;
    assign n_0_6_po_3_a = inp[15:12];
    //mask 9 : [0, 3]
    //weight 1 : 1'b1
    wire [4:0] n_0_6_po_3;
    assign n_0_6_po_3 = (n_0_6_po_3_a[0] + (n_0_6_po_3_a[3] << 3));

    wire [3:0] n_0_6_po_4_a;
    assign n_0_6_po_4_a = inp[19:16];
    //mask 0 : []
    //weight abs(-25) : 5'b11001
    wire [8:0] n_0_6_po_4;
    assign n_0_6_po_4 = (4'd0) << 4;

    wire [3:0] n_0_6_po_5_a;
    assign n_0_6_po_5_a = inp[23:20];
    //mask 0 : []
    //weight abs(-73) : 7'b1001001
    wire [10:0] n_0_6_po_5;
    assign n_0_6_po_5 = (4'd0) << 6;

    //weight 0 : skip
    wire [3:0] n_0_6_po_7_a;
    assign n_0_6_po_7_a = inp[31:28];
    //mask 0 : []
    //weight 111 : 7'b1101111
    wire [10:0] n_0_6_po_7;
    assign n_0_6_po_7 = (4'd0) << 6;

    wire [3:0] n_0_6_po_8_a;
    assign n_0_6_po_8_a = inp[35:32];
    //mask 0 : []
    //weight abs(-85) : 7'b1010101
    wire [10:0] n_0_6_po_8;
    assign n_0_6_po_8 = (4'd0) << 6;

    wire [3:0] n_0_6_po_9_a;
    assign n_0_6_po_9_a = inp[39:36];
    //mask 0 : []
    //weight abs(-98) : 7'b1100010
    wire [10:0] n_0_6_po_9;
    assign n_0_6_po_9 = (4'd0) << 6;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_6_sum_pos;
    assign n_0_6_sum_pos = n_0_6_po_0 + n_0_6_po_2 + n_0_6_po_3 + n_0_6_po_7;
    wire [13:0] n_0_6_sum_neg;
    assign n_0_6_sum_neg = 11'b11110100000 + n_0_6_po_1 + n_0_6_po_4 + n_0_6_po_5 + n_0_6_po_8 + n_0_6_po_9;
    wire signed [14:0] n_0_6_sum;
    assign n_0_6_sum = $signed({1'b0,n_0_6_sum_pos}) - $signed({1'b0,n_0_6_sum_neg});

    wire signed [14:0] n_0_6_sum_f;
    assign n_0_6_sum_f = $signed(n_0_6_sum);
    //relu
    wire [7:0] n_0_6, n_0_6_qrelu;
    DW01_satrnd #(14, 11, 4) USR_n_0_6 ( .din(n_0_6_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_6_qrelu));
    assign n_0_6 = (n_0_6_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_6_qrelu);

// layer: 0 - neuron: 7
    wire [3:0] n_0_7_po_0_a;
    assign n_0_7_po_0_a = inp[3:0];
    //mask 0 : []
    //weight abs(-74) : 7'b1001010
    wire [10:0] n_0_7_po_0;
    assign n_0_7_po_0 = (4'd0) << 6;

    wire [3:0] n_0_7_po_1_a;
    assign n_0_7_po_1_a = inp[7:4];
    //mask 0 : []
    //weight 9 : 4'b1001
    wire [7:0] n_0_7_po_1;
    assign n_0_7_po_1 = (4'd0) << 3;

    wire [3:0] n_0_7_po_2_a;
    assign n_0_7_po_2_a = inp[11:8];
    //mask 0 : []
    //weight abs(-114) : 7'b1110010
    wire [10:0] n_0_7_po_2;
    assign n_0_7_po_2 = (4'd0) << 6;

    wire [3:0] n_0_7_po_3_a;
    assign n_0_7_po_3_a = inp[15:12];
    //mask 0 : []
    //weight 71 : 7'b1000111
    wire [10:0] n_0_7_po_3;
    assign n_0_7_po_3 = (4'd0) << 6;

    wire [3:0] n_0_7_po_4_a;
    assign n_0_7_po_4_a = inp[19:16];
    //mask 0 : []
    //weight abs(-61) : 6'b111101
    wire [9:0] n_0_7_po_4;
    assign n_0_7_po_4 = (4'd0) << 5;

    wire [3:0] n_0_7_po_5_a;
    assign n_0_7_po_5_a = inp[23:20];
    //mask 0 : []
    //weight abs(-53) : 6'b110101
    wire [9:0] n_0_7_po_5;
    assign n_0_7_po_5 = (4'd0) << 5;

    wire [3:0] n_0_7_po_6_a;
    assign n_0_7_po_6_a = inp[27:24];
    //mask 0 : []
    //weight 120 : 7'b1111000
    wire [10:0] n_0_7_po_6;
    assign n_0_7_po_6 = (4'd0) << 6;

    wire [3:0] n_0_7_po_7_a;
    assign n_0_7_po_7_a = inp[31:28];
    //mask 0 : []
    //weight abs(-53) : 6'b110101
    wire [9:0] n_0_7_po_7;
    assign n_0_7_po_7 = (4'd0) << 5;

    wire [3:0] n_0_7_po_8_a;
    assign n_0_7_po_8_a = inp[35:32];
    //mask 0 : []
    //weight 65 : 7'b1000001
    wire [10:0] n_0_7_po_8;
    assign n_0_7_po_8 = (4'd0) << 6;

    wire [3:0] n_0_7_po_9_a;
    assign n_0_7_po_9_a = inp[39:36];
    //mask 0 : []
    //weight 45 : 6'b101101
    wire [9:0] n_0_7_po_9;
    assign n_0_7_po_9 = (4'd0) << 5;

    //accumulate positive/negative subproducts
    wire [12:0] n_0_7_sum_pos;
    assign n_0_7_sum_pos = n_0_7_po_1 + n_0_7_po_3 + n_0_7_po_6 + n_0_7_po_8 + n_0_7_po_9;
    wire [12:0] n_0_7_sum_neg;
    assign n_0_7_sum_neg = 11'b10000000000 + n_0_7_po_0 + n_0_7_po_2 + n_0_7_po_4 + n_0_7_po_5 + n_0_7_po_7;
    wire signed [13:0] n_0_7_sum;
    assign n_0_7_sum = $signed({1'b0,n_0_7_sum_pos}) - $signed({1'b0,n_0_7_sum_neg});

    wire signed [13:0] n_0_7_sum_f;
    assign n_0_7_sum_f = $signed(n_0_7_sum);
    //relu
    wire [7:0] n_0_7, n_0_7_qrelu;
    DW01_satrnd #(13, 11, 4) USR_n_0_7 ( .din(n_0_7_sum_f[12:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_7_qrelu));
    assign n_0_7 = (n_0_7_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_7_qrelu);

// layer: 1 - neuron: 0
    wire [7:0] n_1_0_po_0_a;
    assign n_1_0_po_0_a = n_0_0;
    //mask 118 : [1, 2, 4, 5, 6]
    //weight abs(-112) : 7'b1110000
    wire [14:0] n_1_0_po_0;
    assign n_1_0_po_0 = ((n_1_0_po_0_a[1] << 1) + (n_1_0_po_0_a[2] << 2) + (n_1_0_po_0_a[4] << 4) + (n_1_0_po_0_a[5] << 5) + (n_1_0_po_0_a[6] << 6)) << 6;

    wire [7:0] n_1_0_po_1_a;
    assign n_1_0_po_1_a = n_0_1;
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [12:0] n_1_0_po_1;
    assign n_1_0_po_1 = (8'd0) << 4;

    wire [7:0] n_1_0_po_2_a;
    assign n_1_0_po_2_a = n_0_2;
    //mask 46 : [1, 2, 3, 5]
    //weight abs(-83) : 7'b1010011
    wire [14:0] n_1_0_po_2;
    assign n_1_0_po_2 = ((n_1_0_po_2_a[1] << 1) + (n_1_0_po_2_a[2] << 2) + (n_1_0_po_2_a[3] << 3) + (n_1_0_po_2_a[5] << 5)) << 6;

    wire [7:0] n_1_0_po_3_a;
    assign n_1_0_po_3_a = n_0_3;
    //mask 49 : [0, 4, 5]
    //weight 11 : 4'b1011
    wire [11:0] n_1_0_po_3;
    assign n_1_0_po_3 = (n_1_0_po_3_a[0] + (n_1_0_po_3_a[4] << 4) + (n_1_0_po_3_a[5] << 5)) << 3;

    wire [7:0] n_1_0_po_4_a;
    assign n_1_0_po_4_a = n_0_4;
    //mask 23 : [0, 1, 2, 4]
    //weight abs(-120) : 7'b1111000
    wire [14:0] n_1_0_po_4;
    assign n_1_0_po_4 = (n_1_0_po_4_a[0] + (n_1_0_po_4_a[1] << 1) + (n_1_0_po_4_a[2] << 2) + (n_1_0_po_4_a[4] << 4)) << 6;

    wire [7:0] n_1_0_po_5_a;
    assign n_1_0_po_5_a = n_0_5;
    //mask 0 : []
    //weight abs(-27) : 5'b11011
    wire [12:0] n_1_0_po_5;
    assign n_1_0_po_5 = (8'd0) << 4;

    wire [7:0] n_1_0_po_6_a;
    assign n_1_0_po_6_a = n_0_6;
    //mask 92 : [2, 3, 4, 6]
    //weight abs(-92) : 7'b1011100
    wire [14:0] n_1_0_po_6;
    assign n_1_0_po_6 = ((n_1_0_po_6_a[2] << 2) + (n_1_0_po_6_a[3] << 3) + (n_1_0_po_6_a[4] << 4) + (n_1_0_po_6_a[6] << 6)) << 6;

    wire [7:0] n_1_0_po_7_a;
    assign n_1_0_po_7_a = n_0_7;
    //mask 142 : [1, 2, 3, 7]
    //weight abs(-100) : 7'b1100100
    wire [14:0] n_1_0_po_7;
    assign n_1_0_po_7 = ((n_1_0_po_7_a[1] << 1) + (n_1_0_po_7_a[2] << 2) + (n_1_0_po_7_a[3] << 3) + (n_1_0_po_7_a[7] << 7)) << 6;

    //accumulate positive/negative subproducts
    wire [17:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = n_1_0_po_1 + n_1_0_po_3;
    wire [17:0] n_1_0_sum_neg;
    assign n_1_0_sum_neg = 13'b1000001000000 + n_1_0_po_0 + n_1_0_po_2 + n_1_0_po_4 + n_1_0_po_5 + n_1_0_po_6 + n_1_0_po_7;
    wire signed [18:0] n_1_0_sum;
    assign n_1_0_sum = $signed({1'b0,n_1_0_sum_pos}) - $signed({1'b0,n_1_0_sum_neg});

    wire signed [18:0] n_1_0_sum_f;
    assign n_1_0_sum_f = $signed(n_1_0_sum);
    //relu
    wire [17:0] n_1_0;
    assign n_1_0 = (n_1_0_sum_f<0) ? $unsigned({18{1'b0}}) : $unsigned(n_1_0_sum_f);

// layer: 1 - neuron: 1
    wire [7:0] n_1_1_po_0_a;
    assign n_1_1_po_0_a = n_0_0;
    //mask 0 : []
    //weight 6 : 3'b110
    wire [10:0] n_1_1_po_0;
    assign n_1_1_po_0 = (8'd0) << 2;

    wire [7:0] n_1_1_po_1_a;
    assign n_1_1_po_1_a = n_0_1;
    //mask 11 : [0, 1, 3]
    //weight 3 : 2'b11
    wire [9:0] n_1_1_po_1;
    assign n_1_1_po_1 = (n_1_1_po_1_a[0] + (n_1_1_po_1_a[1] << 1) + (n_1_1_po_1_a[3] << 3)) << 1;

    wire [7:0] n_1_1_po_2_a;
    assign n_1_1_po_2_a = n_0_2;
    //mask 173 : [0, 2, 3, 5, 7]
    //weight abs(-90) : 7'b1011010
    wire [14:0] n_1_1_po_2;
    assign n_1_1_po_2 = (n_1_1_po_2_a[0] + (n_1_1_po_2_a[2] << 2) + (n_1_1_po_2_a[3] << 3) + (n_1_1_po_2_a[5] << 5) + (n_1_1_po_2_a[7] << 7)) << 6;

    wire [7:0] n_1_1_po_3_a;
    assign n_1_1_po_3_a = n_0_3;
    //mask 14 : [1, 2, 3]
    //weight abs(-60) : 6'b111100
    wire [13:0] n_1_1_po_3;
    assign n_1_1_po_3 = ((n_1_1_po_3_a[1] << 1) + (n_1_1_po_3_a[2] << 2) + (n_1_1_po_3_a[3] << 3)) << 5;

    wire [7:0] n_1_1_po_4_a;
    assign n_1_1_po_4_a = n_0_4;
    //mask 89 : [0, 3, 4, 6]
    //weight abs(-55) : 6'b110111
    wire [13:0] n_1_1_po_4;
    assign n_1_1_po_4 = (n_1_1_po_4_a[0] + (n_1_1_po_4_a[3] << 3) + (n_1_1_po_4_a[4] << 4) + (n_1_1_po_4_a[6] << 6)) << 5;

    //weight 0 : skip
    wire [7:0] n_1_1_po_6_a;
    assign n_1_1_po_6_a = n_0_6;
    //mask 22 : [1, 2, 4]
    //weight abs(-46) : 6'b101110
    wire [13:0] n_1_1_po_6;
    assign n_1_1_po_6 = ((n_1_1_po_6_a[1] << 1) + (n_1_1_po_6_a[2] << 2) + (n_1_1_po_6_a[4] << 4)) << 5;

    wire [7:0] n_1_1_po_7_a;
    assign n_1_1_po_7_a = n_0_7;
    //mask 29 : [0, 2, 3, 4]
    //weight 54 : 6'b110110
    wire [13:0] n_1_1_po_7;
    assign n_1_1_po_7 = (n_1_1_po_7_a[0] + (n_1_1_po_7_a[2] << 2) + (n_1_1_po_7_a[3] << 3) + (n_1_1_po_7_a[4] << 4)) << 5;

    //accumulate positive/negative subproducts
    wire [16:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = 7'b1000000 + n_1_1_po_0 + n_1_1_po_1 + n_1_1_po_7;
    wire [16:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = n_1_1_po_2 + n_1_1_po_3 + n_1_1_po_4 + n_1_1_po_6;
    wire signed [17:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) - $signed({1'b0,n_1_1_sum_neg});

    wire signed [17:0] n_1_1_sum_f;
    assign n_1_1_sum_f = $signed(n_1_1_sum);
    //relu
    wire [16:0] n_1_1;
    assign n_1_1 = (n_1_1_sum_f<0) ? $unsigned({17{1'b0}}) : $unsigned(n_1_1_sum_f);

// argmax: 2 classes, need 2 bits
// argmax inp: n_1_0, n_1_1
    //comp level 0
    wire cmp_0_0;
    wire [17:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    assign out = argmax_idx_0_0;

endmodule
