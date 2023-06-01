module debouncer(input clk,
				input button,
				output reg debounce_btn);
	
	reg[15:0] counter;
	
	always @ (posedge clk) begin
			if (button == 1) begin //if the button is pressed, increment a counter
				counter <= counter + 1;
				
				if(counter == 16'hffff) begin //if counter reaches the max value, it means the button has been pressed for a while.
					debounce_btn <= 1;
					counter <= 0;
				end
			end
			else begin //otherwise reset the counter
				debounce_btn <= 0;
				counter <= 0;
			end
	end

endmodule