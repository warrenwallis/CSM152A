module convert (
  // outputs
  sign, abs,
  // inputs
  analog, clk
  );
  
  output [11:0] abs; // MSB to LSB
  output sign;
  
  input [11:0] analog;
  input clk;
  
  int count;
  
  initial begin
    count = 0;
  end
  
  always @ (posedge clk) begin
    if analog[11] == 0 begin
      sign <= 0;
      abs <= analog[11:0];
    end
    else begin
      s <= 1;
      for (integer i = 0; i < 11; i += 1) begin
        count += analog[i]
      end
      if (count == 0) begin // means we have -2048
        abs = { analog[11:1], 1 };
      end
      else begin
        abs = ~D + 1;
      end
    end
    $display ("Output: Sign: %b Abs: %12b", sign, abs);
  end
