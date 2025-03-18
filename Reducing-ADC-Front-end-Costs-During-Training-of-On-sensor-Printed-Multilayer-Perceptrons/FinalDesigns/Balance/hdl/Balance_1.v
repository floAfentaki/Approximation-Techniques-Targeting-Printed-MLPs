//weights: [[[-16, -16, 16, 16], [8, 8, -8, -8], [0, 0, 1, 0]], [[-2, 8, 0], [4, -1, 1], [-4, -8, 0]]]
//intercepts: [[0, 0, -4], [0, 0, 2]]
module top (inp, out);
input [15:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_0;
    assign n_0_0_po_0 = (inp[3:0]) << 4;

    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_1;
    assign n_0_0_po_1 = (inp[7:4]) << 4;

    //weight 16 : 5'b10000
    wire [8:0] n_0_0_po_2;
    assign n_0_0_po_2 = (inp[11:8]) << 4;

    //weight 16 : 5'b10000
    wire [8:0] n_0_0_po_3;
    assign n_0_0_po_3 = (inp[15:12]) << 4;

    //accumulate positive/negative subproducts
    wire [9:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = n_0_0_po_2 + n_0_0_po_3;
    wire [9:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = n_0_0_po_0 + n_0_0_po_1;
    wire signed [10:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) - $signed({1'b0,n_0_0_sum_neg});

    wire signed [10:0] n_0_0_sum_f;
    assign n_0_0_sum_f = $signed(n_0_0_sum);
    //relu
    wire [3:0] n_0_0, n_0_0_qrelu;
    DW01_satrnd #(10, 6, 3) USR_n_0_0 ( .din(n_0_0_sum_f[9:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_0_qrelu));
    assign n_0_0 = (n_0_0_sum_f<0) ? $unsigned({4{1'b0}}) : $unsigned(n_0_0_qrelu);

// layer: 0 - neuron: 1
    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_0;
    assign n_0_1_po_0 = (inp[3:0]) << 3;

    //weight 8 : 4'b1000
    wire [7:0] n_0_1_po_1;
    assign n_0_1_po_1 = (inp[7:4]) << 3;

    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_1_po_2;
    assign n_0_1_po_2 = (inp[11:8]) << 3;

    //weight abs(-8) : 4'b1000
    wire [7:0] n_0_1_po_3;
    assign n_0_1_po_3 = (inp[15:12]) << 3;

    //accumulate positive/negative subproducts
    wire [8:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = n_0_1_po_0 + n_0_1_po_1;
    wire [8:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = n_0_1_po_2 + n_0_1_po_3;
    wire signed [9:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) - $signed({1'b0,n_0_1_sum_neg});

    wire signed [9:0] n_0_1_sum_f;
    assign n_0_1_sum_f = $signed(n_0_1_sum);
    //relu
    wire [3:0] n_0_1, n_0_1_qrelu;
    DW01_satrnd #(9, 6, 3) USR_n_0_1 ( .din(n_0_1_sum_f[8:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_1_qrelu));
    assign n_0_1 = (n_0_1_sum_f<0) ? $unsigned({4{1'b0}}) : $unsigned(n_0_1_qrelu);

// layer: 0 - neuron: 2
    //weight 0 : skip
    //weight 0 : skip
    //weight 1 : 1'b1
    wire [4:0] n_0_2_po_2;
    assign n_0_2_po_2 = (inp[11:8]);

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [6:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = n_0_2_po_2;
    wire [6:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = 7'b1000000;
    wire signed [7:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) - $signed({1'b0,n_0_2_sum_neg});

    wire signed [7:0] n_0_2_sum_f;
    assign n_0_2_sum_f = $signed(n_0_2_sum);
    //relu
    wire [3:0] n_0_2, n_0_2_qrelu;
    DW01_satrnd #(7, 6, 3) USR_n_0_2 ( .din(n_0_2_sum_f[6:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_2_qrelu));
    assign n_0_2 = (n_0_2_sum_f<0) ? $unsigned({4{1'b0}}) : $unsigned(n_0_2_qrelu);

// layer: 1 - neuron: 0
    //weight abs(-2) : 2'b10
    wire [5:0] n_1_0_po_0;
    assign n_1_0_po_0 = (n_0_0) << 1;

    //weight 8 : 4'b1000
    wire [7:0] n_1_0_po_1;
    assign n_1_0_po_1 = (n_0_1) << 3;

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [7:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = n_1_0_po_1;
    wire [7:0] n_1_0_sum_neg;
    assign n_1_0_sum_neg = n_1_0_po_0;
    wire signed [8:0] n_1_0_sum;
    assign n_1_0_sum = $signed({1'b0,n_1_0_sum_pos}) - $signed({1'b0,n_1_0_sum_neg});

    wire signed [8:0] n_1_0_sum_f;
    assign n_1_0_sum_f = $signed(n_1_0_sum);
    //linear
    wire signed [8:0] n_1_0;
    assign n_1_0 = n_1_0_sum_f;

// layer: 1 - neuron: 1
    //weight 4 : 3'b100
    wire [6:0] n_1_1_po_0;
    assign n_1_1_po_0 = (n_0_0) << 2;

    //weight abs(-1) : 1'b1
    wire [4:0] n_1_1_po_1;
    assign n_1_1_po_1 = (n_0_1);

    //weight 1 : 1'b1
    wire [4:0] n_1_1_po_2;
    assign n_1_1_po_2 = (n_0_2);

    //accumulate positive/negative subproducts
    wire [7:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = n_1_1_po_0 + n_1_1_po_2;
    wire [7:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = n_1_1_po_1;
    wire signed [8:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) - $signed({1'b0,n_1_1_sum_neg});

    wire signed [8:0] n_1_1_sum_f;
    assign n_1_1_sum_f = $signed(n_1_1_sum);
    //linear
    wire signed [8:0] n_1_1;
    assign n_1_1 = n_1_1_sum_f;

// layer: 1 - neuron: 2
    //weight abs(-4) : 3'b100
    wire [6:0] n_1_2_po_0;
    assign n_1_2_po_0 = (n_0_0) << 2;

    //weight abs(-8) : 4'b1000
    wire [7:0] n_1_2_po_1;
    assign n_1_2_po_1 = (n_0_1) << 3;

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [8:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = 5'b10000;
    wire [8:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = n_1_2_po_0 + n_1_2_po_1;
    wire signed [9:0] n_1_2_sum;
    assign n_1_2_sum = $signed({1'b0,n_1_2_sum_pos}) - $signed({1'b0,n_1_2_sum_neg});

    wire signed [9:0] n_1_2_sum_f;
    assign n_1_2_sum_f = $signed(n_1_2_sum);
    //linear
    wire signed [9:0] n_1_2;
    assign n_1_2 = n_1_2_sum_f;

// argmax: 3 classes, need 2 bits
// argmax inp: n_1_0, n_1_1, n_1_2
    //comp level 0
    wire cmp_0_0;
    wire signed [9:0] argmax_val_0_0;
    wire [1:0] argmax_idx_0_0;
    assign {cmp_0_0} = ( n_1_0 >= n_1_1 );
    assign {argmax_val_0_0} = ( cmp_0_0 ) ? n_1_0 : n_1_1;
    assign {argmax_idx_0_0} = ( cmp_0_0 ) ? 2'b00 : 2'b01;

    //comp level 1
    wire cmp_1_0;
    wire signed [9:0] argmax_val_1_0;
    wire [1:0] argmax_idx_1_0;
    assign {cmp_1_0} = ( argmax_val_0_0 >= n_1_2 );
    assign {argmax_val_1_0} = ( cmp_1_0 ) ? argmax_val_0_0 : n_1_2;
    assign {argmax_idx_1_0} = ( cmp_1_0 ) ? argmax_idx_0_0 : 2'b10;

    assign out = argmax_idx_1_0;

endmodule
