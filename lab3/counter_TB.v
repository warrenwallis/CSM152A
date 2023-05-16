`timescale 10ns / 10ns

module counter_TB;
  
  // inputs
  reg clk;
  reg adj;
  reg sel;
  reg pse;
  reg rst;
  
  // outputs
  wire [5:0] sec;
  wire [5:0] min;
  
  // Instantiate counter module
  counter counter_ (
    .clk (clk),
    .adj (adj),
    .sel (sel),
    .pse (pse),
    .rst (rst),
    .sec (sec),
    .min (min)
  );
  
  // generate clock
  always #1 clk = ~clk;
  
  initial begin
    clk = 0;
    adj = 0;
    sel = 0;
    pse = 0;
    rst = 0;
    
    
    #10; // allow some time for initialization
    
    // TEST 1: normal clock operation for 100s
    #100;
    
    
    
    #1000 $finish;
  end
  
endmodule
