`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:21:11 02/22/2023 
// Design Name: 
// Module Name:    halfadderD 
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
module halfadderD(sum,carry,A,B
    );
input A,B;
output sum,carry;
assign sum=A^B;
assign carry=A&B;

endmodule
