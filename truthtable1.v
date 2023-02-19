/*
* Boolean expression
* Sum of products of the truth table
* f = x3'x2x1' + x3'x2x1 + x3x2'x1 + x3x2x1
*   = x3'x2 + x3x1
*
*   in verilog
*   = ((~x3) & x2) | (x3 & x1)
*/
module top_module(
  input x3,
  input x2,
  input x1,
  output f
);

assign f = ((~x3)&x2)|(x3&x1);

endmodule

