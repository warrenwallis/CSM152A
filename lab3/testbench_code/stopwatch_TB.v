`timescale 10ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:03:41 05/02/2023
// Design Name:   stopwatch
// Module Name:   C:/Users/Student/Desktop/152alab10am/lab3/stopwatch_tb.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: stopwatch
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module stopwatch_tb;
  
  // inputs
  reg clk;
  reg [1:0] sw; // ADJ is sw[1], SEL is sw[0]
  reg btns; // For PAUSE
  reg btnr; // For RESET
  
  // outputs
  wire [7:0] seg;
  wire [3:0] an;
  
  // Instantiate counter module
  stopwatch uut (
    .clk (clk),
    .sw (sw),
    .btns (btns),
    .btnr (btnr),
    .seg (seg),
    .an (an)
  );
  
  // generate clock
  always #0.5 clk = ~clk;
  
  initial begin
    clk = 0;
    sw = 2'b00;
    btns = 0;
    btnr = 0;
    
    
    #10; // allow some time for initialization
    
    // TEST 1: normal clock operation for 10s
    #1000000000;
    
    // TEST 2: pause clock
    btns = 1;
    #1000000000;

    // TEST 3: resume clock 
    btns = 0;
    #1000000000;

    // TEST 4: reset clock
    btnr = 1;
    #1000000000;

    // TEST 5: adj mode (sel = 0)
    sw[1] = 1;
    sw[0] = 0;
    #1000000000;

    // TEST 6: adj mode (sel = 1)
    sw[1] = 1;
    sw[0] = 1;
    #1000000000;

    // TEST 6: resume normal operation (sel left on 1)
    sw[1] = 0;
    sw[0] = 1;
    #1000000000;
    $finish;
  end
  
endmodule
