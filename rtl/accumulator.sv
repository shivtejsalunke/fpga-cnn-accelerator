module accumulator #(parameter int W=24) (
 input logic clk,rst_n, input logic clear,enable,
 input logic signed [W-1:0] data_in, output logic signed [W-1:0] value
);
 always_ff @(posedge clk or negedge rst_n) begin
  if(!rst_n) value<='0; else if(clear) value<='0; else if(enable) value<=value+data_in;
 end
endmodule
