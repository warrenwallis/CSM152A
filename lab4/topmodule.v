module topmodule(
    input clk,
    input btnS,                 // single-step instruction
    input btnR,                 // arst
    input [7:0] sw,
    output [7:0] led
    );

    wire clk_200hz;
    wire clk_1khz;
    wire clk_25mhz; 

    clock_divider(clk, btnR, clk_200hz, clk_1khz, clk_25mhz);

    wire debounced_btnS;

    debouncer(clk, clk_200hz, btnS, debounced_btnS);

    reg led_state = 0;

    always @ (posedge debounced_btnS) begin
        led_state = ~led_state;
    end
    
    assign led[7:0] = sw[7:0];
//    assign led[7:0] = (led_state == 1) ? 8'b11111111 : 8'b000000000;
        

endmodule
