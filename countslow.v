module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q
);

reg slowena_p;

always @(posedge clk) begin
  slowena_p <= slowena;
  if(reset)
    q <= 4'b0;
  else
    if(slowena_p && ~slowena)
      q <= q + 1;
end

endmodule

