module clk1hz (clk, led);

input clk;
output reg led;

reg [31:0] counter = 0;

always @(posedge clk) begin
    counter <= counter + 1;
    if (counter == 100000000) begin
        led <= ~led;
        counter <= 0;
    end
end   

endmodule
