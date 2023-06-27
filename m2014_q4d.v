module top_module(
  input clk,
  input in,
  output out
);

  wire d;
  reg q;

  assign d = in ^ q;

  always @(posedge clk)
    q = d;

  assign out = q;

endmodule
