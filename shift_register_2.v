//exams/2014_q4b

module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); 

wire clk, E, L, w;
wire [3:0] Q; 

assign {w, L, E, clk} = KEY[3:0];
assign LEDR = Q;

MUXDFF u_MUXDFF_0(
    .clk(clk),
    .w(Q[1]), 
    .R(SW[0]), 
    .E(E), 
    .L(L),
    .Q(Q[0])
);

MUXDFF u_MUXDFF_1(
    .clk(clk),
    .w(Q[2]), 
    .R(SW[1]), 
    .E(E), 
    .L(L),
    .Q(Q[1])
);

MUXDFF u_MUXDFF_2(
    .clk(clk),
    .w(Q[3]), 
    .R(SW[2]), 
    .E(E), 
    .L(L),
    .Q(Q[2])
);

MUXDFF u_MUXDFF_3(
    .clk(clk),
    .w(w), 
    .R(SW[3]), 
    .E(E), 
    .L(L),
    .Q(Q[3])
);

endmodule

//-------------------------
module MUXDFF (
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
