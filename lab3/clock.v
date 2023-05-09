module clock (
  // outputs
  one, two, faster,
  // inputs
  clk, tst
);
  
  output one;
  output two;
  output faster;
  
  input clk;
  
  integer count;
  
  initial begin
    count = 0;
  end
  
  always @ (posedge clk) begin
    count = count + 1;
    one = clk;
    if (count % 2 == 0) begin
      two = clk;
    end
    if (count % 50) begin
      faster = clk;
    end
    if (tst) begin
      $display("Clocks one: %d, two: %d, faster %d", one, two, faster);
    end
endmodule
    
