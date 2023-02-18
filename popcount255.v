`default_nettype none

module top_module(
  input [254:0] in,
  output reg [7:0] out
);

reg [7:0] num;
integer i;

always @(*) begin
  num = 0;
  for(i=0;i<$bits(in);i=i+1) begin
    if(in[i]==1)
      num = num + 1;
  end
  out = num;
end

/*
always @(*) begin	// Combinational always block
		out = 0;
		for (int i=0;i<255;i++)
			out = out + in[i]; 
    //굳이 if문으로 in[i]가 1인지 확인할 필요 없이 그냥 out에다가 in[i]를 더하면 되네 허허
	end
*/

endmodule
