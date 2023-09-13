module serial_receiver(
    input clk,
    input in,
    input reset,    // Synchronous reset
    output done
); 

  // Current and next state registers
  reg [3:0] state, next_state;

  // Define state parameters
  parameter BIT0  = 4'd0, 
            BIT1  = 4'd1,
            BIT2  = 4'd2,
            BIT3  = 4'd3,
            BIT4  = 4'd4,
            BIT5  = 4'd5,
            BIT6  = 4'd6,
            BIT7  = 4'd7,
            START = 4'd8,
            STOP  = 4'd9, 
            IDLE  = 4'd10, 
            ERROR = 4'd11;

  // State transition logic
  always @(*) begin
    case(state)
      BIT0 : next_state = BIT1;
      BIT1 : next_state = BIT2;
      BIT2 : next_state = BIT3;
      BIT3 : next_state = BIT4;
      BIT4 : next_state = BIT5;
      BIT5 : next_state = BIT6;
      BIT6 : next_state = BIT7;
      BIT7 : next_state = in? STOP : ERROR;
      START: next_state = BIT0;
      STOP : next_state = in? IDLE : START;
      IDLE : next_state = in? IDLE : START;
      ERROR: next_state = in? IDLE : ERROR;
      default: next_state = IDLE;
    endcase
  end
  
  // State flip-flops 
  always @(posedge clk) begin
    if(reset) begin
      state <= IDLE;
    end else begin
      state <= next_state;
    end
  end
  
  // Output logic
  assign done = (state == STOP);

endmodule
