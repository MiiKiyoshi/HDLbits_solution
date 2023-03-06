module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

  wire cout[3:0];

  fadd fadd1(
    .x(x[0]),
    .y(y[0]),
    .cin(0),
    .cout(cout[0]),
    .sum(sum[0])
  );

  fadd fadd2(
    .x(x[1]),
    .y(y[1]),
    .cin(cout[0]),
    .cout(cout[1]),
    .sum(sum[1])
  );

  fadd fadd3(
    .x(x[2]),
    .y(y[2]),
    .cin(cout[1]),
    .cout(cout[2]),
    .sum(sum[2])
  );

  fadd fadd4(
    .x(x[3]),
    .y(y[3]),
    .cin(cout[2]),
    .cout(cout[3]),
    .sum(sum[3])
  );

  assign sum[4] = cout[3];

endmodule

module fadd (
  input x, y, cin,
  output cout, sum
);

assign {cout, sum} = x + y + cin;

endmodule
