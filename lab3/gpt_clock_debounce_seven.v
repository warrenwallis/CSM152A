module ClockModule (
  input wire clk_100MHz,       // 100 MHz master clock
  output wire clk_1Hz,         // 1 Hz clock
  output wire clk_faster,      // Faster clock for seven-segment multiplexing
  output wire clk_blink        // Clock for blinking in adjust mode
);

  // Define constants
  localparam DIV_1HZ = 25_000_000;      // Divide 100 MHz clock by 25 million for 1 Hz clock
  localparam CLK_DIV_MIN = 50;          // Minimum divide value for faster clock
  localparam CLK_DIV_MAX = 700;         // Maximum divide value for faster clock
  localparam CLK_DIV_BLINK = 7813;      // Divide 100 MHz clock by 7813 for 1.28 Hz blink clock

  // Define registers
  reg [15:0] clk_div_faster;            // Divide value for faster clock

  // Create 1 Hz clock
  reg [31:0] clk_div_1hz;
  always @(posedge clk_100MHz) begin
    if (clk_div_1hz == DIV_1HZ - 1)
      clk_div_1hz <= 0;
    else
      clk_div_1hz <= clk_div_1hz + 1;
  end
  assign clk_1Hz = (clk_div_1hz == DIV_1HZ - 1);

  // Create faster clock for seven-segment multiplexing
  always @(posedge clk_100MHz) begin
    if (clk_div_faster == CLK_DIV_MAX)
      clk_div_faster <= CLK_DIV_MIN;
    else
      clk_div_faster <= clk_div_faster + 1;
  end
  assign clk_faster = (clk_div_faster == CLK_DIV_MIN);

  // Create clock for blinking in adjust mode
  reg [19:0] clk_div_blink;
  always @(posedge clk_100MHz) begin
    if (clk_div_blink == CLK_DIV_BLINK - 1)
      clk_div_blink <= 0;
    else
      clk_div_blink <= clk_div_blink + 1;
  end
  assign clk_blink = (clk_div_blink == CLK_DIV_BLINK - 1);

endmodule


module Debouncer (
  input wire clk,         // Input clock
  input wire reset,       // Reset signal
  input wire raw_input,   // Raw input signal
  output wire debounced   // Debounced output signal
);

  // Define constants
  localparam DEBOUNCE_CNT = 25;   // Debounce counter value

  // Define registers
  reg [DEBOUNCE_CNT-1:0] counter;
  reg debounced_reg;

  always @(posedge clk or posedge reset) begin
    if (reset)
      counter <= {DEBOUNCE_CNT{1'b0}};
    else if (counter == DEBOUNCE_CNT - 1)
      counter <= {DEBOUNCE_CNT{1'b1}};
    else
      counter <= counter + 1;

    if (counter == DEBOUNCE_CNT - 1)
      debounced_reg <= raw_input;
  end

  assign debounced = debounced_reg;

endmodule


module SevenSegmentDisplay (
  input wire clk,                 // Clock for seven-segment multiplexing
  input wire [3:0] data,           // Data to be displayed on seven-segment display
  output reg [6:0] seg_out,        // Seven-segment display output
  output reg [3:0] an_out          // Anode control for multiplexing
);

  // Define constants
  localparam SEG_PATTERN = {
    7'b1000000,  // 0
    7'b1111001,  // 1
    7'b0100100,  // 2
    7'b0110000,  // 3
    7'b0011001,  // 4
    7'b0010010,  // 5
    7'b0000010,  // 6
    7'b1111000,  // 7
    7'b0000000,  // 8
    7'b0010000   // 9
  };

  // Define registers
  reg [1:0] digit_select;

  always @(posedge clk) begin
    digit_select <= digit_select + 1;
    case (digit_select)
      2'b00: begin
        seg_out <= SEG_PATTERN[data[3:0]];
        an_out <= 4'b1110;   // Enable the leftmost digit
      end
      2'b01: begin
        seg_out <= SEG_PATTERN[data[7:4]];
        an_out <= 4'b1101;   // Enable the second digit from the left
      end
      2'b10: begin
        seg_out <= SEG_PATTERN[data[11:8]];
        an_out <= 4'b1011;   // Enable the second digit from the right
      end
      2'b11: begin
        seg_out <= SEG_PATTERN[data[15:12]];
        an_out <= 4'b0111;   // Enable the rightmost digit
      end
    endcase
  end

endmodule
