`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:41:22 05/16/2023 
// Design Name: 
// Module Name:    debouncer 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module debouncer(
	input button,
	input clk,
	output button_state // this should be a passed in wire
    );

reg button_state_reg = 0;

reg button_sync1, button_sync2;

//always @(posedge clk)
//    button_sync1 <= button;
//
//always @(posedge clk)
//    button_sync2 <= button_sync1;

always @ (posedge clk)
begin
	button_sync2 = button_sync1;
	button_sync1 = button;

	// if button was just pressed
	if (button_sync1 && !button_sync2) begin
		button_state_reg <= 1;
	end else begin
		button_state_reg <= 0;
	end
end

assign button_state = button_state_reg;

endmodule
