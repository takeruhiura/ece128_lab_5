`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Lehigh University
// Engineer: Takeru Hiura and Shenrui Duan
// 
// Create Date: 09/16/2025 01:41:18 PM
// Design Name: multiseg driver
// Module Name: bcd_seven_s
// Project Name: ECE 128 Lab 5
// Target Devices: 
// Tool Versions: 
// Description: This is the module to implement the driver
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiseg_driver(
input clk,
input [15:0] bcd_in,
output [3:0] seg_anode,
output [6:0] seg_cathode
);
wire [3:0] bcd_val;
anode_generator AG(.clk(clk),.bcd_in(bcd_in),.seg_anode(seg_anode),.bcd_out(bcd_val));
seven_seg_decoder SSD(.data_in(bcd_val),.seg(seg_cathode));


endmodule;
