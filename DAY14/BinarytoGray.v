`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:16:11 03/08/2023 
// Design Name: 
// Module Name:    BinarytoGray 
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
module BinarytoGray(B,G
    );
input [3:0] B;
output [3:0] G;

assign G[3]=B[3];
assign G[2]=B[3]^B[2];
assign G[1]=B[2]^B[1];
assign G[0]=B[1]^B[0];

endmodule
