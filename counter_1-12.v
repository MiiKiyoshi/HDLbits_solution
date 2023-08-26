module top_module (
    input clk,
    input reset,
    input enable,
    output [3:0] Q,
    output c_enable,
    output c_load,
    output [3:0] c_d
); //

wire thres;
assign thres = (Q == 4'd12);

assign c_d = 4'd1;
assign c_enable = enable;
assign c_load = reset | (thres & enable);

// enable은 1로 돌아가게 만드는 놈이 아니라 멈추는 용도
// enable이 0이 되면 어차피 카운터의 작동은 멈춤 따라서 thres의 영향을 멈춰도 되는거임

count4 u_count4(
    .clk(clk),
    .enable(c_enable),
    .load(c_load),
    .d(c_d),
    .Q(Q)
);

endmodule

