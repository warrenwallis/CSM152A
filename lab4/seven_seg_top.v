//
//
// TODO: 
// - take card from player_action module
// - take in point from player_action module
// - take in result (should be constantly being evaluated so that once button pressed, result will be shown)
//
module sevenseg_top(
    input hit,
    input stay,
    input rst,
    input display_clk,
    input point_display_sel,
    input game_finished,
    input result,
    input [4:0] point,
    input [15:0] cards,
    output reg [7:0] seg,
    output reg [3:0] an
    );
    
    // 1 is leftmost segment, 4 is rightmost segment

    localparam lose_digit1 = 4'b1010;
    localparam lose_digit2 = 4'b0000;
    localparam lose_digit3 = 4'b0101;
    localparam lose_digit4 = 4'b1011;
    
    localparam win_digit1 = 4'b1100;
    localparam win_digit2 = 4'b1100;
    localparam win_digit3 = 4'b0001;
    localparam win_digit4 = 4'b1101;
    
    localparam anode1 = 4'b0111;
    localparam anode2 = 4'b1011;
    localparam anode3 = 4'b1101;
    localparam anode4 = 4'b1110;
   
    ////////////////////////////////////////////////////////
    //
    //  generating seven-seg signals for cards
    //
    ////////////////////////////////////////////////////////
    
    reg[15:0] cards = 16'b1111111111111111;
    
    wire [7:0] card1_seg, card2_seg, card3_seg, card4_seg;
        
    seven_seg card1(cards[15:12], card1_seg);
    seven_seg card2(cards[11:8], card2_seg);
    seven_seg card3(cards[7:4], card3_seg);
    seven_seg card4(cards[3:0], card4_seg);   
    
    ////////////////////////////////////////////////////////
    //
    //  generating seven-seg signals for points
    //
    ////////////////////////////////////////////////////////
    
    reg [3:0] point_tens, point_ones;
    
    always @ * begin
        point_tens = point / 10;
        point_ones = point % 10;
    end
    
    wire [7:0] blank_seg, point1_seg, point2_seg;
    seven_seg blank(4'b1111, blank_seg);
    seven_seg point1(point_tens, point1_seg);
    seven_seg point2(point_ones, point2_seg);
    
    ////////////////////////////////////////////////////////
    //
    //  generating seven-seg signals for results
    //
    ////////////////////////////////////////////////////////
    
    wire[7:0] lose_seg1, lose_seg2, lose_seg3, lose_seg4;
    wire[7:0] win_seg1, win_seg2, win_seg3, win_seg4;
    
    seven_seg loseseg1(lose_digit1, lose_seg1);
    seven_seg loseseg2(lose_digit2, lose_seg2);
    seven_seg loseseg3(lose_digit3, lose_seg3);
    seven_seg loseseg4(lose_digit4, lose_seg4);
    
    seven_seg winseg1(win_digit1, win_seg1);
    seven_seg winseg2(win_digit2, win_seg2);
    seven_seg winseg3(win_digit3, win_seg3);
    seven_seg winseg4(win_digit4, win_seg4);
    
    ////////////////////////////////////////////////////////
    //
    //  output to display
    //
    ////////////////////////////////////////////////////////

    reg[1:0] anode = 0;
    
    always @ (posedge display_clk) begin
    
        if (game_finished == 1) begin
            if (anode == 0) begin
                an <= anode1;
                seg <= (result == 0) ? lose_seg1 : win_seg1;
                anode <= anode + 1;
            end
            else if (anode == 1) begin
                an <= anode2;
                seg <= (result == 0) ? lose_seg2 : win_seg2;
                anode <= anode + 1;
            end
            else if (anode == 2) begin
                an <= anode3;
                seg <= (result == 0) ? lose_seg3 : win_seg3;
                anode <= anode + 1;
            end
            else begin
                an <= anode4;
                seg <= (result == 0) ? lose_seg4 : win_seg4;
                anode <= 0;
            end
        end
        
        else begin
    
            if (point_display_sel == 1) begin // points display mode
                if (anode == 0) begin
                    an <= anode1;
                    seg <= blank_seg;
                    anode <= anode + 1;
                end
                else if (anode == 1) begin
                    an <= anode2;
                    seg <= blank_seg;
                    anode <= anode + 1;
                end
                else if (anode == 2) begin
                    an <= anode3;
                    seg <= point1_seg;
                    anode <= anode + 1;
                end
                else begin
                    an <= anode4;
                    seg <= point2_seg;
                    anode <= 0;
                end
            end
            
            else begin  // cards display mode
                if (anode == 0) begin
                    an <= anode1;
                    seg <= card1_seg;
                    anode <= anode + 1;
                end
                else if (anode == 1) begin
                    an <= anode2;
                    seg <= card2_seg;
                    anode <= anode + 1;
                end
                else if (anode == 2) begin
                    an <= anode3;
                    seg <= card3_seg;
                    anode <= anode + 1;
                end
                else begin
                    an <= anode4;
                    seg <= card4_seg;
                    anode <= 0;
                end
            end
        end
    end

endmodule
