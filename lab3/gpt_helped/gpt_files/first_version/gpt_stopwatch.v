module Stopwatch (
  input wire clk,       // 100 MHz master clock
  input wire rst,       // RESET button
  input wire pause,     // PAUSE button
  input wire sel,       // SEL switch
  input wire adj,       // ADJ switch
  output wire clk_1Hz,
  output wire clk_faster,
  output wire clk_blink,
  output reg [6:0] seg, // Seven-segment display
  output wire [3:0] an_out
);

  // Define constants
  localparam COUNT_MAX = 9;       // Maximum count value
  localparam CLK_DIV = 6;         // Divide 100 MHz clock by 2^6 for 1.5625 MHz clock
  localparam CLK_DIV_ADJ = 12;    // Divide 100 MHz clock by 2^12 for 15.625 kHz clock

  // Define registers
  reg [3:0] minutes_reg;          // Minutes counter register
  reg [3:0] seconds_reg;          // Seconds counter register
  reg [1:0] count;                // Count for blinking the selected portion
  reg [1:0] count_adj;            // Count for adjusting the selected portion
  reg blink;                      // Blink control flag

  // Define debouncer registers
  reg [25:0] btn1_cnt;            // Button 1 (RESET) debounce counter
  reg [25:0] btn2_cnt;            // Button 2 (PAUSE) debounce counter
  reg [25:0] sw1_cnt;             // Switch 1 (SEL) debounce counter
  reg [25:0] sw2_cnt;             // Switch 2 (ADJ) debounce counter

  // Debouncer parameters
  localparam DEBOUNCE_CNT = 26;   // Debounce counter value

  // Create 1.5625 MHz clock
  reg [CLK_DIV-1:0] clk_div;
  always @(posedge clk) begin
    if (rst)
      clk_div <= 0;
    else if (clk_div == (1 << CLK_DIV) - 1)
      clk_div <= 0;
    else
      clk_div <= clk_div + 1;
  end

  // Create 15.625 kHz clock for adjustment mode
  reg [CLK_DIV_ADJ-1:0] clk_div_adj;
  always @(posedge clk) begin
    if (rst)
      clk_div_adj <= 0;
    else if (clk_div_adj == (1 << CLK_DIV_ADJ) - 1)
      clk_div_adj <= 0;
    else
      clk_div_adj <= clk_div_adj + 1;
  end

  // Debounce input buttons and switches
  reg btn1_db;                   // Debounced button 1 (RESET)
  reg btn2_db;                   // Debounced button 2 (PAUSE)
  reg sw1_db;                    // Debounced switch 1 (SEL)
  reg sw2_db;                    // Debounced switch 2 (ADJ)

  always @(posedge clk_div) begin
    // Button 1 debounce
    if (rst)
      btn1_cnt <= {DEBOUNCE_CNT{1'b0}};
    else if (btn1_cnt != {DEBOUNCE_CNT{1'b1}})
      btn1_cnt <= btn1_cnt + 1;

    // Button 2 debounce
    if (rst)
      btn2_cnt <= {DEBOUNCE_CNT{1'b0}};
    else if (btn2_cnt != {DEBOUNCE_CNT{1'b1}})
      btn2_cnt <= btn2_cnt + 1;

    // Switch 1 debounce
    if (rst)
      sw1_cnt <= {DEBOUNCE_CNT{1'b0}};
    else if (sw1_cnt != {DEBOUNCE_CNT{1'b1}})
      sw1_cnt <= sw1_cnt + 1;

    // Switch 2 debounce
    if (rst)
      sw2_cnt <= {DEBOUNCE_CNT{1'b0}};
    else if (sw2_cnt != {DEBOUNCE_CNT{1'b1}})
      sw2_cnt <= sw2_cnt + 1;
  end

  // Debounced signals
  assign btn1_db = (btn1_cnt == {DEBOUNCE_CNT{1'b0}});
  assign btn2_db = (btn2_cnt == {DEBOUNCE_CNT{1'b0}});
  assign sw1_db = (sw1_cnt == {DEBOUNCE_CNT{1'b0}});
  assign sw2_db = (sw2_cnt == {DEBOUNCE_CNT{1'b0}});

  // Stopwatch logic
  always @(posedge clk_div_adj or negedge rst) begin
    if (!rst) begin
      minutes_reg <= 4'b0000;
      seconds_reg <= 4'b0000;
      count <= 2'b00;
      count_adj <= 2'b00;
      blink <= 1'b0;
    end else if (!pause) begin
      if (count_adj == 2'b11)
        blink <= ~blink;

      if (adj && blink) begin
        if (sel)
          count_adj <= count_adj + 1;
        else
          minutes_reg <= minutes_reg + 1;
      end else begin
        if (count == 2'b11)
          count <= 2'b00;

        if (~sel)
          seconds_reg <= seconds_reg + 1;

        count <= count + 1;
      end
    end
  end

  // Output selection for seven-segment display
  always @* begin
    case (sel)
      1'b0: seg = {7'b0000001, minutes_reg};
      1'b1: seg = {7'b0000001, seconds_reg};
    endcase
  end

endmodule
