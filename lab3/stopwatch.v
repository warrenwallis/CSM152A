module stopwatch(
    input clk,
    input btns, // For ADJ
    input btnr, // For SEL
    input btn2, // For PAUSE
    input btn3  // For RST
);

    wire one_hz;
    wire two_hz;
    wire fast_hz;
    
    clock en_clk(
        .clk(clk),
        .rst(btn3),
        .one(one_hz),
        .two(two_hz),
        .faster(fast_hz)
    );
    
    reg adj;
    reg sel;
    reg pse;
    wire rst; // rst state should not be saved
    
    // do debouncer stuff to assign the respective registers according to button input
    
    wire counter_clk;
    
    clock_selector clk_sel(
        .one(one_hz),
        .two(two_hz),
        .adj(btns),
        .counter_clk(counter_clk)
    );
    
    reg sec;
    reg min;
    
    counter cnt(
        .clk(counter_clk),
        .adj(adj),
        .sel(sel),
        .pse(pse),
        .rst(rst),
        .sec(sec),
        .min(min)
    );
    
    
    

endmodule
