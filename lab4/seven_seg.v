module seven_seg(
	input [3:0] digit,
	output reg [7:0] seven_seg
    );
	 
    always @ (*) begin
        case(digit)    
            4'd0: seven_seg = 8'b11000000; // used for O too
            4'd1: seven_seg = 8'b11111001; // used for I too
            4'd2: seven_seg = 8'b10100100;
            4'd3: seven_seg = 8'b10110000;
            4'd4: seven_seg = 8'b10011001;
            4'd5: seven_seg = 8'b10010010; // used for S too
            4'd6: seven_seg = 8'b10000010;
            4'd7: seven_seg = 8'b11111000;
            4'd8: seven_seg = 8'b10000000;
            4'd9: seven_seg = 8'b10010000;
            4'd10: seven_seg = 8'b11000111; // makes L
            4'd11: seven_seg = 8'b10000110; // makes E
            4'd12: seven_seg = 8'b11000001; // makes U
            4'd13: seven_seg = 8'b11001000; // makes N
            4'd14: seven_seg = 8'b10001000; // makes A
            default: seven_seg = 8'b11111111;
        endcase
    end
endmodule
