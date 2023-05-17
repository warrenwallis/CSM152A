`timescale 10ns / 10ns

module counter_TB;
  
  // inputs
  reg clk;
  reg adj;
  reg sel;
  reg pse;
  reg rst;
  
  // outputs
  wire [3:0] sec_one;
  wire [3:0] sec_ten;
  wire [3:0] min_one;
  wire [3:0] min_ten;
  
  // Instantiate counter module
  counter counter_ (
    .clk (clk),
    .adj (adj),
    .sel (sel),
    .pse (pse),
    .rst (rst),
    .sec_one (sec_one),
    .sec_ten (sec_ten),
    .min_one (min_one),
    .min_ten (min_ten)
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
