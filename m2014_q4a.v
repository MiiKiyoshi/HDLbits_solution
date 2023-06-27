//latch를 의도적으로 만들기

module top_module(
    input d,
    input ena,
    output q
);

reg q_reg;

// 아래 sensitivity list를 보면 negedge posedge 이런게 없음
// sensitivity list는 평소에 많이 보는 edge sensitive도 있지만
// level sensitive도 있음 그냥 S.L.이 high일때 활성화 시키는 if문 같은 놈임
always @(d or ena) begin 
    if (ena) begin
        q_reg <= d;
    end
end

// 이 S.L.을 퉁쳐서 *로 간략화 가능함
//always @(*) begin <-- 이렇게
//    if (ena) begin
//        q_reg <= d;
//    end
//end

assign q = q_reg;

endmodule
