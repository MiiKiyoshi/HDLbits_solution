/*
module top_module(
  input clk,
  input d,
  input ar,
  output reg q
);

always @(posedge clk or posedge ar) begin
  if(ar) begin
    q = 1'b0;
  end else begin
    q = d;
  end
end

endmodule
*/

module top_module(
  input clk,
  input d,
  input r,
  output reg q
);

always @(posedge clk) begin
  if(r) begin
    q = 1'b0;
  end else begin
    q = d;
  end
end

endmodule
