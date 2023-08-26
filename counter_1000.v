module top_module (
    input clk,
    input reset,
    output OneHertz,
    output [2:0] c_enable
);

wire [3:0] q_0, q_1, q_2;

assign c_enable[0] = 1; // 켜놓기
assign c_enable[1] = (q_0 == 4'd9); // 9일때
assign c_enable[2] = (q_0 == 4'd9 & q_1 == 4'd9); // 99일때
assign OneHertz = (q_2 == 4'd9 & q_1 == 4'd9 & q_0 == 4'd9); // 999일때

// totally stupid 코드
//assign c_enable[0] = 1; // 켜놓기
//assign c_enable[1] = (q_0 == 4'd9); // 9일때
//assign c_enable[2] = (q_1 == 4'd9); // 90일때
//assign OneHertz = (q_2 == 4'd9);    // 810일때

bcdcount counter0(
    .clk(clk),
    .reset(reset),
    .enable(c_enable[0]),
    .Q(q_0)
);

bcdcount counter1(
    .clk(clk),
    .reset(reset),
    .enable(c_enable[1]),
    .Q(q_1)
);

bcdcount counter2(
    .clk(clk),
    .reset(reset),
    .enable(c_enable[2]),
    .Q(q_2)
);

endmodule
