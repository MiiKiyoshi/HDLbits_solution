module top_module(input [31:0] a, input [31:0] b, output [31:0] sum);

wire out1sel;
wire [15:0] out2mux, out2_1mux;

add16 adder1(.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(out1sel));

add16 adder2(.a(a[31:16]), .b(b[31:16]), .cin(0), .sum(out2mux), .cout());
add16 adder2_1(.a(a[31:16]), .b(b[31:16]), .cin(1), .sum(out2_1mux), .cout());

always @(*)
  case(out1sel)
    1'b0: sum[31:16] = out2mux;
    1'b1: sum[31:16] = out2_1mux;
  endcase

endmodule

