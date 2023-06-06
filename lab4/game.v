module Game (
  input wire clk_200Hz,
  input wire clk_1Hz,
  input wire clk_25mHz,
  input wire hit,
  input wire stay
	);
  
	wire finished;
	reg beginGame;
	reg continueGame;
	reg endGame;
	reg gameCount;
  
	reg [15:0] cards [12:0];
	reg [3:0] card_vals [12:0];
	reg [3:0] current_card_index;
	reg [4:0] dealer_total = 0;
	reg [4:0] unlowered_aces = 0;
	reg [15:0] current_card_val;
  
  PlayerModule player1 (
    .hit        (hit),
    .stay       (stay),
    .finished   (finished)
  );
  
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
	end
  
  always @ (clk_1Hz) begin
    if (beginGame) begin
      initialDealer();
    end
  end
  
  task initialDealer;
    begin
		dealer_total = 0;
		// get a random card from the list
		current_card_index = $unsigned($random($time)) % 13;
		current_card_val = cards[current_card_index];
					
		// if card is an ace
		if (current_card_index == 4'b0000) begin
			unlowered_aces = unlowered_aces + 1;
		end
		
		dealer_total = dealer_total + card_vals[current_card_index];
    end
  endtask
  
endmodule
