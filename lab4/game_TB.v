`timescale 1ns / 1ps

module game_tb;

reg clk;
reg hit;
reg stay;
reg player_sel;

wire [4:0] points;
wire [15:0] cards;

initial begin
    clk = 0;
    player_sel = 1;

    #10 $display("initial count/cards of dealer %d, %b", points, cards);
    #15 player_sel = 0;
    #20 $display("initial count/cards of player %d, %b", points, cards);
	 #25 stay = 1;
	 #25 $display("player stays, dealer's turn");
	 #25 $display("count/cards of dealer %d, %b", points, cards);

    #1000 $finish;

end

Game game0_ (
    .clk        (clk),
    .hit        (hit),
    .stay       (stay),
    .player_sel (player_sel),
    .points_out (points),
    .card_out   (cards)
);

always #1 clk = ~clk;


task send;
    input h;
    input s;
    input p;
    begin
        hit = h;
        stay = s;
        player_sel = p;
        $display("input: h = %b, s = %b, p = %b... output: count = %d, cards = %b", h, s, p, points, cards);
    end
endtask;

endmodule