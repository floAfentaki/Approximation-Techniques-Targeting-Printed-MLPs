//weights: [[[-4, -16, -8, -8, -16, 8, 0], [0, 0, 0, 0, 0, 0, 0], [-8, -4, 4, 16, -8, -8, -32]], [[-32, 0, 64], [-32, 0, -64], [64, 0, -16]]]
//intercepts: [[16, -4, 16], [-32, 32, -16]]
module top (inp, out);
input [27:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    //weight abs(-4) : 3'b100
    wire [6:0] n_0_0_po_0;
    assign n_0_0_po_0 = (inp[3:0]) << 2;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_1;
    assign n_0_0_po_1 = (inp[7:4]) << 4;

    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_0_po_2;
    assign n_0_0_po_2 = (inp[11:8]) << 3;

    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_0_po_3;
    assign n_0_0_po_3 = (inp[15:12]) << 3;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_4;
    assign n_0_0_po_4 = (inp[19:16]) << 4;

    //weight 8 : 4'b1000
    wire [7:0] n_0_0_po_5;
    assign n_0_0_po_5 = (inp[23:20]) << 3;

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [10:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = 9'b100000000 + n_0_0_po_5;
    wire [10:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_0 + n_0_0_po_1 + n_0_0_po_2 + n_0_0_po_3 + n_0_0_po_4;
    wire signed [11:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) - $signed({1'b0,n_0_0_sum_neg});

    wire signed [11:0] n_0_0_sum_f;
    assign n_0_0_sum_f = $signed(n_0_0_sum);
    //relu
    wire [5:0] n_0_0, n_0_0_qrelu;
    DW01_satrnd #(11, 9, 4) USR_n_0_0 ( .din(n_0_0_sum_f[10:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_0_qrelu));
    assign n_0_0 = (n_0_0_sum_f<0) ? $unsigned({6{1'b0}}) : $unsigned(n_0_0_qrelu);

// layer: 0 - neuron: 1
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //weight 0 : skip
    //accumulate positive/negative subproducts

    //WARN: only negative weights with relu. Using zero
    wire signed [7:0] n_0_1_sum;
    assign n_0_1_sum = $signed({8{1'b0}});

    wire signed [7:0] n_0_1_sum_f;
    assign n_0_1_sum_f = $signed(n_0_1_sum);
    //relu
    wire [5:0] n_0_1, n_0_1_qrelu;
    assign n_0_1 = $unsigned({6{1'b0}});

// layer: 0 - neuron: 2
    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_2_po_0;
    assign n_0_2_po_0 = (inp[3:0]) << 3;

    //weight abs(-4) : 3'b100
    wire [6:0] n_0_2_po_1;
    assign n_0_2_po_1 = (inp[7:4]) << 2;

    //weight 4 : 3'b100
    wire [6:0] n_0_2_po_2;
    assign n_0_2_po_2 = (inp[11:8]) << 2;

    //weight 16 : 5'b10000
    wire [8:0] n_0_2_po_3;
    assign n_0_2_po_3 = (inp[15:12]) << 4;

    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_2_po_4;
    assign n_0_2_po_4 = (inp[19:16]) << 3;

    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_2_po_5;
    assign n_0_2_po_5 = (inp[23:20]) << 3;

    //weight abs(-32) : 6'b100000
    wire [9:0] n_0_2_po_6;
    assign n_0_2_po_6 = (inp[27:24]) << 5;

    //accumulate positive/negative subproducts
    wire [10:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = 9'b100000000 + n_0_2_po_2 + n_0_2_po_3;
    wire [10:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = n_0_2_po_0 + n_0_2_po_1 + n_0_2_po_4 + n_0_2_po_5 + n_0_2_po_6;
    wire signed [11:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) - $signed({1'b0,n_0_2_sum_neg});

    wire signed [11:0] n_0_2_sum_f;
    assign n_0_2_sum_f = $signed(n_0_2_sum);
    //relu
    wire [5:0] n_0_2, n_0_2_qrelu;
    DW01_satrnd #(11, 9, 4) USR_n_0_2 ( .din(n_0_2_sum_f[10:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_2_qrelu));
    assign n_0_2 = (n_0_2_sum_f<0) ? $unsigned({6{1'b0}}) : $unsigned(n_0_2_qrelu);

// layer: 1 - neuron: 0
    //weight abs(-32) : 6'b100000
    wire [11:0] n_1_0_po_0;
    assign n_1_0_po_0 = (n_0_0) << 5;

    //weight 0 : skip
    //weight 64 : 7'b1000000
    wire [12:0] n_1_0_po_2;
    assign n_1_0_po_2 = (n_0_2) << 6;

    //accumulate positive/negative subproducts
    wire [12:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = n_1_0_po_2;
    wire [12:0] n_1_0_sum_neg;
    assign n_1_0_sum_neg = 9'b100000000 + n_1_0_po_0;
    wire signed [13:0] n_1_0_sum;
    assign n_1_0_sum = $signed({1'b0,n_1_0_sum_pos}) - $signed({1'b0,n_1_0_sum_neg});

    wire signed [13:0] n_1_0_sum_f;
    assign n_1_0_sum_f = $signed(n_1_0_sum);
    //linear
    wire signed [13:0] n_1_0;
    assign n_1_0 = n_1_0_sum_f;

// layer: 1 - neuron: 1
    //weight abs(-32) : 6'b100000
    wire [11:0] n_1_1_po_0;
    assign n_1_1_po_0 = (n_0_0) << 5;

    //weight 0 : skip
    //weight abs(-64) : 7'b1000000
    wire [12:0] n_1_1_po_2;
    assign n_1_1_po_2 = (n_0_2) << 6;

    //accumulate positive/negative subproducts
    wire [13:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = 9'b100000000;
    wire [13:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = n_1_1_po_0 + n_1_1_po_2;
    wire signed [14:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) - $signed({1'b0,n_1_1_sum_neg});

    wire signed [14:0] n_1_1_sum_f;
    assign n_1_1_sum_f = $signed(n_1_1_sum);
    //linear
    wire signed [14:0] n_1_1;
    assign n_1_1 = n_1_1_sum_f;

// layer: 1 - neuron: 2
    //weight 64 : 7'b1000000
    wire [12:0] n_1_2_po_0;
    assign n_1_2_po_0 = (n_0_0) << 6;

    //weight 0 : skip
    //weight abs(-16) : 5'b10000
    wire [10:0] n_1_2_po_2;
    assign n_1_2_po_2 = (n_0_2) << 4;

    //accumulate positive/negative subproducts
    wire [12:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = n_1_2_po_0;
    wire [12:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = 8'b10000000 + n_1_2_po_2;
    wire signed [13:0] n_1_2_sum;
    assign n_1_2_sum = $signed({1'b0,n_1_2_sum_pos}) - $signed({1'b0,n_1_2_sum_neg});

    wire signed [13:0] n_1_2_sum_f;
    assign n_1_2_sum_f = $signed(n_1_2_sum);
    //linear
    wire signed [13:0] n_1_2;
    assign n_1_2 = n_1_2_sum_f;

// argmax: 3 classes, need 2 bits
// argmax inp: n_1_0, n_1_1, n_1_2
    //comp level 0
    wire cmp_0_0;
    wire signed [14:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire signed [14:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= n_1_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : n_1_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
