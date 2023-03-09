`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:10:11 03/09/2023 
// Design Name: 
// Module Name:    GraytoBinary 
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
module GraytoBinary(G,B
    );
input [3:0] G;
output [3:0] B;

assign B[3]=G[3];
assign B[2]=B[3]^G[2];
assign B[1]=B[2]^G[1];
assign B[0]=B[1]^G[0];

endmodule
