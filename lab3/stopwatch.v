module stopwatch(
    input clk,
    input [1:0] sw, // ADJ is sw[1], SEL is sw[0]
    input btns, // For PAUSE
    input btnr, // For RESET
    output reg [7:0] seven_seg,
	output reg [3:0] anode_count
);
    
    wire pse;
    wire rst;
    
    debouncer debounce_pse(
        .button(btns),
        .clk(clk),
        .button_state(pse)
    );
    
    debouncer debounce_rst(
        .button(btnr),
        .clk(clk),
        .button_state(rst)
    );
    
    wire one_hz;
    wire two_hz;
    wire four_hz;
    wire fast_hz;
    
    clock en_clk(
        .clk(clk),
        .rst(btn3),
        .one(one_hz),
        .two(two_hz),
        .four(four_hz),
        .faster(fast_hz)
    );
    
    wire counter_clk;
    
    clock_selector clk_sel(
        .one(one_hz),
        .two(two_hz),
        .adj(sw[1]),
        .counter_clk(counter_clk)
    );
    
    reg [3:0] sec_one;
    reg [3:0] sec_ten;
    reg [3:0] min_one;
    reg [3:0] min_ten;
        
    counter cnt(
        .clk(counter_clk),
        .adj(sw[1]),
        .sel(sw[0]),
        .pse(pse),
        .rst(rst),
        .sec_one(sec_one),
        .sec_ten(sec_ten),
        .min_one(min_one),
        .min_ten(min_ten)
    );
    
    display display_screen(
        .clk_blink(four_hz),
        .clk_update(fast_hz),
        .adj(adj),
        .sel(sel),
        .pse(pse),
        .sec_one(sec_one),
        .sec_ten(sec_ten),
        .min_one(min_one),
        .min_ten(min_ten),
        .seven_seg(seven_seg),
        .anode_count(anode_count)
    );
    

endmodule
