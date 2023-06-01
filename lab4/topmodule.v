module topmodule(
    input clk,
    input btnS,
    input btnR,
    input [7:0] sw,
    output [7:0] led,
    output reg[7:0] seg,
    output reg[3:0] an
    );

    wire clk_200hz;
    wire clk_1khz;
    wire clk_25mhz; 

    clock_divider clk_divider(clk, btnR, clk_200hz, clk_1khz, clk_25mhz);

    
    reg [3:0] number = 4'b0001;
    wire debounced_btns;

    debouncer debouncebtns(clk, btnS, debounced_btns);
    
    always @ (posedge debounced_btns) begin
        if (number < 4) begin
            number = number + 1;
        end
        else begin
            number = 1;
        end
    end
    
    wire [7:0] number_segment;
    
    seven_seg test(number, number_segment);
    
    always @ (posedge clk_1khz) begin
        an <= 4'b1110;
        seg <= number_segment;
    end
    
    
    assign led = sw;

endmodule
