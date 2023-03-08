`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:30:54 03/08/2023 
// Design Name: 
// Module Name:    BinarytoGrayS 
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
module BinarytoGrayS(B,G
    );
input [3:0] B;
output [3:0] G;
not(Bbar,B[3]);
not(G[3],Bbar);
xor (G[2],B[3],B[2]);
xor (G[1],B[2],B[1]);
xor (G[0],B[1],B[0]);

endmodule
