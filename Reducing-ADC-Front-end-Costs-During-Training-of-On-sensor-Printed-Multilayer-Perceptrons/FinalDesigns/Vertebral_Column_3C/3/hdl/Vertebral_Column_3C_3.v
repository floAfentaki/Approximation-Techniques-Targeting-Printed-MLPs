//weights: [[[-16, 4, 0, 0, 4, 0], [32, -64, 32, 64, 128, -256], [64, -64, 64, 128, 128, 256]], [[0, 8, -16], [-2, -16, 16], [2, 16, -8]]]
//intercepts: [[-16, 16, -32], [8, 8, -16]]
module top (inp, out);
input [23:0] inp;
output [1:0] out;

// layer: 0 - neuron: 0
    //weight abs(-16) : 5'b10000
    wire [8:0] n_0_0_po_0;
    assign n_0_0_po_0 = (inp[3:0]) << 4;

    //weight 4 : 3'b100
    wire [6:0] n_0_0_po_1;
    assign n_0_0_po_1 = (inp[7:4]) << 2;

    //weight 0 : skip
    //weight 0 : skip
    //weight 4 : 3'b100
    wire [6:0] n_0_0_po_4;
    assign n_0_0_po_4 = (inp[19:16]) << 2;

    //weight 0 : skip
    //accumulate positive/negative subproducts
    wire [9:0] n_0_0_sum_pos;
    assign n_0_0_sum_pos = n_0_0_po_1 + n_0_0_po_4;
    wire [9:0] n_0_0_sum_neg;
    assign n_0_0_sum_neg = 9'b100000000 + n_0_0_po_0;
    wire signed [10:0] n_0_0_sum;
    assign n_0_0_sum = $signed({1'b0,n_0_0_sum_pos}) - $signed({1'b0,n_0_0_sum_neg});

    wire signed [10:0] n_0_0_sum_f;
    assign n_0_0_sum_f = $signed(n_0_0_sum);
    //relu
    wire [2:0] n_0_0, n_0_0_qrelu;
    assign n_0_0_qrelu = n_0_0_sum_f[10:8];
    assign n_0_0 = (n_0_0_sum_f<0) ? $unsigned({3{1'b0}}) : $unsigned(n_0_0_qrelu);

// layer: 0 - neuron: 1
    //weight 32 : 6'b100000
    wire [9:0] n_0_1_po_0;
    assign n_0_1_po_0 = (inp[3:0]) << 5;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_1_po_1;
    assign n_0_1_po_1 = (inp[7:4]) << 6;

    //weight 32 : 6'b100000
    wire [9:0] n_0_1_po_2;
    assign n_0_1_po_2 = (inp[11:8]) << 5;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_1_po_3;
    assign n_0_1_po_3 = (inp[15:12]) << 6;

    //weight 128 : 8'b10000000
    wire [11:0] n_0_1_po_4;
    assign n_0_1_po_4 = (inp[19:16]) << 7;

    //weight abs(-256) : 9'b100000000
    wire [12:0] n_0_1_po_5;
    assign n_0_1_po_5 = (inp[23:20]) << 8;

    //accumulate positive/negative subproducts
    wire [13:0] n_0_1_sum_pos;
    assign n_0_1_sum_pos = 9'b100000000 + n_0_1_po_0 + n_0_1_po_2 + n_0_1_po_3 + n_0_1_po_4;
    wire [13:0] n_0_1_sum_neg;
    assign n_0_1_sum_neg = n_0_1_po_1 + n_0_1_po_5;
    wire signed [14:0] n_0_1_sum;
    assign n_0_1_sum = $signed({1'b0,n_0_1_sum_pos}) - $signed({1'b0,n_0_1_sum_neg});

    wire signed [14:0] n_0_1_sum_f;
    assign n_0_1_sum_f = $signed(n_0_1_sum);
    //relu
    wire [2:0] n_0_1, n_0_1_qrelu;
    DW01_satrnd #(14, 10, 8) USR_n_0_1 ( .din(n_0_1_sum_f[13:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_1_qrelu));
    assign n_0_1 = (n_0_1_sum_f<0) ? $unsigned({3{1'b0}}) : $unsigned(n_0_1_qrelu);

// layer: 0 - neuron: 2
    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_0;
    assign n_0_2_po_0 = (inp[3:0]) << 6;

    //weight abs(-64) : 7'b1000000
    wire [10:0] n_0_2_po_1;
    assign n_0_2_po_1 = (inp[7:4]) << 6;

    //weight 64 : 7'b1000000
    wire [10:0] n_0_2_po_2;
    assign n_0_2_po_2 = (inp[11:8]) << 6;

    //weight 128 : 8'b10000000
    wire [11:0] n_0_2_po_3;
    assign n_0_2_po_3 = (inp[15:12]) << 7;

    //weight 128 : 8'b10000000
    wire [11:0] n_0_2_po_4;
    assign n_0_2_po_4 = (inp[19:16]) << 7;

    //weight 256 : 9'b100000000
    wire [12:0] n_0_2_po_5;
    assign n_0_2_po_5 = (inp[23:20]) << 8;

    //accumulate positive/negative subproducts
    wire [14:0] n_0_2_sum_pos;
    assign n_0_2_sum_pos = n_0_2_po_0 + n_0_2_po_2 + n_0_2_po_3 + n_0_2_po_4 + n_0_2_po_5;
    wire [14:0] n_0_2_sum_neg;
    assign n_0_2_sum_neg = 10'b1000000000 + n_0_2_po_1;
    wire signed [15:0] n_0_2_sum;
    assign n_0_2_sum = $signed({1'b0,n_0_2_sum_pos}) - $signed({1'b0,n_0_2_sum_neg});

    wire signed [15:0] n_0_2_sum_f;
    assign n_0_2_sum_f = $signed(n_0_2_sum);
    //relu
    wire [2:0] n_0_2, n_0_2_qrelu;
    DW01_satrnd #(15, 10, 8) USR_n_0_2 ( .din(n_0_2_sum_f[14:0]), .tc(1'b0), .rnd(1'b0), .ov(), .sat(1'b1), .dout(n_0_2_qrelu));
    assign n_0_2 = (n_0_2_sum_f<0) ? $unsigned({3{1'b0}}) : $unsigned(n_0_2_qrelu);

// layer: 1 - neuron: 0
    //weight 0 : skip
    //weight 8 : 4'b1000
    wire [6:0] n_1_0_po_1;
    assign n_1_0_po_1 = (n_0_1) << 3;

    //weight abs(-16) : 5'b10000
    wire [7:0] n_1_0_po_2;
    assign n_1_0_po_2 = (n_0_2) << 4;

    //accumulate positive/negative subproducts
    wire [7:0] n_1_0_sum_pos;
    assign n_1_0_sum_pos = 5'b10000 + n_1_0_po_1;
    wire [7:0] n_1_0_sum_neg;
    assign n_1_0_sum_neg = n_1_0_po_2;
    wire signed [8:0] n_1_0_sum;
    assign n_1_0_sum = $signed({1'b0,n_1_0_sum_pos}) - $signed({1'b0,n_1_0_sum_neg});

    wire signed [8:0] n_1_0_sum_f;
    assign n_1_0_sum_f = $signed(n_1_0_sum);
    //linear
    wire signed [8:0] n_1_0;
    assign n_1_0 = n_1_0_sum_f;

// layer: 1 - neuron: 1
    //weight abs(-2) : 2'b10
    wire [4:0] n_1_1_po_0;
    assign n_1_1_po_0 = (n_0_0) << 1;

    //weight abs(-16) : 5'b10000
    wire [7:0] n_1_1_po_1;
    assign n_1_1_po_1 = (n_0_1) << 4;

    //weight 16 : 5'b10000
    wire [7:0] n_1_1_po_2;
    assign n_1_1_po_2 = (n_0_2) << 4;

    //accumulate positive/negative subproducts
    wire [8:0] n_1_1_sum_pos;
    assign n_1_1_sum_pos = 5'b10000 + n_1_1_po_2;
    wire [8:0] n_1_1_sum_neg;
    assign n_1_1_sum_neg = n_1_1_po_0 + n_1_1_po_1;
    wire signed [9:0] n_1_1_sum;
    assign n_1_1_sum = $signed({1'b0,n_1_1_sum_pos}) - $signed({1'b0,n_1_1_sum_neg});

    wire signed [9:0] n_1_1_sum_f;
    assign n_1_1_sum_f = $signed(n_1_1_sum);
    //linear
    wire signed [9:0] n_1_1;
    assign n_1_1 = n_1_1_sum_f;

// layer: 1 - neuron: 2
    //weight 2 : 2'b10
    wire [4:0] n_1_2_po_0;
    assign n_1_2_po_0 = (n_0_0) << 1;

    //weight 16 : 5'b10000
    wire [7:0] n_1_2_po_1;
    assign n_1_2_po_1 = (n_0_1) << 4;

    //weight abs(-8) : 4'b1000
    wire [6:0] n_1_2_po_2;
    assign n_1_2_po_2 = (n_0_2) << 3;

    //accumulate positive/negative subproducts
    wire [8:0] n_1_2_sum_pos;
    assign n_1_2_sum_pos = n_1_2_po_0 + n_1_2_po_1;
    wire [8:0] n_1_2_sum_neg;
    assign n_1_2_sum_neg = 6'b100000 + n_1_2_po_2;
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
