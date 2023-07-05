module top_module(
  input clk,
  input x,
  output z
);

wire q1, q2, q3;
reg d1, d2, d3;

initial begin
  q1 = 1'b0;
  q2 = 1'b0;
  q3 = 1'b0;
  d1 = 1'b0;
  d2 = 1'b0;
  d3 = 1'b0;
end

always @(posedge clk) begin
  q1 <= d1;
  q2 <= d2;
  q3 <= d3;
end

assign d1 = x ^ q1;
assign d2 = x & ~q2;
assign d3 = x | ~q3;

assign z = ~(q1 | q2 | q3);

endmodule


