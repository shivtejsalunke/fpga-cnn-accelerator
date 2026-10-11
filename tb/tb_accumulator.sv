`timescale 1ns/1ps
module tb_accumulator;
 logic clk=0,rst_n=0,clear=0,enable=0; logic signed [7:0] data_in,value;
 always #5 clk=~clk; accumulator #(.W(8)) dut(.*);
 initial begin data_in=0;#2;rst_n=0;#10;rst_n=1;@(negedge clk);enable=1;data_in=10;@(negedge clk);data_in=-3;@(negedge clk);enable=0;if(value!==7)$fatal(1,"expected 7, got %0d",value);@(negedge clk);clear=1;@(negedge clk);clear=0;if(value!==0)$fatal(1,"clear failed");$display("PASS tb_accumulator");$finish;end
endmodule
