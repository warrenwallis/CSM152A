module SevenSegmentDisplay.v (
  input wire clk,
  input wire data,
  input reg [6:0] seg_out,
  output reg [3:0] an_out
);
  
  localparam SEG_PATTERN = {
    
  };
