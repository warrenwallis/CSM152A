`timescale 1ns / 1ps

module counter_TB;
  
  reg sec;
  reg min;
  reg clk;
  reg sel;
  reg adj;
  reg rst;
  reg pse;
  reg tst;
  
  initial begin
    clk = 0;
    tst = 1;
    
    #5 send(0, 0, 0, 0);
    #20 send(0, 0, 0, 1);
    #30 send(0, 0, 0, 0);
    #45 send(0, 1, 0, 0);
    #60 send(0, 0, 0, 0);
    #70 send(1, 1, 0, 0);
    #80 send(0, 0, 0, 0);
    
    #1000;
    $finish;
  end
  
  always #5 clk = ~clk;
  
  counter counter0_ (
    .sec (sec),
    .min (min),
    .clk (clk),
    .sel (sel),
    .adj (adj),
    .rst (rst),
    .pse (pse),
    .tst (tst)
  );
  
  task send;
    input s;
    input a;
    input r;
    input p;
    begin
      sel = s;
      adj = a;
      rst = r;
      pse = p;
      $display("Sending select: %d, adjust: %d, reset: %d, pause: %d", s, a, r, p);
    end
  endtask
  
endmodule
