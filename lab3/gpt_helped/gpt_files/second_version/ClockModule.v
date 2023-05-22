module ClockModule (
  input wire clk,
  output reg clk_2hz,
  output reg clk_1hz,
  output reg clk_faster,
  output reg clk_blink
);

  reg [25:0] counter;

  always @(posedge clk) begin
    counter <= counter + 1;

    // Generate 2 Hz clock
    if (counter % 25000000 == 0)
      clk_2hz <= ~clk_2hz;

    // Generate 1 Hz clock
    if (counter % 50000000 == 0)
      clk_1hz <= ~clk_1hz;

    // Generate faster clock for multiplexing
    if (counter % 500 == 0)
      clk_faster <= ~clk_faster;

    // Generate blink clock for adjust mode
    if (counter % 50000000 == 0)
      clk_blink <= ~clk_blink;
  end

endmodule