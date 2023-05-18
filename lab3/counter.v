module counter (
    input clk,
    input adj,
    input sel,
    input pse,
    input rst,
    output  [3:0] sec_one_wire,
    output  [3:0] sec_ten_wire,
    output [3:0] min_one_wire,
    output  [3:0] min_ten_wire
);
    
    reg paused = 0;
    
    reg [3:0] sec_one;
    reg [3:0] sec_ten;
    reg [3:0] min_one;
    reg [3:0] min_ten;
    
    always @ (posedge pse) begin
        paused = ~paused;
    end
    
    always @ (posedge clk or posedge rst) begin
             
        if (rst == 1'b1) begin // reset is pressed
            sec_one = 4'b0000;
            sec_ten = 4'b0000;
            min_one = 4'b0000;
            min_ten = 4'b0000;
        end
        
        else begin
            if (paused == 0) begin
                // ADJ is LOW, stopwatch behaves normally
                if (adj == 1'b0) begin
                    if (sec_one < 10) begin
                        sec_one = sec_one + 1'b1;
                    end
                    else begin
                        sec_one = 4'b0000;
                        if (sec_ten < 6) begin
                            sec_ten = sec_ten + 1'b1;
                        end
                        else begin
                            sec_ten = 4'b0000;
                            if(min_one < 10) begin
                                min_one = min_one + 1'b1;
                            end
                            else begin
                                min_one = 4'b0000;
                                if (min_ten < 6) begin
                                    min_ten = min_ten + 1'b1;
                                end
                                else begin
                                    min_ten = 4'b0000;
                                end
                            end
                        end
                    end
                end
                // ADJ is HIGH, only increase selected digit
                else begin
                    if (sel == 1'b0) begin
                        if (min_one < 10) begin
                            min_one = min_one + 1'b1;
                        end
                        else begin
                            min_one = 4'b0000;
                            if (min_ten < 6) begin
                                min_ten = min_ten + 1'b1;
                            end
                            else begin
                                min_ten = 4'b0000;
                            end
                        end
                    end
                    else begin
                        // sec selected
                        if (sec_one < 10) begin
                            sec_one = sec_one + 1'b1;
                        end
                        else begin
                            sec_one = 4'b0000;
                            if (sec_ten < 6) begin
                                sec_ten = sec_ten + 1'b1;
                            end
                            else begin
                                sec_ten = 4'b0000;
                            end
                        end
                    end
                end
            end
        end
    end
//        output  [3:0] sec_one_wire,
//    output  [3:0] sec_ten_wire,
//    output [3:0] min_one_wire,
//    output  [3:0] min_ten_wire
    assign sec_one_wire = sec_one;
    assign sec_ten_wire = sec_ten;
    assign min_one_wire = min_one;
    assign min_ten_wire = min_ten;
    
endmodule
