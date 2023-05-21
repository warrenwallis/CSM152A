`timescale 1ns / 1ps

module ClockModule_TB;

    // inputs
    reg clk;

    // outputs
    wire clk_1hz;
    wire clk_2hz;
    wire clk_faster;
    wire clk_blink;

    ClockModule cm (
        .clk            (clk),
        .clk_1hz        (clk_1hz),
        .clk_2hz        (clk_2hz),
        .clk_faster     (clk_faster),
        .clk_blink      (clk_blink)
    );

    initial begin
        clk = 0;

        #100 $finish;
    end

    always #1 clk = ~clk;
    always @ (posedge clk) begin
        out;
    end

    task out; 
        begin
            $display("clk: %d, clk_1hz: %d, clk_2hz: %d, clk_faster: %d, clk_blink: %d",
                     clk, clk_1hz, clk_2hz, clk_faster, clk_blink);
        end
    endtask

endmodule