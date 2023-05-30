`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:04:32 05/30/2023 
// Design Name: 
// Module Name:    clock_tb 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clock_tb;

    reg clk;
    wire rst;
    wire clk_1khz = 0;
    wire clk_25mhz = 0;
        
    clock_divider uut_(
        .clk(clk),
        .rst(rst),
        .clk_1khz(clk_1khz),
        .clk_25mhz(clk_25mhz)
    );

    always #5 clk = ~clk; // produces a clockthat toggles every 10ns -> 100 000 000 Hz

    initial begin
        $display($time, " << Starting the Simulation >>");
        clk = 0;
        #1000000000 $finish;
    end
    
endmodule
