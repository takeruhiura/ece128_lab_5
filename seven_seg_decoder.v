`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Takeru Hiura and Shenrui Duan
// 
// Create Date: 09/16/2025 01:41:18 PM
// Design Name: Seven segment display module
// Module Name: bcd_seven_s
// Project Name: ECE 128 Lab 4
// Target Devices: 
// Tool Versions: 
// Description: This is the module to map out the binary digits for each LED. 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seven_seg_decoder(

input [3:0] data_in,
output reg [6:0] seg
    );
always @*
    begin
    
    case (data_in)
    0:seg=7'b1000000;
    1:seg=7'b1111001;
    2:seg=7'b0100100;
    3:seg=7'b0110000;
    4:seg=7'b0011001;
    5:seg=7'b0010010;
    6:seg=7'b0000010;
    7:seg=7'b1111000;
    8:seg=7'b0000000;
    9:seg=7'b0010000;
    default: seg=7'b1111111;
    endcase
    end
endmodule
