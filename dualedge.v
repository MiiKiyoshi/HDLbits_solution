module top_module(
 input clk,
 input d,
 output q
);

reg q1, q2;

always @(posedge clk)
  q1 <= d;
always @(negedge clk)
  q2 <= d;

assign q = clk? q1:q2; // clk가 조건문의 조건이 될 수도 있음

endmodule
