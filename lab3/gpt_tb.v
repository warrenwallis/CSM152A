module StopwatchTestbench;

  // Inputs
  reg clk_100MHz;
  reg btn_reset, btn_pause;
  reg sw_sel, sw_adj;

  // Outputs
  wire clk_1Hz, clk_faster, clk_blink;
  wire [6:0] seg_out;
  wire [3:0] an_out;

  // Instantiate the Stopwatch module
  Stopwatch stopwatch (
    .clk_100MHz(clk_100MHz),
    .btn_reset(btn_reset),
    .btn_pause(btn_pause),
    .sw_sel(sw_sel),
    .sw_adj(sw_adj),
    .clk_1Hz(clk_1Hz),
    .clk_faster(clk_faster),
    .clk_blink(clk_blink),
    .seg_out(seg_out),
    .an_out(an_out)
  );

  // Clock generation
  always begin
    clk_100MHz = 1;
    #5;
    clk_100MHz = 0;
    #5;
  end

  // Test scenario
  initial begin
    // Initialize inputs
    btn_reset = 0;
    btn_pause = 0;
    sw_sel = 0;
    sw_adj = 0;

    // Apply reset
    #10;
    btn_reset = 1;
    #10;
    btn_reset = 0;

    // Wait for some time
    #100;

    // Adjust minutes
    sw_adj = 1;
    sw_sel = 0;
    #100;
    sw_adj = 0;

    // Wait for some time
    #100;

    // Adjust seconds
    sw_adj = 1;
    sw_sel = 1;
    #100;
    sw_adj = 0;

    // Press pause button
    btn_pause = 1;
    #50;
    btn_pause = 0;

    // Wait for some time
    #200;

    // Press pause button again
    btn_pause = 1;
    #50;
    btn_pause = 0;

    // Wait for some time
    #200;

    // Press reset button
    btn_reset = 1;
    #50;
    btn_reset = 0;

    // Wait for some time
    #200;

    // Stop simulation
    $finish;
  end

endmodule
