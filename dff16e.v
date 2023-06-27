module top_module(
  input clk,
  input resetn,
  input [1:0] byteena,
  input [15:0] d,
  output [15:0] q
);

reg [15:0] q_reg;

always @(posedge clk) begin
  if(!resetn) begin
    q_reg <= 15'b0;
  end else begin
    if(byteena[1]) begin
      q_reg[15:8] <= d[15:8];
    end
    if(byteena[0]) begin
      q_reg[7:0] <= d[7:0];
    end
  end
end

assign q = q_reg;

endmodule


// 오답 
//always @(posedge clk) begin
//  if(!resetn) begin
//    q_reg <= 15'b0;
//  end else begin
//    if(byteena[1]) begin
//      q_reg[15:8] <= d[15:8];
//    end else if(byteena[0]) begin <- 뭐해 ㅁㅊㄴㅇ 위의 if문이 실행되면 else
//    그 다음은 실행이 안되잖아 ㅁㅊ새끼야
//      q_reg[7:0] <= d[7:0];
//    end
//  end
//end
