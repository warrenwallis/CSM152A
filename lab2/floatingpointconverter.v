`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:32 04/25/2023 
// Design Name: 
// Module Name:    floatingpointconverter 
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
module absoluteConverter(
    input [11:0] D,
    output reg sign,
    output reg [11:0] absolute_magnitude
);

    always @(D) begin
        sign = D[11];
        if (D == 12'b100000000000)
            // change it to -2047 which is the closest number that can be converted
            absolute_magnitude = 12'b011111111111; 
        else if (D[11] == 1)
            absolute_magnitude = ~(D) + 1;
        else
            absolute_magnitude = D;
    end
endmodule

module countLeadingZeroes(
    input [11:0] abs_mag,
    output reg [2:0] exp,
    output reg [3:0] sig_fig,
    output reg fifth_bit
);

// almost right
//    integer i = 8;
//    always @(*) begin
//        i = 8;
//        exp = 0;
//        sig_fig = abs_mag[3:0];
//        fifth_bit = 0;
//    
//        while (i >= 0) begin
//            if (abs_mag[i + 2] == 1) begin
//                exp = i - 1;
//                sig_fig = abs_mag[(i+1)-:3];
//                fifth_bit = abs_mag[i-3];
//                i = 0;
//            end
//            i = i - 1;
//        end
//    end

    always @(*) begin
        if (abs_mag[10] == 1) begin
            exp = 7;
            sig_fig = abs_mag[10:7];
            fifth_bit = abs_mag[6];
        end
        else if (abs_mag[9] == 1) begin
            exp = 6;
            sig_fig = abs_mag[9:6];
            fifth_bit = abs_mag[5];
        end
        else if (abs_mag[8] == 1) begin
            exp = 5;
            sig_fig = abs_mag[8:5];
            fifth_bit = abs_mag[4];
        end
        else if (abs_mag[7] == 1) begin
            exp = 4;
            sig_fig = abs_mag[7:4];
            fifth_bit = abs_mag[3];
        end
        else if (abs_mag[6] == 1) begin
            exp = 3;
            sig_fig = abs_mag[6:3];
            fifth_bit = abs_mag[2];
        end
        else if (abs_mag[5] == 1) begin
            exp = 2;
            sig_fig = abs_mag[5:2];
            fifth_bit = abs_mag[1];
        end
        else if (abs_mag[4] == 1) begin
            exp = 1;
            sig_fig = abs_mag[4:1];
            fifth_bit = abs_mag[0];
        end
        else begin
            exp = 0;
            sig_fig = abs_mag[4:0];
            fifth_bit = 0;
        end
    end

endmodule

module rounding(
    input [2:0] exp,
    input [3:0] sig_fig,
    input fifth_bit,
    output reg [2:0] E_out,
    output reg [3:0] F_out
);
    
    always @(*) begin
        if(fifth_bit == 1) begin
            if (sig_fig != 4'b1111) begin
                E_out = exp;
                F_out = sig_fig + 1;
            end
            else begin
                if(exp != 3'b111) begin
                    E_out = exp + 1;
                    F_out = (sig_fig >> 1) + 1;
                end
                else begin
                    E_out = 3'b111;
                    F_out = 4'b1111;
                end
            end
        end
        else begin
            E_out = exp;
            F_out = sig_fig;
        end
    end

endmodule

module floatingPointConverter(
    input [11:0] D,
    output S,
    output [2:0] E,
    output [3:0] F
);

    wire [11:0] absolute_magnitude;
    wire sign;
    assign S = sign;

    absoluteConverter abs_mod (
        .D(D),
        .sign(sign),
        .absolute_magnitude(absolute_magnitude)
    );
    
    wire [2:0] exp;
    wire [3:0] sigfig;
    wire fifth_bit;
    
    countLeadingZeroes counter_mod (
        .abs_mag(absolute_magnitude),
        .exp(exp),
        .sig_fig(sigfig),
        .fifth_bit(fifth_bit)
    );
    
    wire [2:0] E_out;
    wire [3:0] F_out;
    
    rounding round_mod (
        .exp(exp),
        .sig_fig(sigfig),
        .fifth_bit(fifth_bit),
        .E_out(E_out),
        .F_out(F_out)
    );
    
    assign E = E_out;
    assign F = F_out;

endmodule
