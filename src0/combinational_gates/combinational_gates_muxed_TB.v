/*
 * Module: Testbench for multiplexed combinational gates
 * 
 * Filename: combinational_gates_muxed_TB.v
 * Version: 1.0
 *
 * Author: Cejo Konuparamban Lonappan
 *
 * Description: The testbench code for verifying the multiplexed outputs of
 * eight comnibational gates. 
 */

`timescale 10ns / 1ns

module clk1hz_TB; // No inputs for a testbench!

// Inputs in the module to be tested will be port mapped to register variables
reg clk;

// Outputs in the module to be tested will be port mapped to wire variables
wire led_T;

// Instantiation of the design module to be verified by the testbench
// Use named portmapping to map inputs to regsiter variables and outputs to
// wires
clk1hz uut 	(
        .clk(clk), 
		.led(led_T)
);

// Used for saving Value Change Dump (.vcd) file that records the waveforms of
// the simulation. Not needed while using Xilinx ISIM simulator.
initial
begin
    clk = 0;
    forever #1 clk = ~clk;
end

// Code to terminate simulation after all the test cases have been covered.
initial
	#1410065408  $finish; // After 10 s, terminate simulation.

endmodule
