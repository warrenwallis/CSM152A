`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:59:14 05/16/2023
// Design Name:   debouncer
// Module Name:   C:/Users/Student/Desktop/10amlabgroup152a/lab3/debouncer_tb.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: debouncer
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module debouncer_tb;

	// Inputs
	reg button;
	reg clk;

	// Outputs
	wire button_state;

	// Instantiate the Unit Under Test (UUT)
	debouncer uut (
		.button(button), 
		.clk(clk), 
		.button_state(button_state)
	);
	
	always #5 clk = ~clk;

	initial begin
		// Initialize Inputs
		button = 0;
		clk = 0;

        // Initialize inputs
        button = 0;
        clk = 0;
        
        // Wait for a few clock cycles before pressing the button
        #100;
        
        // Simulate button press
        button = 1;
        #100;
        
        // Simulate button release
        button = 0;
        #300;
        
        // Finish simulation
        $finish;
		
        
		// Add stimulus here

	end
      
endmodule

