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
    
    #1 send();
    #2 send();
    #10 send();
    
    #1000;
    $finish;
  end
  
  always #1 clk = ~clk;
  always #1 counter = counter + 1;
  
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
