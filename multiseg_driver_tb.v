`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 02:20:11 PM
// Design Name: 
// Module Name: multiseg_driver_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module multiseg_driver_tb;

    reg clk;
    reg [15:0] bcd_in;
    wire [3:0] seg_anode;
    wire [6:0] seg_cathode;
    
    multiseg_driver uut(.clk(clk),.bcd_in(bcd_in),.seg_anode(seg_anode),.seg_cathode(seg_cathode));
    
    initial begin
        clk=0;
        #10 clk=~clk;
    end
    
    initial begin
        bcd_in={4'd1,4'd2,4'd3,4'd4};
        #10;
        bcd_in={4'd9,4'd8,4'd7,4'd6};
        #10;
        
        $stop;
     end
     
endmodule
