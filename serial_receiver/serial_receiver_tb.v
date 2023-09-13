module serial_receiver_tb;

  // Declare signals for testbench
  reg clk;
  reg in;
  reg reset;
  wire [7:0] out_byte;
  wire done;

  // Instantiate the DUT (Design Under Test)
  serial_receiver uut (
    .clk(clk),
    .in(in),
    .reset(reset),
    .out_byte(out_byte),
    .done(done)
  );

  // Clock generation
  always begin
    #5 clk = ~clk; // Create a clock signal with a period of 10 time units
  end

  integer i;
  reg [7:0] bit;
  // Test sequence
  initial begin
    // Initialize signals
    clk = 1;
    in = 1; // Idle state
    reset = 0;
    bit = 8'b00000000;

    // Reset the DUT
    reset = 1;
    #20 reset = 0;

    for (i = 0; i < 2; i = i + 1) begin
      // Wait for start bit (in = 0)
      #10 in = 0;

      // Send 8 data bits
      #10 bit[0] = $random & 1; in = bit[0]; // Data bit 0
      #10 bit[1] = $random & 1; in = bit[1]; // Data bit 1
      #10 bit[2] = $random & 1; in = bit[2]; // Data bit 2
      #10 bit[3] = $random & 1; in = bit[3]; // Data bit 3
      #10 bit[4] = $random & 1; in = bit[4]; // Data bit 4
      #10 bit[5] = $random & 1; in = bit[5]; // Data bit 5
      #10 bit[6] = $random & 1; in = bit[6]; // Data bit 6
      #10 bit[7] = $random & 1; in = bit[7]; // Data bit 7

      // Wait for stop bit (in = 1)
      #10 in = 1;

      // Check if the byte is received correctly
      $display("Transmitted Byte: %h\nReceived byte: %h", bit, out_byte);
    end

    // Finish the simulation
    $finish;
  end

endmodule
