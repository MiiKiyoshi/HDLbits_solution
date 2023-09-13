module PS_2_packet_parser_and_datapath(
    input clk,
    input [7:0] in,
    input reset,    // Synchronous reset
    output reg [23:0] out_bytes,
    output reg done); //

    reg [1:0] state, next_state;

    parameter BYTE1_DONE = 2'd0, BYTE1 = 2'd1, BYTE2 = 2'd2, BYTE3 = 2'd3;

    // State transition logic (combinational)
    always @(*) begin
      case(state)
        BYTE1_DONE: next_state = in[3]? BYTE2 : BYTE1;
        BYTE1: next_state = in[3]? BYTE2 : BYTE1;
        BYTE2: next_state = BYTE3;
        BYTE3: next_state = BYTE1_DONE;
        default: next_state = next_state;
      endcase
    end

    // State flip-flops (sequential)
    always @(posedge clk) begin
      if(reset) begin
        out_bytes <= 24'b0;
        done <= 0;
        state <= BYTE1;
      end else begin
        state <= next_state;
      end
    end
 
    // Output logic
    always @(*) begin
      done =  (state == BYTE1_DONE);
    end

    always @(posedge clk) begin
      case(state)
        BYTE1_DONE: out_bytes[23:16] = in;
        BYTE1: out_bytes[23:16] = in;
        BYTE2: out_bytes[15:8] = in;
        BYTE3: out_bytes[7:0] = in;
      endcase
    end

endmodule
