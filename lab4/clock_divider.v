module clock_divider(
        input clk,
        input rst,
        output reg clk_1khz,
        output reg clk_25mhz
    );

    //divisor logic: the clk is 100Mhz, 25Mhz = flip bit every 2 times the clk changes value.
    localparam divisor_1khz = 50_000; //1khz for seven seg display
    localparam divisor_25mhz = 2; //25mhz for vga
    
    reg[15:0] counter_1khz = 16'b0;
    reg[15:0] counter_25mhz = 16'b0;
    
    always @ (posedge(clk) or posedge(rst)) begin //handles 1khz clk
		if(rst == 1'b1) begin //if reset then reset the values
			counter_1khz <= 16'b0;
			clk_1khz <= 1'b0;
 		end
		else if(counter_1khz == divisor_1khz - 1) begin //if the divisor value is reached, reset counter and flip the divided clk bit
			counter_1khz <= 16'b0;
			clk_1khz <= ~clk_1khz;
		end
		else begin //otherwise just increment the counter
			counter_1khz <= counter_1khz + 1;
			clk_1khz <= clk_1khz;
		end
	end
    
    always @ (posedge(clk) or posedge(rst)) begin //handles 25mhz clk
		if(rst == 1'b1) begin //if reset then reset the values
			counter_25mhz <= 16'b0;
			clk_25mhz <= 1'b0;
 		end
		else if(counter_25mhz == divisor_25mhz - 1) begin //if the divisor value is reached, reset counter and flip the divided clk bit
			counter_25mhz <= 16'b0;
			clk_25mhz <= ~clk_25mhz;
		end
		else begin //otherwise just increment the counter
			counter_25mhz <= counter_25mhz + 1;
			clk_25mhz <= clk_25mhz;
		end
	end

endmodule
