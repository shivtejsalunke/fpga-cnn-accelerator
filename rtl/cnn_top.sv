module cnn_top #(parameter int DATA_W=8,ACC_W=24) (
 input logic clk,rst_n,valid_in, input logic signed [DATA_W-1:0] activation,weight,
 input logic signed [ACC_W-1:0] accumulator_in, output logic valid_out,
 output logic signed [ACC_W-1:0] result
);
 logic signed [ACC_W-1:0] combinational_result;
 cnn_layer #(.DATA_W(DATA_W),.ACC_W(ACC_W)) layer(.activation(activation),.weight(weight),.accumulator_in(accumulator_in),.accumulator_out(combinational_result));
 always_ff @(posedge clk or negedge rst_n) begin
  if(!rst_n) begin result<='0; valid_out<=0; end
  else begin valid_out<=valid_in; if(valid_in) result<=combinational_result; end
 end
endmodule
