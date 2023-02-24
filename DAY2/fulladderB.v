`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:20 02/24/2023 
// Design Name: 
// Module Name:    fulladderB 
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
module fulladderB(sum,carry,A,B,Cin
    );
input wire A,B,Cin;
output reg sum,carry;
always @(A or B or Cin)
begin
sum=A^B^Cin;
carry=((A&B)|(B&Cin)|(Cin&A));
end

endmodule
