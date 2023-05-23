module Stopwatch (
    input wire clk,
    input wire rst,
    input wire pse,
    input wire adj,
    input wire sel,
    output reg [3:0] min_ten,
    output reg [3:0] min_one,
    output reg [3:0] sec_ten,
    output reg [3:0] sec_one
);

    // define constants
    localparam MAX_MIN = 60;
    localparam MAX_SEC = 59;
    localparam zero = 8'b11000000;
    localparam one = 8'b11111001;
    localparam two = 8'b10100100;
    localparam three = 8'b10110000;
    localparam four = 8'b10011001;
    localparam five = 8'b10010010;
    localparam six = 8'b10000010;
    localparam seven = 8'b11111000;
    localparam eight = 8'b10000000;
    localparam nine = 8'b10010000;

    // define registers
    reg [5:0] counter_sec;
    reg [5:0] counter_min;

    initial begin
        // seg_out = 7'b1111111;
        // an_out = 4'b1110;

        an_out = 0;
        counter_sec = 6'b000000;
        counter_min = 6'b000000;
    end

    wire clk_1hz;
    wire clk_2hz;
    wire clk_faster;
    wire clk_blink;

    // initialize ClockModule
    ClockModule cm (
        .clk        (clk),
        .clk_1hz    (clk_1hz),
        .clk_2hz    (clk_2hz),
        .clk_faster (clk_faster),
        .clk_blink  (clk_blink)
    );

    // the order of these always blocks are important since some rely on the same clock

    // increment seconds counter every second
    always @ (posedge clk_1hz) begin
        if (!adj && !pse) begin
            counter_sec <= counter_sec + 1;
        end
    end

    // increment minute counter every 60 seconds
    always @ (posedge clk_1hz) begin
        if (counter_sec == MAX_SEC && !adj && !pse) begin 
            counter_sec <= 6'b000000;
            counter_min <= (counter_min + 1) % MAX_MIN;
        end
    end

    // handle reset
    always @ (posedge clk_1hz) begin
        if (rst) begin
            counter_sec <= 6'b000000;
            counter_min <= 6'b000000;
        end
    end

    // handle adjust
    always @ (posedge clk_2hz) begin
        if (adj) begin
            if (sel == 0) begin // minutes selected
                counter_min <= (counter_min + 1) % MAX_MIN;
            end
            else begin
                counter_sec <= (counter_sec + 1) % MAX_SEC;
            end
        end
    end

    always @ (posedge clk_faster) begin
        min_ten <= counter_min / 10;
        min_one <= counter_min % 10;
        sec_ten <= counter_sec / 10;
        sec_one <= counter_sec % 10;
    end

    // // Handle adjust mode clock
    // always @(posedge clk_blink) begin
    //     if (adj)
    //     adjust_display <= adjust_display ^ 7'b1111111;
    // end

    // // handle seven-segment multiplexing
    // always @ (posedge clk_faster) begin
    //     case (an_out)
    //         4'b1110: seg_out <= seconds_display;
    //         4'b1101: seg_out <= seconds_display;
    //         4'b1011: seg_out <= minutes_display; 
    //         4'b0111: seg_out <= minutes_display;
    //         default: seg_out <= 6'b000000;
    //     endcase

    //     an_out <= (an_out != 4'b0111) ? an_out + 1 : 4'b1110;
    // end

    

endmodule
