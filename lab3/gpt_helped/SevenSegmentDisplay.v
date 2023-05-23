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