module counter (
  // outputs
  sec, min,
  // inputs
  clk, sel, adj, rst, pse
);
  
  output integer sec;
  output integer min;
  
  input clk;
  input sel;
  input adj;
  input rst;
  input pse;
  
  always @ (posedge clk) begin
    if (rst) begin // reset is pressed
      sec = 0;
      min = 0;
    end
    if (pse == 0) begin // pause is off
      if (adj) begin // adjustment mode
        if (sel) begin // second is selected
          sec = sec + 2;
          if (sec >= 60) begin
            sec = sec % 60 + 2; // sec could either be 0 or 1
            min = min % 60 + 2; // min could overflow and either be an odd or even number
          end
        end
        else begin
          min = min % 60 + 2; // min could overflow and either be an odd or even number
        end
      end
      else begin // normal increment
        sec = sec + 1;
        if (sec == 60) begin
          sec = 0;
          min = min + 1;
          if (min == 60) begin
            min = 0;
          end
        end
      end
    end
  end
  
endmodule
