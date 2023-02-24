`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:51:08 02/24/2023 
// Design Name: 
// Module Name:    fulladderD 
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
module fulladderD(sum,carry,A,B,Cin
    );
input A,B,Cin;
output sum,carry;
assign sum=A^B^Cin;
assign carry=((A&B)|(B&Cin)|(Cin&A));

endmodule
