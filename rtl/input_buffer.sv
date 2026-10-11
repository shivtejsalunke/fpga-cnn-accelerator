module input_buffer #(parameter int DATA_W=8,DEPTH=16,ADDR_W=(DEPTH<=2)?1:$clog2(DEPTH)) (
 input logic clk,rst_n,write_en, input logic [ADDR_W-1:0] write_addr,
 input logic signed [DATA_W-1:0] write_data, input logic [ADDR_W-1:0] read_addr,
 output logic signed [DATA_W-1:0] read_data
);
 logic signed [DATA_W-1:0] memory[0:DEPTH-1];
 always_ff @(posedge clk) if(write_en && write_addr<DEPTH) memory[write_addr]<=write_data;
 always_comb if(read_addr<DEPTH) read_data=memory[read_addr]; else read_data='0;
endmodule
