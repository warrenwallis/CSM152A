module clock (
  input clk,
  output reg one,
  output reg two,
  output reg faster
);
  
  integer count = -1;
  integer freq = 100000000; // master clock frequency is 100 000 kHz
  
  always @ (posedge clk) begin
    count = (count + 1) % freq;
    
    // produces the 1Hz clock
    if (count % freq == 0) begin
      one = clk;
    end else begin
      one = 0;
    end
    
    // produces the 2Hz clock
    if (count % (freq/2) == 0) begin
      two = clk;
    end else begin
      two = 0;
    end
    
    // produces the 100Hz clock
    if (count % (freq/100) == 0) begin
      faster = clk;
    end else begin
      faster = 0;
    end
    
  end
endmodule
    
