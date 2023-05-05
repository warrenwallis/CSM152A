module counter (
  // outputs
  sec, min,
  // inputs
  clk, sel, adj, rst, pse, tst
);
  
  output integer sec;
  output integer min;
  
  input clk;
  input sel;
  input adj;
  input rst;
  input pse;
  input tst;

  integer step;

  initial begin
    sec = 0;
    min = 0;
    step = 0;
  end
  
  always @ (posedge clk) begin
    step = step + 1;
    if (rst) begin // reset is pressed
      sec = 0;
      min = 0;
    end
    if (pse == 0) begin // pause is off
      if (adj) begin // adjustment mode
        if (sel) begin // second is selected
          sec = sec + 2;
          if (sec >= 60) begin
            sec = (sec + 2) % 60; // sec could either be 0 or 1
            min = (min + 2) % 60; // min could overflow and either be an odd or even number
          end
        end
        else begin
          min = (min + 2) % 60; // min could overflow and either be an odd or even number
        end
      end
      else begin // normal increment
        sec = sec + 1;
        if (sec == 60) begin
          sec = 0;
          min = (min + 1) % 60;
        end
      end
    end

    if (tst) begin
      $display("Stopwatch Output at step %d: %d:%d", step, min, sec);
    end
  end
  
endmodule
