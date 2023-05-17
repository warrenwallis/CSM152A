module clock (
  input clk,
  input rst,
  output wire one,
  output wire two,
  output wire four,
  output wire faster
);
  
  integer count = -1;
  integer freq = 100000000; // master clock frequency is 100 000 kHz
  
  always @ (posedge clk or posedge rst) begin
    
    if (rst == 1'b1) begin
        count = 0;
    end 
    
    else begin
        count = (count + 1) % freq;
        
        // produces the 1Hz clock
        if (count % freq == 0) begin
          assign one = clk;
        end else begin
          assign one = 0;
        end
        
        // produces the 2Hz clock
        if (count % (freq/2) == 0) begin
          assign two = clk;
        end else begin
          assign two = 0;
        end
      
        // produces 4Hz clock
        if (count % (freq/4) == 0) begin
          assign four = clk;
        end else begin
          assign four = 0;
        end
        
        // produces the 100Hz clock
        if (count % (freq/100) == 0) begin
          assign faster = clk;
        end else begin
          assign faster = 0;
        end
    end
    
  end
endmodule
    
