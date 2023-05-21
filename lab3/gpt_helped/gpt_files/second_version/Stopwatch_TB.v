module Stopwatch_TB;

  wire clk;
  wire rst;
  wire pause;
  wire adj;
  reg [3:0] switches;
  reg [6:0] seg_out;
  reg an_out;

  // Instantiate the Stopwatch module
  Stopwatch stopwatch (
    .clk(clk),
    .rst(rst),
    .pause(pause),
    .adj(adj),
    .switches(switches),
    .seg_out(seg_out),
    .an_out(an_out)
  );

  // Clock generation
  always begin
    clk = 0;
    #5;
    clk = 1;
    #5;
  end

  initial begin
    // Initialize inputs
    rst = 1;
    pause = 0;
    adj = 0;
    switches = 4'b0000;

    // Reset the stopwatch
    #10;
    rst = 0;
    #10;
    rst = 1;

    // Start the stopwatch
    #10;
    pause = 1;

    // Simulate for some time
    #100;
    adj = 1;
    switches = 4'b0001;  // Adjust seconds

    #100;
    adj = 0;
    switches = 4'b0010;  // Adjust minutes

    #100;
    adj = 1;
    switches = 4'b0000;  // Adjust minutes

    #100;
    adj = 0;

    // Pause the stopwatch
    #50;
    pause = 0;

    // Simulate for some more time
    #200;

    $finish;
  end

endmodule
