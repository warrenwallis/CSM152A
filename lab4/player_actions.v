`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:48 06/01/2023 
// Design Name: 
// Module Name:    player_actions 
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
module player_actions(
	output [1:0] state
    );
	 
	 reg [1:0] reg_state;
	 reg [7:0] cards [12:0];

	// logic here
	initial begin
		   cards[0] = "1";
		   cards[1] = "2";
		   cards[2] = "3";
		   cards[3] = "4";
		   cards[4] = "5";
		   cards[5] = "6";
		   cards[6] = "7";
		   cards[7] = "8";
		   cards[8] = "9";
		   cards[9] = "J";
		   cards[10] = "Q";
		   cards[11] = "K";
		   cards[12] = "A";
			// prints a random card from the list
		  $display("%s", cards[$unsigned($random) % 13]);
	end
	
	// state of 0 represents still deciding, 1 represents done deciding (await dealer), 2 is bust
	assign state = reg_state;

endmodule
