`timescale 1ns / 1ps

module tb;
  
  reg clk;
  reg analog;
  reg on;
  
  initial begin
    clk = 0;
	 on = 0;
    
    #100 send(12'b000000000000);
    #200 send(12'b000000000001);
    //#10 send(12'b100000000000);
    #400 send(12'b011111111111);
    
    #1000;
    $finish;
  end
  
  always #5 clk = ~clk;
  always #5 on = 0;
  
  convert convert0_ (
    .analog (analog),
    .clk  (clk),
	 .on (on)
  );
  
  task send;
    input [11:0] in;
    begin
      analog <= in;
		on <= 1;
		$display("Sending Two's Complement %b", analog);
    end
  endtask
endmodule