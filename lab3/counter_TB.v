`timescale 1ns / 1ps

module counter_TB;
  
  reg clk;
  reg sel;
  reg adj;
  reg rst;
  reg pse;
  
  initial begin
    clk = 0;
    
    #5 send(0, 0, 0, 0);
    #20 send(0, 1, 0, 1);
    #30 send(0, 0, 0, 0);
    #45 send (0, 0, 0, 1);
    #60 send (0, 0, 0, 0);
    
    #1000;
    $finish;
  end
  
  always #5 clk = ~clk;
  
  counter counter0_ (
    .clk (clk),
    .sel (sel),
    .adj (adj),
    .rst (rst),
    .pse (pse)
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
      $display("Sending select: %s, adjust: %s, reset: %s, pause: %s", s, a, r, p);
    end
  endtask
  
endmodule
