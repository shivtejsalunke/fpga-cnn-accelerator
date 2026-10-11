module activation_relu #(parameter int W=24) (
 input logic signed [W-1:0] data_in, output logic signed [W-1:0] data_out
);
 always_comb data_out=data_in[W-1] ? '0 : data_in;
endmodule
