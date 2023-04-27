`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:24:01 04/25/2023 
// Design Name: 
// Module Name:    fpc_tb 
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
module fpc_tb;

reg [11:0] D;

wire S;
wire [2:0] E;
wire [3:0] F;

floatingPointConverter uut (
    .D(D),
    .S(S),
    .E(E),
    .F(F)
);

initial begin
    D = 0;
    
    #100;
    D = 12'b000000101101; // normal, should round down to 0 010 1011
    
    #100;
    D = 12'b000000101111; // normal, should round up to 0 010 1100
    
    #100;
    D = 12'b000001111101; // significand overflows
        
    #100;
    D = 12'b111111111111; // all 1
    
    #100;
    D = 12'b100000000000; // -2048 largest negative number
    
    #100;
    D = 12'b011111111111; // 2047 largest positive number
    
end

endmodule
