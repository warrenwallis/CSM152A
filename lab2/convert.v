module convert (
  // outputs
  sign, abs,
  // inputs
  analog, clk, on
  );
  
  output [11:0] abs; // MSB to LSB
  output sign;
  
  input [11:0] analog;
  input clk;
  input on;
  
  reg abs;
  reg sign;
  integer count;
  integer i;
  
  initial begin
    count = 0;
  end
  
  always @ (posedge clk && on == 1) begin
    if (analog[11] == 0) begin
      sign <= 0;
      abs <= analog[11:0];
    end
    else begin
      sign <= 1;
      for (i = 0; i < 11; i = i + 1) begin
        count = count + analog[i];
      end
      if (count == 0) begin // means we have -2048
        abs <= { analog[11:1], 1 };
      end
      else begin
        abs <= ~analog + 1;
      end
    end
    $display ("Output: Sign: %0b Abs: %0b", sign, abs);
  end
 endmodule