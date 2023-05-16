module clock_selector(
    input wire one,
    input wire two,
    input adj,
    output wire counter_clk
    );

    always @* begin
        if (adjust == 1'b0) begin
            assign counter_clk = one;
        end
        else begin
            assign counter_clk = two;
        end
    end

endmodule
