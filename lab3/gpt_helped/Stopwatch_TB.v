`timescale 1ns / 1ps

module Stopwatch_TB;

    // inputs
    reg clk;
    reg rst;
    reg pse;
    reg adj;
    reg sel;

    // outputs
    wire [3:0] min_ten;
    wire [3:0] min_one;
    wire [3:0] sec_ten;
    wire [3:0] sec_one;

    initial begin
        clk = 0;
        rst = 0;
        pse = 0;
        adj = 0;
        sel = 0;

        #1000;
    end

    always #1 clk = ~clk;
    always @ (posedge clk) begin
        out();
    end

    Stopwatch sw (
        .clk    (clk),
        .rst    (rst),
        .pse    (pse),
        .adj    (adj),
        .sel    (sel),
        .min_ten    (min_ten),
        .min_one    (min_one),
        .sec_ten    (sec_ten),
        .sec_one    (sec_one)
    );

    task out;
        begin
            $display("clk: %d, %d%d:%d%d", clk, min_ten, min_one, sec_ten, sec_one);
        end
    endtask

endmodule
