`timescale 1ns/ 1ps

module clock_TB;
  
  reg one;
  reg two;
  reg faster;
  reg clk;
  reg tst;
  
  integer count;
  
  initial begin
    clk = 0;
    tst = 1;
    count = 0;
    
    #1000;
    $finish;
  end
  
  always #5 clk = ~clk;
  awlays #5 counter = counter + 1;
  
  clock clock0_ (
    .one (one),
    .two (two),
    .faster (faster),
    .tst (tst)
  );
  
  task send;
    begin
      one = o;
      two = t;
      faster = f;
      $display("Time %d", count);
    end
  endtask
    
endmodule
