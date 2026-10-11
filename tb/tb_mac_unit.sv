`timescale 1ns/1ps
module tb_mac_unit;
 logic signed [7:0] a,b; logic signed [23:0] acc,result;
 mac_unit #(.A_W(8),.B_W(8),.ACC_W(24)) dut(.*);
 task automatic check(input integer ai,bi,ci,expected);
  a=ai;b=bi;acc=ci;#1;
  if(result!==expected) $fatal(1,"MAC mismatch %0d*%0d+%0d got %0d expected %0d",ai,bi,ci,result,expected);
 endtask
 initial begin check(0,0,0,0);check(7,9,2,65);check(-7,9,2,-61);check(-128,-128,0,16384);check(127,127,-16129,0);$display("PASS tb_mac_unit");$finish;end
endmodule
