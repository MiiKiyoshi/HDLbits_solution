module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

wire [7:0] qd1, qd2, qt;

my_dff8 dff1 (.clk(clk), .d(d), .q(qd1));
my_dff8 dff2 (.clk(clk), .d(qd1), .q(qd2));
my_dff8 dff3 (.clk(clk), .d(qd2), .q(qt));

// if else statements로 만든 MUX
/*
always @(*) begin
  if(sel == 2'b00) begin
    q = d;
  end else if (sel == 2'b01) begin
    q = qd1;
  end else if (sel == 2'b10) begin
    q = qd2;
  end else begin
    q = qt;
  end
end
*/

// begin/end keywords are mandatory when you have multiple statements within an always block.
// case statement is considered a single statement. so don't need begin/end
always @(*)
  case(sel)
    2'b00: q = d;
    2'b01: q = qd1;
    2'b10: q = qd2;
    2'b11: q = qt;
  endcase

endmodule
