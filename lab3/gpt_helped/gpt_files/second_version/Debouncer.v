module Debouncer (
  input wire clk,
  input wire signal_in,
  output reg signal_out
);

  reg [1:0] debounce_cnt;
  reg signal_prev;

  always @(posedge clk) begin
    if (signal_in != signal_prev)
      debounce_cnt <= debounce_cnt + 1;
    else
      debounce_cnt <= 0;

    if (debounce_cnt == 2)
      signal_out <= signal_in;

    signal_prev <= signal_in;
  end

endmodule