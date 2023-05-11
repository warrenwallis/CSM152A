module stopwatch(
    input clk,
    input btns,
    input btnr
);

    wire one_hz;
    wire two_hz;
    wire fast_hz;
    
    clock en_clk(
        .clk(clk),
        .one(one_hz),
        .two(two_hz),
        .faster(fast_hz)
    );

endmodule
