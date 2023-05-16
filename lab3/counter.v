module counter (
    input clk,
    input adj,
    input sel,
    input pse,
    input rst,
    output reg [5:0] sec,
    output reg [5:0] min
);
    initial sec = 6'b000000;
    initial min = 6'b000000;
    
    always @ (posedge clk or posedge rst) begin
             
        if (rst == 1'b1) begin // reset is pressed
            sec = 0;
            min = 0;
        end
        
        else begin
            if (pse == 1'b0) begin
                // ADJ is LOW, stopwatch behaves normally
                if (adj == 1'b0) begin
                    if (sec < 60) begin
                        sec = sec + 1'b1;
                    end
                    else begin
                        sec = 0;
                        if (min < 60) begin
                            min = min + 1'b1;
                        end
                        else begin
                            min = 0;
                        end
                    end
                end
                // ADJ is HIGH, only increase selected digit
                else begin
                    if (sel == 1'b0) begin
                        // min selected
                        min = min + 1;
                        if (min >= 60) begin
                            min = 0;
                        end
                    end
                    else begin
                        // sec selected
                        sec = sec + 1;
                        if (sec >= 60) begin
                            sec = 0;
                        end
                    end
                end
            end
        end
    end
    
endmodule
