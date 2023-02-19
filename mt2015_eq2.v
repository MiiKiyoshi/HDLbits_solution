module top_module ( input [1:0] A, input [1:0] B, output z ); 

wire [1:0] each_bit;
assign each_bit = ~(A^B);
assign z = each_bit[0]&each_bit[1];

endmodule
