module top_module(
    input clk,
    input areset,    // Asynchronous reset to OFF
    input j,
    input k,
    output out
);
  parameter OFF=0, ON=1; 
  reg state, next_state;

  // update state
  always @(posedge clk or posedge areset) begin
    if(areset) begin
      state <= OFF;
    end else begin
      state <= next_state;
    end 
  end

  // calculate next_state
  always @(*) begin
    case(state)
      ON: next_state = k? OFF : ON;
      OFF: next_state = j? ON : OFF;
    endcase
  end

  assign out = (state == ON);
  
endmodule
