module counter (
    input clk,
    input adj,
    input sel,
    input pse,
    input rst,
    output reg sec,
    output reg min
);
    initial sec = 0;
    initial min = 0;
    
    always @ (posedge clk or posedge rst) begin
             
        if (rst == 1'b1) begin // reset is pressed
            sec = 0;
            min = 0;
        end
        
        else begin
            if (pse == 0'b1) begin
                // ADJ is LOW, stopwatch behaves normally
                if (adj == 0'b1) begin
                    sec = sec + 1;
                    if (sec >= 60) begin
                        sec = 0;
                        min = min + 1;
                        if (min >= 60) begin
                            min = 0;
                        end
                    end
                end
                // ADJ is HIGH, only increase selected digit
                else begin
                    if (sel == 0'b1) begin
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
                            min = 0;
                        end
                    end
                    
                end
            end
        end
    end
    
endmodule
