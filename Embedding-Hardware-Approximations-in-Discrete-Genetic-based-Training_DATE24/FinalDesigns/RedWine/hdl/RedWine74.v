//weights: [[[-16, -64, -16, -64, -64, 64, -128, 64, -16, 64, 2], [-64, 64, -32, -64, 64, 8, 64, 64, -32, -64, -64]], [[-64, -32], [-64, 0], [16, 64], [64, 16], [64, -128], [32, -64]]]
//intercepts: [[64, 64], [0, 32, 64, 64, 64, -128]]
module top (inp, out);
input [43:0] inp;
output [2:0] out;

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
    //weight abs(-64) : 7'b1000000
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
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_3;
    assign n_0_0_po_3 = (4'd0) << 6;

    wire [3:0] n_0_0_po_4_a;
    assign n_0_0_po_4_a = inp[19:16];
    //mask 10 : [1, 3]
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_0_po_4;
    assign n_0_0_po_4 = ((n_0_0_po_4_a[1] << 1) + (n_0_0_po_4_a[3] << 3)) << 6;

    wire [3:0] n_0_0_po_5_a;
    assign n_0_0_po_5_a = inp[23:20];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_5;
    assign n_0_0_po_5 = (4'd0) << 6;

    wire [3:0] n_0_0_po_6_a;
    assign n_0_0_po_6_a = inp[27:24];
    //mask 4 : [2]
    //weight abs(-128) : 8'b10000000
    wire [11:0] n_0_0_po_6;
    assign n_0_0_po_6 = ((n_0_0_po_6_a[2] << 2)) << 7;

    wire [3:0] n_0_0_po_7_a;
    assign n_0_0_po_7_a = inp[31:28];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_7;
    assign n_0_0_po_7 = (4'd0) << 6;

    wire [3:0] n_0_0_po_8_a;
    assign n_0_0_po_8_a = inp[35:32];
    //mask 1 : [0]
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_8;
    assign n_0_0_po_8 = (n_0_0_po_8_a[0]) << 4;

    wire [3:0] n_0_0_po_9_a;
    assign n_0_0_po_9_a = inp[39:36];
    //mask 6 : [1, 2]
    //weight 64 : 7'b1000000
    wire [10:0] n_0_0_po_9;
    assign n_0_0_po_9 = ((n_0_0_po_9_a[1] << 1) + (n_0_0_po_9_a[2] << 2)) << 6;

    wire [3:0] n_0_0_po_10_a;
    assign n_0_0_po_10_a = inp[43:40];
    //mask 12 : [2, 3]
    //weight 2 : 2'b10
    wire [5:0] n_0_0_po_10;
    assign n_0_0_po_10 = ((n_0_0_po_10_a[2] << 2) + (n_0_0_po_10_a[3] << 3)) << 1;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = 11'b10000000000 + n_0_0_po_5 + n_0_0_po_7 + n_0_0_po_9 + n_0_0_po_10;
    wire [13:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4 + n_0_0_po_6 + n_0_0_po_8;
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
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_0;
    assign n_0_1_po_0 = (4'd0) << 6;

    wire [3:0] n_0_1_po_1_a;
    assign n_0_1_po_1_a = inp[7:4];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_1;
    assign n_0_1_po_1 = (4'd0) << 6;

    wire [3:0] n_0_1_po_2_a;
    assign n_0_1_po_2_a = inp[11:8];
    //mask 0 : []
    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_1_po_2;
    assign n_0_1_po_2 = (4'd0) << 5;

    wire [3:0] n_0_1_po_3_a;
    assign n_0_1_po_3_a = inp[15:12];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_3;
    assign n_0_1_po_3 = (4'd0) << 6;

    wire [3:0] n_0_1_po_4_a;
    assign n_0_1_po_4_a = inp[19:16];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_4;
    assign n_0_1_po_4 = (4'd0) << 6;

    wire [3:0] n_0_1_po_5_a;
    assign n_0_1_po_5_a = inp[23:20];
    //mask 0 : []
    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_5;
    assign n_0_1_po_5 = (4'd0) << 3;

    wire [3:0] n_0_1_po_6_a;
    assign n_0_1_po_6_a = inp[27:24];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_6;
    assign n_0_1_po_6 = (4'd0) << 6;

    wire [3:0] n_0_1_po_7_a;
    assign n_0_1_po_7_a = inp[31:28];
    //mask 0 : []
    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_7;
    assign n_0_1_po_7 = (4'd0) << 6;

    wire [3:0] n_0_1_po_8_a;
    assign n_0_1_po_8_a = inp[35:32];
    //mask 0 : []
    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_1_po_8;
    assign n_0_1_po_8 = (4'd0) << 5;

    wire [3:0] n_0_1_po_9_a;
    assign n_0_1_po_9_a = inp[39:36];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_9;
    assign n_0_1_po_9 = (4'd0) << 6;

    wire [3:0] n_0_1_po_10_a;
    assign n_0_1_po_10_a = inp[43:40];
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_10;
    assign n_0_1_po_10 = (4'd0) << 6;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = 11'b10000000000 + n_0_1_po_1 + n_0_1_po_4 + n_0_1_po_5 + n_0_1_po_6 + n_0_1_po_7;
    wire [13:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = n_0_1_po_0 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_8 + n_0_1_po_9 + n_0_1_po_10;
    wire signed [14:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) - $signed({1'b0,n_0_1_sum_neg});

    wire signed [14:0] n_0_1_sum_f;
    assign n_0_1_sum_f = $signed(n_0_1_sum);
    //relu
    wire [7:0] n_0_1, n_0_1_qrelu;
    DW01_satrnd #(14, 11, 4) USR_n_0_1 ( .din(n_0_1_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_1_qrelu));
    assign n_0_1 = (n_0_1_sum_f<0) ? $unsigned({8{1'b0}}) : $unsigned(n_0_1_qrelu);

// layer: 1 - neuron: 0
    wire [7:0] n_1_0_po_0_a;
    assign n_1_0_po_0_a = n_0_0;
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_0_po_0;
    assign n_1_0_po_0 = (8'd0) << 6;

    wire [7:0] n_1_0_po_1_a;
    assign n_1_0_po_1_a = n_0_1;
    //mask 0 : []
    //weight abs(-32) : 6'b100000
    wire [13:0] n_1_0_po_1;
    assign n_1_0_po_1 = (8'd0) << 5;

    //accumulate positive/negative subproducts

    //WARN: only negative weights with relu. Using zero
    wire signed [16:0] n_1_0_sum;
    assign n_1_0_sum = $signed({17{1'b0}});

    wire signed [16:0] n_1_0_sum_f;
    assign n_1_0_sum_f = $signed(n_1_0_sum);
    //relu
    wire [15:0] n_1_0;
    assign n_1_0 = (n_1_0_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_0_sum_f);

// layer: 1 - neuron: 1
    wire [7:0] n_1_1_po_0_a;
    assign n_1_1_po_0_a = n_0_0;
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_1_po_0;
    assign n_1_1_po_0 = (8'd0) << 6;

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [14:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = 12'b100000000000;
    wire [14:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = n_1_1_po_0;
    wire signed [15:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) - $signed({1'b0,n_1_1_sum_neg});

    wire signed [15:0] n_1_1_sum_f;
    assign n_1_1_sum_f = $signed(n_1_1_sum);
    //relu
    wire [14:0] n_1_1;
    assign n_1_1 = (n_1_1_sum_f<0) ? $unsigned({15{1'b0}}) : $unsigned(n_1_1_sum_f);

// layer: 1 - neuron: 2
    wire [7:0] n_1_2_po_0_a;
    assign n_1_2_po_0_a = n_0_0;
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [12:0] n_1_2_po_0;
    assign n_1_2_po_0 = (8'd0) << 4;

    wire [7:0] n_1_2_po_1_a;
    assign n_1_2_po_1_a = n_0_1;
    //mask 113 : [0, 4, 5, 6]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_2_po_1;
    assign n_1_2_po_1 = (n_1_2_po_1_a[0] + (n_1_2_po_1_a[4] << 4) + (n_1_2_po_1_a[5] << 5) + (n_1_2_po_1_a[6] << 6)) << 6;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = 13'b1000000000000 + n_1_2_po_0 + n_1_2_po_1;

    //WARN: only positive weights. Using identity
    wire signed [16:0] n_1_2_sum;
    assign n_1_2_sum = $signed({1'b0,n_1_2_sum_pos});

    wire signed [16:0] n_1_2_sum_f;
    assign n_1_2_sum_f = $signed(n_1_2_sum);
    //relu
    wire [15:0] n_1_2;
    assign n_1_2 = (n_1_2_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_2_sum_f);

// layer: 1 - neuron: 3
    wire [7:0] n_1_3_po_0_a;
    assign n_1_3_po_0_a = n_0_0;
    //mask 217 : [0, 3, 4, 6, 7]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_3_po_0;
    assign n_1_3_po_0 = (n_1_3_po_0_a[0] + (n_1_3_po_0_a[3] << 3) + (n_1_3_po_0_a[4] << 4) + (n_1_3_po_0_a[6] << 6) + (n_1_3_po_0_a[7] << 7)) << 6;

    wire [7:0] n_1_3_po_1_a;
    assign n_1_3_po_1_a = n_0_1;
    //mask 0 : []
    //weight 16 : 5'b10000
    wire [12:0] n_1_3_po_1;
    assign n_1_3_po_1 = (8'd0) << 4;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_3_sum_pos;
    assign n_1_3_sum_pos = 13'b1000000000000 + n_1_3_po_0 + n_1_3_po_1;

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
    //mask 4 : [2]
    //weight 64 : 7'b1000000
    wire [14:0] n_1_4_po_0;
    assign n_1_4_po_0 = ((n_1_4_po_0_a[2] << 2)) << 6;

    wire [7:0] n_1_4_po_1_a;
    assign n_1_4_po_1_a = n_0_1;
    //mask 0 : []
    //weight abs(-128) : 8'b10000000
    wire [15:0] n_1_4_po_1;
    assign n_1_4_po_1 = (8'd0) << 7;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_4_sum_pos;
    assign n_1_4_sum_pos = 13'b1000000000000 + n_1_4_po_0;
    wire [15:0] n_1_4_sum_neg;
    assign n_1_4_sum_neg = n_1_4_po_1;
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
    //mask 0 : []
    //weight 32 : 6'b100000
    wire [13:0] n_1_5_po_0;
    assign n_1_5_po_0 = (8'd0) << 5;

    wire [7:0] n_1_5_po_1_a;
    assign n_1_5_po_1_a = n_0_1;
    //mask 0 : []
    //weight abs(-64) : 7'b1000000
    wire [14:0] n_1_5_po_1;
    assign n_1_5_po_1 = (8'd0) << 6;

    //accumulate positive/negative subproducts
    wire [15:0] n_1_5_sum_pos;
    assign n_1_5_sum_pos = n_1_5_po_0;
    wire [15:0] n_1_5_sum_neg;
    assign n_1_5_sum_neg = 14'b10000000000000 + n_1_5_po_1;
    wire signed [16:0] n_1_5_sum;
    assign n_1_5_sum = $signed({1'b0,n_1_5_sum_pos}) - $signed({1'b0,n_1_5_sum_neg});

    wire signed [16:0] n_1_5_sum_f;
    assign n_1_5_sum_f = $signed(n_1_5_sum);
    //relu
    wire [15:0] n_1_5;
    assign n_1_5 = (n_1_5_sum_f<0) ? $unsigned({16{1'b0}}) : $unsigned(n_1_5_sum_f);

// argmax: 6 classes, need 3 bits
// argmax inp: n_1_0, n_1_1, n_1_2, n_1_3, n_1_4, n_1_5
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

    //comp level 2
    wire cmp_2_0;
    wire [15:0] argmax_val_2_0;
    wire [2:0] argmax_idx_2_0;
    assign {cmp_2_0} = ( argmax_val_1_0 >= argmax_val_0_4 );
    assign {argmax_val_2_0} = ( cmp_2_0 ) ? argmax_val_1_0 : argmax_val_0_4;
    assign {argmax_idx_2_0} = ( cmp_2_0 ) ? argmax_idx_1_0 : argmax_idx_0_4;

    assign out = argmax_idx_2_0;

endmodule
