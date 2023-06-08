module Game (
  	input wire clk_200Hz,
  	input wire clk_1Hz,
  	input wire clk_25mHz,
  	input wire hit,
  	input wire stay,
  	input wire player_sel,
    output [4:0] points_out,
	output [15:0] card_out,
	);
	
  
	wire player_finished;
	reg state = 0;
    reg [31:0] wins = 0;
    reg [31:0] pushes = 0;
	reg [31:0] losses = 0;
	reg [15:0] dealer_cards = 16'b1111111111111111;
  
  // TODO: probably need to convert some of these to wires and `assign` them at the bottom of the module
	reg [15:0] cards [12:0];
	reg [3:0] card_vals [12:0];
	reg [3:0] current_card_index;
	reg [4:0] dealer_total = 0;
	reg [4:0] player_total = 0;
	reg [4:0] unlowered_aces = 0;
	reg [15:0] current_card_val;
	wire [15:0] player_card;
  
    player_actions player1 (
        .debounced_hit(hit),
        .debounced_stay(stay),
        .player_state(player_finished),
        .score(player_total),
		.player_cards (player_cards)
    );
	
	initial begin
			cards[0] = 4'd0;
			cards[1] = 4'd1;
			cards[2] = 4'd2;
			cards[3] =  4'd3;
			cards[4] = 4'd4;
			cards[5] = 4'd5;
			cards[6] = 4'd6;
			cards[7] = 4'd7;
			cards[8] = 4'd8;
			cards[9] = 4'd9;
			cards[10] = 4'd0;
			cards[11] = 4'd0;
			cards[12] = 4'd0;
		
			
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
	end
  
    assign points_out = (player_sel == 1) ? dealer_total : player_total;
	assign card_out = (player_sel == 1) ? dealer_cards : player_cards;
    
    always @ (clk_1Hz) begin
        if (state == 0) begin
            initialDealer();
            state = 1;
            return;
        end
    
		if (player_finished && state == 1) begin
            
			if (player_total > 21) begin
				losses += 1;
			end
			else begin
				
				// add dealer stuff here
				while (dealer_total < 17) begin
					// get a random card from the list
					current_card_index = $unsigned($random($time)) % 13;
					current_card_val = cards[current_card_index];

					// if card is an ace
					if (current_card_index == 4'b0000) begin
						unlowered_aces = unlowered_aces + 1;
					end

					dealer_total = dealer_total + card_vals[current_card_index];

					// if potential bust
					if (dealer_total > 21) begin
						// if busting with an unlowered ace
						if (unlowered_aces > 0) begin
							dealer_total = dealer_total - 10;
							unlowered_aces = unlowered_aces - 1;
						// dealer turn ends (with a bust)
						end else begin
							wins += 1;
							state = 0;
							return;
						end
					end
			
				end
				
				if (player_total > dealer_total) begin
					wins += 1;
				end
				else if (player_total < dealer_total) begin
					losses += 1;
				end
				else begin
					pushes += 1;
				end
			end
			
			state = 0;
		end
  end
  
  task initialDealer;
    begin
		dealer_total = 0;
		// get a random card from the list
		current_card_index = $unsigned($random($time)) % 13;
		dealer_cards = { dealer_cards[11:0], cards[current_card_index]};
					
		// if card is an ace
		if (current_card_index == 4'b0000) begin
			unlowered_aces = unlowered_aces + 1;
		end
		
		dealer_total = dealer_total + card_vals[current_card_index];
    end
  endtask
  
endmodule
