module Game (
  input wire clk_200Hz,
  input wire clk_1Hz,
  input wire clk_25mHz,
  input wire hit,
  input wire stay,
);
  
  wire finished;
  reg beginGame;
  reg continueGame;
  reg endGame;
  reg gameCount
  
  PlayerModule player1 (
    .hit        (hit),
    .stay       (stay),
    .finished   (finished)
  );
  
  always @ (clk_1Hz) begin
    if (beginGame) begin
      initialDealer();
    end
  end
  
  task initialDealer;
    begin
      // add Riley's logic for initial choosing of cards
    end
  endtask
  
endmodule
