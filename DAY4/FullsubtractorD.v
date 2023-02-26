`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:52:05 02/26/2023 
// Design Name: 
// Module Name:    FullsubtractorD 
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
module FullsubtractorD(D,Bout,P,Q,Bin
    );
input P,Q,Bin;
output D,Bout;
assign D=P^Q^Bin;
assign Bout=((Q&Bin)|((~P)&Bin)|(Q&(~P)));

endmodule
