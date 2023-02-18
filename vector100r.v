default_nettype none

//vector100r.v
module top_module( 
    input [99:0] in,
    output [99:0] out
);

integer i;

always @(*) 
  for(i=0;i<100;i=i+1) 
    out[i] = in[99-i];
  //이게 되네 

/*
* solution
*
always @(*)
  for (i=0;i<$bits(out);i=i+1)
    out[i] = in[$bits(out)-1-i];
*/

endmodule
