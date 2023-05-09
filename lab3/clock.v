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
  integer freq;
  
  initial begin
    count = 0;
    freq = 1000000000; // master clock frequency
  end
  
  always @ (posedge clk) begin
    count = (count + 1) % freq;
    if (count % freq == 0) begin
      one = clk;
    end
    if (count % (freq/2) == 0) begin
      two = clk;
    end
    if (count % (freq/100) == 0) begin
      faster = clk;
    end
    if (tst) begin
      $display("Clocks one: %d, two: %d, faster %d", one, two, faster);
    end
  end
endmodule
    
