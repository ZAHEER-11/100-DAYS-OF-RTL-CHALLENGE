`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:15 02/22/2023 
// Design Name: 
// Module Name:    halfadderB 
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
module halfadderB(sum,carry,A,B
    );
input wire A,B;
output reg sum,carry;

always @(A or B)
begin

sum=A^B;
carry=A&B;

end
endmodule
