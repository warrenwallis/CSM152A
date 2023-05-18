module display(
    input clk_blink,
    input clk_update,
    input adj,
    input sel,
    input pse,
    input [3:0] sec_one,
    input [3:0] sec_ten,
    input [3:0] min_one,
    input [3:0] min_ten,
    output [7:0] seven_seg_wire,
	output [3:0] anode_count_wire
);
    parameter AN0 = 4'b1110,
              AN1 = 4'b1101,
              AN2 = 4'b1011,
              AN3 = 4'b0111;
	
    reg [1:0] anode;
    wire [7:0] sec_one_seg;
    wire [7:0] sec_ten_seg;
    wire [7:0] min_one_seg;
    wire [7:0] min_ten_seg;
    wire [7:0] blink_seg;
    
    reg [7:0] seven_seg;
    reg [3:0] anode_count;
    integer count = 0;
    
    seven_segment sec_one_display(
        .digit(sec_one),
        .seven_seg_wire(sec_one_seg)
    );
    
    seven_segment sec_ten_display(
        .digit(sec_ten),
        .seven_seg_wire(sec_ten_seg)
    );
    
    seven_segment min_one_display(
        .digit(min_one), 
        .seven_seg_wire(min_one_seg)
    );
    
    seven_segment min_ten_display(
        .digit(min_ten), 
        .seven_seg_wire(min_ten_seg)
    );
    
    seven_segment blink_display(
        .digit(4'b1111), 
        .seven_seg_wire(blink_seg)
    );

    always @ (posedge clk_update) begin
        if (adj == 0) begin
			count = 0;
            case(anode)
                2'b00: begin
                    anode_count = AN0;
                    seven_seg = sec_one_seg;
                    anode = anode + 1'b1;
                    end
                2'b01: begin
                    anode_count = AN1;
                    seven_seg = sec_ten_seg;
                    anode = anode + 1'b1;
                    end
                2'b10: begin
                    anode_count = AN2;
                    seven_seg = min_one_seg;
                    anode = anode + 1'b1;
                    end
                2'b11: begin
                    anode_count = AN3;
                    seven_seg = min_ten_seg;
                    anode = 2'b00;
                    end
            endcase
        end
		else begin // adjust is on
			if (clk_blink) begin // turn off
				case (count)
					0: begin
						anode_count = AN0;
						seven_seg = blink_seg;
						anode = anode + 1'b1;
					end
					1: begin
						anode_count = AN1;
						seven_seg = blink_seg;
						anode = anode + 1'b1;
					end
					2: begin
						anode_count = AN2;
						seven_seg = blink_seg;
						anode = anode + 1'b1;
					end
					3: begin
						anode_count = AN3;
						seven_seg = blink_seg;
						anode = 2'b00;
					end
				endcase
				count = (count + 1) % 4;
			end
			else begin
				case (count)
					0: begin
						anode_count = AN0;
						seven_seg = sec_one_seg;
						anode = anode + 1'b1;
					end
					1: begin
						anode_count = AN1;
						seven_seg = sec_ten_seg;
						anode = anode + 1'b1;
					end
					2: begin
						anode_count = AN2;
						seven_seg = min_one_seg;
						anode = anode + 1'b1;
					end
					3: begin
						anode_count = AN3;
						seven_seg = min_ten_seg;
						anode = 2'b00;
					end
				endcase
				count = (count + 1) % 4;
			end
        end
    end
    
    assign seven_seg_wire = seven_seg;
    assign anode_count_wire = anode_count;
    
endmodule
