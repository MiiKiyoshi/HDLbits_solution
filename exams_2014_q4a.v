module top_module (
    input clk,
    input w, R, E, L,
    output Q
);

wire Lin, D;

assign Lin = E? w : Q;

assign D = L? R : Lin;

always @(posedge clk) 
  Q = D;


endmodule
