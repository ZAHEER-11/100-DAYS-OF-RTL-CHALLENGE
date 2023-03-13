`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:23:32 03/13/2023 
// Design Name: 
// Module Name:    Odd_Parity_Checker 
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
module Odd_Parity_Checker(output P,input A,B,C,Odd
    );
assign P=~(A^B^C^Odd);

endmodule
