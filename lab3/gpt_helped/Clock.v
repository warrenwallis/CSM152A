module Clock (
  input wire clk,
  output reg clk_1hz,
  output reg clk_2hz,
  output reg clk_faster,
  output reg clk_blink
);

  integer counter;
  integer freq_1;
  integer freq_2;
  integer freq_faster;
  integer freq_blink;

  initial begin
    counter = 0;
    freq_1 = 10;
    freq_2 = freq_1 / 2;
    freq_faster = freq_1 / 10;
    freq_blink = freq_1;

    clk_1hz = 0;
    clk_2hz = 0;
    clk_faster = 0;
    clk_blink = 0;
  end

  always @(posedge clk) begin
    counter <= (counter + 1) % freq_1;

    // Generate 1 Hz clock
    if (counter % freq_1 == 0)
      clk_1hz <= ~clk_1hz;

    // Generate 2 Hz clock
    if (counter % freq_2 == 0)
      clk_2hz <= ~clk_2hz;

    // Generate faster clock for multiplexing
    if (counter % freq_faster == 0)
      clk_faster <= ~clk_faster;

    // Generate blink clock for adjust mode
    if (counter % freq_1 == 0)
      clk_blink <= ~clk_blink;
  end

endmodule