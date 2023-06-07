`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:07 06/07/2023 
// Design Name: 
// Module Name:    winlose 
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
module winlose(
    input result,
    input display_clk,
    output reg[7:0] seg,
    output reg[4:0] an 
    );
    
    // 1 is leftmost segment, 4 is rightmost segment

    localparam lose_digit1 = 4'b1010;
    localparam lose_digit2 = 4'b0000;
    localparam lose_digit3 = 4'b0101;
    localparam lose_digit4 = 4'b1011;
    
    localparam win_digit1 = 4'b1100;
    localparam win_digit2 = 4'b1100;
    localparam win_digit3 = 4'b0001;
    localparam win_digit4 = 4'b1101;
    
    localparam anode1 = 4'b0111;
    localparam anode2 = 4'b1011;
    localparam anode3 = 4'b1101;
    localparam anode4 = 4'b1110;
    
    wire[7:0] lose_seg1, lose_seg2, lose_seg3, lose_seg4;
    wire[7:0] win_seg1, win_seg2, win_seg3, win_seg4;
    
    seven_seg loseseg1(lose_digit1, lose_seg1);
    seven_seg loseseg2(lose_digit2, lose_seg2);
    seven_seg loseseg3(lose_digit3, lose_seg3);
    seven_seg loseseg4(lose_digit4, lose_seg4);
    
    seven_seg winseg1(win_digit1, win_seg1);
    seven_seg winseg2(win_digit2, win_seg2);
    seven_seg winseg3(win_digit3, win_seg3);
    seven_seg winseg4(win_digit4, win_seg4);
    
    reg[1:0] anode = 0;
    
    always @ (posedge display_clk) begin
    
        if (anode == 0) begin
            an <= anode1;
            seg <= (result == 0) ? lose_seg1 : win_seg1;
            anode <= anode + 1;
        end
        else if (anode == 1) begin
            an <= anode2;
            seg <= (result == 0) ? lose_seg2 : win_seg2;
            anode <= anode + 1;
        end
        else if (anode == 2) begin
            an <= anode3;
            seg <= (result == 0) ? lose_seg3 : win_seg3;
            anode <= anode + 1;
        end
        else begin
            an <= anode4;
            seg <= (result == 0) ? lose_seg4 : win_seg4;
            anode <= 0;
        end
    end
    

endmodule
