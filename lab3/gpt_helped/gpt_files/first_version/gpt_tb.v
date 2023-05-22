module StopwatchTestbench;

  // Inputs
  reg clk_100MHz;
  reg btn_reset, btn_pause;
  reg sw_sel, sw_adj;

  // Outputs
  wire clk_1Hz, clk_faster, clk_blink;
  wire [3:0] an_out;
  reg [6:0] seg_out;

  // Instantiate the Stopwatch module
  Stopwatch stopwatch (
    .clk(clk_100MHz),
    .rst(btn_reset),
    .pause(btn_pause),
    .sel(sw_sel),
    .adj(sw_adj),
    .clk_1Hz(clk_1Hz),
    .clk_faster(clk_faster),
    .clk_blink(clk_blink),
    .seg(seg_out),
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
