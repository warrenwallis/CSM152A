`timescale 1ns / 1ps

module tb;
  
  reg clk;
  
  initial begin
    clk = 0;
    
    #0 send(12'b000000000000);
    #5 send(12'b000000000001);
    //#10 send(12'b100000000000);
    #15 send(12'b011111111111);
    
    #1000;
    $finish;
  end
  
  always #5 clk = ~clk;
  
  convert convert0_ (
    .analog (analog),
    .clk  (clk)
  );
  
  task send;
    input [11:0] in;
    begin
      $display("Sending Two's Complement %12b", analog);
      analog = in;
    end
  endtask
