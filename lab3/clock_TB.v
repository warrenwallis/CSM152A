`timescale 1ns/ 1ns

module clock_TB;
  
    reg clk;
    wire one;
    wire two;
    wire faster;
    
    clock sim_clk(
        .clk(clk),
        .one(one),
        .two(two),
        .faster(faster)
    );
    
    always #5 clk = ~clk; // produces a clockthat toggles every 10ns -> 100 000 000 Hz
    
    always @ (posedge one or posedge two or posedge faster) begin
        if (one) begin
            $display("1Hz clock is high");
        end
        
        if (two) begin
            $display("2Hz clock is high");
        end
        
        if (faster) begin
            $display("100Hz clock is high");
        end
    end
    
    initial begin
        $display($time, " << Starting the Simulation >>");
        clk = 0;
        #1000000000 $finish;
    end
    
endmodule
