`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2025 01:37:26 PM
// Design Name: 
// Module Name: anode_generator
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

module anode_generator(clk,bcd_in,seg_anode,bcd_out
);
    input clk;
    input [15:0] bcd_in;
   
    output reg [3:0] seg_anode;
    output reg [6:0] bcd_out;
   
    reg [9:0] g_count=0;
    reg [3:0] anode = 4'b1110;

    always @(posedge clk)
   
        begin
        g_count <= g_count + 1;
       
        if (g_count == 1023) begin
            g_count <= 0;
            anode <= {anode[0], anode[3:1]};
        end
       
        seg_anode <= anode;

        case(anode)
            4'b1110: bcd_out <= bcd_in[3:0];
            4'b1101: bcd_out <= bcd_in[7:4];
            4'b1011: bcd_out <= bcd_in[11:8];
            4'b0111: bcd_out <= bcd_in[15:12];
            default: bcd_out <= 4'b1111;
        endcase
    end
    initial begin
        seg_anode=4'b1110;
    end
endmodule

