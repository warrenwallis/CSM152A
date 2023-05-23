`timescale 1ns / 1ps

module SevenSegmentDisplay_TB ();
  
  // inputs
  reg clk;
  reg [3:0] data;
  
  // outputs
  wire [6:0] seg_out;
  wire [3:0] an_out;
  
  initial begin
    clk = 0;
    data = 4'b0000;
    
    #1 data = 4'd8;
    
    #2 data = 4'd4;
    
    #3 data = 4'd2;
    
    #4 data = 4'd1; // 12:48
    
    #1000 $finish;
  end
  
  always #1 clk = ~clk;
  always @ (posedge clk) begin
    out();
  end
  
  SevenSegmentDisplay ssd (
    .clk      (clk),
    .data     (data),
    .seg_out  (seg_out),
    .an_out   (an_out)
  );
  
  task out;
    begin
      $display("seven output: %b, on an_out: %b", seg_out, an_out);
    end
