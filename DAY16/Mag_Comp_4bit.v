`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:52:02 03/12/2023 
// Design Name: 
// Module Name:    Mag_Comp_4bit 
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
module Mag_Comp_4bit(A,B,Y1,Y2,Y3
    );
input [3:0] A,B;
output Y1,Y2,Y3;


assign Y1=(~A[3])&B[3]|(~(A[3]^B[3]))&((~A[2])&(B[2]))|(~(A[3]^B[3]))&(~(A[2]^B[2]))&((~A[1])&B[1])|(~(A[3]^B[3]))&(~(A[2]^B[2]))&(~(A[1]^B[1]))&((~A[0])&B[0]);
assign Y2=(~(A[3]^B[3]))&(~(A[2]^B[2]))&(~(A[1]^B[1]))&(~(A[0]^B[0]));
assign Y3=A[3]&(~B[3])|(~(A[3]^B[3]))&(A[2]&(~B[2]))|(~(A[3]^B[3]))&(~(A[2]^B[2]))&(A[1]&(~B[1]))|(~(A[3]^B[3]))&(~(A[2]^B[2]))&(~(A[1]^B[1]))&(A[0]&(~B[0]));



endmodule
