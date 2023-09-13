module serial_receiver(
    input clk,
    input in,
    input reset,    // Synchronous reset
    output [7:0] out_byte,
    output done
); 

  // Current and next state registers
  reg [3:0] state, next_state;

  // Define state parameters
  parameter BIT0   = 4'd0, 
            BIT1   = 4'd1,
            BIT2   = 4'd2,
            BIT3   = 4'd3,
            BIT4   = 4'd4,
            BIT5   = 4'd5,
            BIT6   = 4'd6,
            BIT7   = 4'd7,
            START  = 4'd8,
            PARITY = 4'd9,
            STOP   = 4'd10, 
            IDLE   = 4'd11, 
            ERROR  = 4'd12;

wire odd;
parity u_parity(
    .clk(clk),
    .reset(!((state>=BIT0) && (state<=BIT7))),
    .in(in),
    .odd(odd)
);

  // State transition logic
  // Serial protocol은 LSB부터 보낸다고 합니다.
  always @(*) begin
    case(state)
      BIT0   : next_state = BIT1;
      BIT1   : next_state = BIT2;
      BIT2   : next_state = BIT3;
      BIT3   : next_state = BIT4;
      BIT4   : next_state = BIT5;
      BIT5   : next_state = BIT6;
      BIT6   : next_state = BIT7;
      BIT7   : next_state = PARITY;
      PARITY : next_state = in? STOP : ERROR;
      START  : next_state = BIT0;
      STOP   : next_state = in? IDLE : START;
      IDLE   : next_state = in? IDLE : START;
      ERROR  : next_state = in? IDLE : ERROR;
    endcase
  end
  
  reg valid;

  // State flip-flops 
  always @(posedge clk) begin
    if(reset) begin
      state <= IDLE;
    end else begin
      state <= next_state;
      valid <= odd;
    end
  end
  
  // Output logic
  assign done = (state == STOP) && valid;
  reg [7:0] out_byte_ff;

  always @(posedge clk) begin
    if(reset) begin
      out_byte_ff <= 8'b0;
    end else begin
      case(next_state)
        BIT0: out_byte_ff[0] <= in;
        BIT1: out_byte_ff[1] <= in;
        BIT2: out_byte_ff[2] <= in;
        BIT3: out_byte_ff[3] <= in;
        BIT4: out_byte_ff[4] <= in;
        BIT5: out_byte_ff[5] <= in;
        BIT6: out_byte_ff[6] <= in;
        BIT7: out_byte_ff[7] <= in;
        default: out_byte_ff <= out_byte_ff;
      endcase
    end
  end

  assign out_byte = (state == STOP)? out_byte_ff : 8'b0;

endmodule

module parity (
    input clk,
    input reset,
    input in,
    output reg odd);

    always @(posedge clk)
        if (reset) odd <= 0;
        else if (in) odd <= ~odd;

endmodule
