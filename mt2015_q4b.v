/*
* mt2015_q4b.v
*
* Boolean expression
* Sum of products
*
* z = x'y'+xy = (xy'+x'y)'
*   = ~(x ^ y)
*/

module top_module(
  input x,
  input y,
  output z
);

assign z = ~(x ^ y);

endmodule
