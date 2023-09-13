module serial_receiver_tb;

  // Declare signals
  reg clk, reset, in;
  wire [7:0] out_byte;
  wire done;

  // Instantiate the serial receiver module
  serial_receiver u_serial_receiver (
    .clk(clk),
    .in(in),
    .reset(reset),
    .out_byte(out_byte),
    .done(done)
  );

  // Generate clock signal with 10 ns period
  always #5 clk = ~clk;

  // Generate stimulus for input signal
  initial begin
    // Initialize signals
    clk = 1;
    reset = 1;
    in = 1;
    #10; // Wait for 10 ns

    // Release reset
    reset = 0;
    #10; // Wait for 10 ns

    // Send first byte with odd parity (101001011)
    in = 0; #10; // Start bit
    in = 1; #10; // Bit0
    in = 1; #10; // Bit1
    in = 0; #10; // Bit2
    in = 0; #10; // Bit3
    in = 1; #10; // Bit4
    in = 0; #10; // Bit5
    in = 1; #10; // Bit6
    in = 0; #10; // Bit7
    in = 1; #10; // Parity bit
    in = 1; #10; // Stop bit

    // Send second byte with odd parity (001001011)
    in = 0; #10; // Start bit
    in = 1; #10; // Bit0
    in = 1; #10; // Bit1
    in = 0; #10; // Bit2
    in = 0; #10; // Bit3
    in = 1; #10; // Bit4
    in = 0; #10; // Bit5
    in = 0; #10; // Bit6
    in = 0; #10; // Bit7
    in = 1; #10; // Parity bit
    in = 1; #10; // Stop bit

    // Wait for the done signal
    #100; // Adjust this delay as needed

    $finish;
  end

  // Monitor the output signals and print the results
  initial begin
    $monitor ("Time: %t, out_byte: %h, done: %b", $time, out_byte, done);
  end
endmodule
