module top_module (
	input [2:0] SW,      // R
	input [1:0] KEY,     // L and clk
	output [2:0] LEDR);  // Q

wire clk, l;
wire [2:0] r, d;
reg [2:0] q;

// input 연결
assign clk = KEY[0];
assign l = KEY[1];
assign r = SW;

// output 연결
assign LEDR = q;

assign d[0] = l? r[0] : q[2];
assign d[1] = l? r[1] : q[0];
assign d[2] = l? r[2] : q[1] ^ q[2];

always @(posedge clk) begin
  q = d;
end

endmodule
