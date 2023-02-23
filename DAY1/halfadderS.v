`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:25:08 02/22/2023 
// Design Name: 
// Module Name:    halfadderS 
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
module halfadderS(sum,carry,A,B
    );
input A,B;
output sum,carry;
xor g1(sum,A,B);
and g2(carry,A,B);

endmodule
