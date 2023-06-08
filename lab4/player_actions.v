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
	input debounced_hit,
	input debounced_stay,
	// input player_num, // for multiple players in the future
	output player_state,
	output [4:0] score,
	output [15:0] player_cards
    );
	 
	 reg state = 1'b0;
	 reg [15:0] cards [12:0];
	 reg [3:0] card_vals [12:0];
	 reg [4:0] running_total = 0;
	 reg [3:0] current_card_index;
	reg [15:0] current_card_val_reg = 16'b1111111111111111;
	 reg [4:0] unlowered_aces = 0;

	// logic here
	initial begin
			cards[0] = "A";
			cards[1] = "2";
			cards[2] = "3";
			cards[3] = "4";
			cards[4] = "5";
			cards[5] = "6";
			cards[6] = "7";
			cards[7] = "8";
			cards[8] = "9";
			cards[9] = "10";
			cards[10] = "J";
			cards[11] = "Q";
			cards[12] = "K";
			
			card_vals[0] = 11;
			card_vals[1] = 2;
			card_vals[2] = 3;
			card_vals[3] = 4;
			card_vals[4] = 5;
			card_vals[5] = 6;
			card_vals[6] = 7;
			card_vals[7] = 8;
			card_vals[8] = 9;
			card_vals[9] = 10;
			card_vals[10] = 10;
			card_vals[11] = 10;
			card_vals[12] = 10;
			
			// get a random card from the list
			current_card_index = $unsigned($random($time)) % 13;
		current_card_val_reg = { currect_card_val_reg[11:0], cards[current_card_index] }; 
			
			// if card is an ace
			if (current_card_index == 4'b0000) begin
				unlowered_aces = unlowered_aces + 1;
			end
			
			running_total = running_total + card_vals[current_card_index];
			
			// this will never run here but is template for how to add to score in general
			if (running_total > 21) begin
				// if busting with an unlowered ace
				if (unlowered_aces > 0) begin
					running_total = running_total - 10;
					unlowered_aces = unlowered_aces - 1;
				end else begin
					state = 1;
				end
			end			
			
			/* DEAL SECOND CARD */
			
			// get a random card from the list
			current_card_index = $unsigned($random($time)) % 13;
			current_card_val_reg = { currect_card_val_reg[11:0], cards[current_card_index] }; 
			
			// if card is an ace
			if (current_card_index == 4'b0000) begin
				unlowered_aces = unlowered_aces + 1;
			end
			
			running_total = running_total + card_vals[current_card_index];
			
			// this will never run here but is template for how to add to score in general
			if (running_total > 21) begin
				// if busting with an unlowered ace
				if (unlowered_aces > 0) begin
					running_total = running_total - 10;
					unlowered_aces = unlowered_aces - 1;
				end else begin
					state = 1;
				end
			end
			
			if (running_total == 21) begin
				state = 1;
			end
	end
	
	always @ (posedge debounced_hit) begin
		// do nothing if turn is over
		if (state == 1) begin
			return;
		end
	
		// get a random card from the list
		current_card_index = $unsigned($random($time)) % 13;
		current_card_val_reg = { currect_card_val_reg[11:0], cards[current_card_index] }; 
		
		// if card is an ace
		if (current_card_index == 4'b0000) begin
			unlowered_aces = unlowered_aces + 1;
		end
		
		running_total = running_total + card_vals[current_card_index];
		
		// if potential bust
		if (running_total > 21) begin
			// if busting with an unlowered ace
			if (unlowered_aces > 0) begin
				running_total = running_total - 10;
				unlowered_aces = unlowered_aces - 1;
			// player turn ends (with a bust)
			end else begin
				state = 1;
			end
		end
		
		// finish if reached 21
		if (running_total == 21) begin
			state = 1;
		end
	end
	
	always @ (posedge debounced_stay) begin
		state = 1;
	end
	
	// state of 0 represents still deciding, 1 represents done deciding
	assign player_state = state;
	assign score = running_total;
	assign current_card_val = current_card_val_reg;

endmodule
