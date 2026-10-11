module cnn_layer #(parameter int DATA_W=8,ACC_W=24) (
 input logic signed [DATA_W-1:0] activation,weight,
 input logic signed [ACC_W-1:0] accumulator_in, output logic signed [ACC_W-1:0] accumulator_out
);
 logic signed [ACC_W-1:0] mac_result;
 mac_unit #(.A_W(DATA_W),.B_W(DATA_W),.ACC_W(ACC_W)) mac(.a(activation),.b(weight),.acc(accumulator_in),.result(mac_result));
 activation_relu #(.W(ACC_W)) relu(.data_in(mac_result),.data_out(accumulator_out));
endmodule
