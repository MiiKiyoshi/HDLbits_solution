module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss
); 

endmodule

module bcd60(
  input clk,
  input reset,
  input enable,
  output reg [7:0] q
);

wire [3:0] digit1, digit2;
wire u_c10_2_en;
wire real_reset, over_reset;

assign u_c10_2_en = (digit1 == 4'd9) & enable;
assign over_reset = (digit2 == 4'd5) & (digit1 == 4'd9);
assign real_reset = reset | over_reset;

count10 u_count10_1(
    .clk(clk),
    .reset(real_reset),
    .enable(enable),
    .q(digit1)
);

count10 u_count10_2(
    .clk(clk),
    .reset(real_reset),
    .enable(u_c10_2_en),
    .q(digit2)
);

assign q = {digit2, digit1};

endmodule

module bcd12(

);

endmodule

module count10(
    input clk,
    input reset,
    input enable,
    output reg [3:0] q
);

always @(posedge clk) begin
    if(reset) begin
        q = 0;
    end else if(enable) begin
      if(q == 4'd9)
        q = 0;
      else
        q = q + 1;
    end
end

endmodule
