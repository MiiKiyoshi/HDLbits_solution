module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );

  assign out_both[2:0] = in[2:0] & in[3:1];
  assign out_any[3:1] = in[3:1] | in[2:0];
  assign out_different[3:0] = in[3:0] ^ {in[0],in[3:1]};
//같으면 0 다르면 1 -> xor(^)

/*
  genvar i1, i2, i3;
  generate
    for(i1=0;i1<$bits(in)-1;i1=i1+1) begin: both
      assign out_both[i1] = in[i1] & in[i1+1];
    end

    for(i2=1;i2<$bits(in);i2=i2+1) begin: any
      assign out_any[i2] = in[i2] | in[i2-1];
    end

    for(i3=0;i3<$bits(in)-1;i3=i3+1) begin: different
      assign out_different[i3] = ~(in[i3] == in[i3+1]);
    end
  endgenerate

  assign out_different[3] = ~(in[3] == in[0]);
*/

endmodule

