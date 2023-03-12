`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:49:43 03/12/2023 
// Design Name: 
// Module Name:    Odd_Parity_Generator 
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
module Odd_Parity_Generator(A,P
    );
input [2:0] A;
output P;

assign P=~(A[2]^A[1]^A[0]);



endmodule
