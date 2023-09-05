module top_module(
    input clk,
    input load,
    input ena,
    input [1:0] amount,
    input [63:0] data,
    output reg [63:0] q
); 

// 관건: left-shift할때는 부호 신경 ㄴㄴ
// 하지만 right-shift할때는 MSB의 기존 부호를 유지 시켜야 됨

always @(posedge clk) begin
  if(load) begin
    q <= data;
  end else if(ena) begin
    case(amount)
      2'b00: q <= {q[62:0], 1'b0};
      2'b01: q <= {q[55:0], 8'b0};
      2'b10: q <= {q[63], q[63:1]};
      2'b11: q <= {{8{q[63]}}, q[63:8]};
    endcase
  end
end

endmodule
