module topmodule(
    input clk,
    input btnS,
    input btnR,
    input btn1,
    input [7:0] sw,
    output reg[7:0] seg,
    output reg[3:0] an
    );

    wire clk_200hz;
    wire clk_1khz;
    wire clk_25mhz; 

    
    wire hit, stay, rst;

    debouncer debouncebtnhit(clk, btnS, hit);
    debouncer debouncebtnstay(clk, btnR, stay);
    debouncer debouncebtnrst(clk, btn1, rst);

    clock_divider clk_divider(clk, rst, clk_200hz, clk_1khz, clk_25mhz);
    
    game game_mod(clk_200hz, clk_1khz, clk_25mhz, hit, stay);
    
endmodule
