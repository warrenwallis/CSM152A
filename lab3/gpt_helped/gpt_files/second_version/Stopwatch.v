module Stopwatch (
  input wire clk,          // System clock input
  input wire rst,          // Reset button input
  input wire pause,        // Pause button input
  input wire adj,
  input reg [3:0] switches,  // Slider switches input
  output reg [6:0] seg_out,   // Seven-segment display output
  output reg [3:0] an_out     // Anode control for multiplexing
);

  // Define constants
  localparam CLK_DIV = 23;  // Clock division factor for 2 Hz clock
  localparam BLINK_RATE = 50000000; // Blink rate for adjust mode (1 Hz)
  localparam MAX_MINUTES = 99;
  localparam MAX_SECONDS = 59;

  // Define registers
  reg [6:0] seconds_display;
  reg [6:0] minutes_display;
  reg [6:0] adjust_display;
  reg [3:0] sel;
  reg adj_mode;
  reg pause_state;
  reg [3:0] counter_sec;
  reg [3:0] counter_min;

  // Define debouncer parameters
  localparam CLK_DIV_DEBOUNCE = 23;  // Clock division factor for debouncer
  reg [1:0] debounce_cnt;
  reg [1:0] debounce_adj_cnt;
  reg [3:0] debounce_adj_sel;
  reg [1:0] debounce_pause_cnt;
  reg [1:0] debounce_rst_cnt;
  reg rst_pressed;
  reg adj_pressed;
  reg pause_pressed;

  // Instantiate Clock Module
  reg clk_2hz, clk_1hz, clk_faster, clk_blink;
  ClockModule clock_inst (
    .clk(clk),
    .clk_2hz(clk_2hz),
    .clk_1hz(clk_1hz),
    .clk_faster(clk_faster),
    .clk_blink(clk_blink)
  );

  // Instantiate Debouncer for buttons and switches
  reg debounced_sel, debounced_adj, debounced_pause, debounced_rst;
  Debouncer debouncer_inst (
    .clk(clk),
    .signal_in(switches[0]),
    .signal_out(debounced_sel)
  );
  Debouncer debouncer_adj (
    .clk(clk),
    .signal_in(switches[1]),
    .signal_out(debounced_adj)
  );
  Debouncer debouncer_pause (
    .clk(clk),
    .signal_in(pause),
    .signal_out(debounced_pause)
  );
  Debouncer debouncer_rst (
    .clk(clk),
    .signal_in(rst),
    .signal_out(debounced_rst)
  );

  // Increment seconds counter every second
  always @(posedge clk_1hz) begin
    if (!pause_state && !adj_mode)
      counter_sec <= counter_sec + 1;
  end

  // Increment minutes counter every 60 seconds
  always @(posedge clk_1hz) begin
    if (counter_sec == MAX_SECONDS && !adj_mode) begin
      if (counter_min == MAX_MINUTES) begin
        counter_min <= 4'b0;
      end
      else begin
        counter_min <= counter_min + 1;
        counter_sec <= 4'b0;
      end
    end
  end

  // Update the display values
  always @(posedge clk_faster) begin
    seconds_display <= counter_sec;
    minutes_display <= counter_min;
    adjust_display <= adj_mode ? (sel ? counter_sec : counter_min) : 7'b1111111;
  end

  // Handle reset button
  always @(posedge clk_2hz) begin
    if (debounced_rst && !rst_pressed) begin
      rst_pressed <= 1;
      counter_sec <= 4'b0;
      counter_min <= 4'b0;
      pause_state <= 1'b0;
    end else begin
      rst_pressed <= 0;
    end
  end

  // Handle pause button
  always @(posedge clk_2hz) begin
    if (debounced_pause && !pause_pressed) begin
      pause_pressed <= 1;
      pause_state <= ~pause_state;
    end else begin
      pause_pressed <= 0;
    end
  end

  // Handle adjust mode button
  always @(posedge clk_2hz) begin
    if (debounced_adj && !adj_pressed) begin
      adj_pressed <= 1;
      adj_mode <= ~adj_mode;
      debounce_adj_sel <= sel;
    end else begin
      adj_pressed <= 0;
    end
  end

  // Handle switch selection
  always @(posedge clk_2hz) begin
    if (debounced_sel)
      sel <= switches[3:2];
  end

  // Handle adjust mode clock
  always @(posedge clk_blink) begin
    if (adj_mode)
      adjust_display <= adjust_display ^ 7'b1111111;
  end

  // Handle seven-segment multiplexing
  always @(posedge clk_faster) begin
    case (an_out)
      4'b1110: seg_out <= seconds_display;
      4'b1101: seg_out <= seconds_display;
      4'b1011: seg_out <= minutes_display;
      4'b0111: seg_out <= minutes_display;
      default: seg_out <= 7'b1111111;
    endcase

    an_out <= (an_out != 4'b0111) ? an_out + 1 : 4'b1110;
  end

endmodule
