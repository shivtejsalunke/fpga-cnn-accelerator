module mac_unit #(parameter int A_W=8, B_W=8, ACC_W=24, parameter bit SATURATE=1'b0) (
 input logic signed [A_W-1:0] a, input logic signed [B_W-1:0] b,
 input logic signed [ACC_W-1:0] acc, output logic signed [ACC_W-1:0] result
);
 localparam int PROD_W=A_W+B_W;
 logic signed [PROD_W-1:0] product;
 logic signed [ACC_W:0] wide_sum;
 logic signed [ACC_W-1:0] max_value,min_value;
 always_comb begin
  product=a*b;
  wide_sum=$signed({acc[ACC_W-1],acc}) + $signed({{(ACC_W+1-PROD_W){product[PROD_W-1]}},product});
  max_value={1'b0,{(ACC_W-1){1'b1}}}; min_value={1'b1,{(ACC_W-1){1'b0}}};
  if(SATURATE) begin
   if(wide_sum > $signed({max_value[ACC_W-1],max_value})) result=max_value;
   else if(wide_sum < $signed({min_value[ACC_W-1],min_value})) result=min_value;
   else result=wide_sum[ACC_W-1:0];
  end else result=wide_sum[ACC_W-1:0];
 end
endmodule
