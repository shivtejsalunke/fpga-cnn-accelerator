`timescale 1ns/1ps
module tb_cnn_top;
 logic clk=0,rst_n=0,valid_in=0;logic signed [7:0] activation,weight;logic signed [23:0] accumulator_in,result;logic valid_out;
 always #5 clk=~clk; cnn_top dut(.*);
 initial begin activation=0;weight=0;accumulator_in=0;#12;rst_n=1;@(negedge clk);activation=3;weight=4;accumulator_in=1;valid_in=1;@(negedge clk);valid_in=0;if(!valid_out||result!==13)$fatal(1,"top mismatch valid=%b result=%0d",valid_out,result);@(negedge clk);if(valid_out)$fatal(1,"valid_out should clear");$display("PASS tb_cnn_top");$finish;end
endmodule
