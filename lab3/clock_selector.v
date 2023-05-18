module clock_selector(
    input wire one,
    input wire two,
    input adj,
    output reg counter_clk
    );

    always @* begin
        if (adj == 1'b0) begin
            counter_clk = one;
        end
        else begin
            counter_clk = two;
        end
    end

endmodule
