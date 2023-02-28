`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:26:19 02/28/2023 
// Design Name: 
// Module Name:    demux8to1D 
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
module demux8to1D(y,s,i
    );
input i;
input [2:0] s;
output [7:0] y;
assign s0=~s[0];
assign s1=~s[1];
assign s2=~s[2];
assign y[0]=i&s2&s1&s0;
assign y[1]=i&s2&s1&s[0];
assign y[2]=i&s2&s[1]&s0;
assign y[3]=i&s2&s[1]&s[0];
assign y[4]=i&s[2]&s1&s0;
assign y[5]=i&s[2]&s1&s[0];
assign y[6]=i&s[2]&s[1]&s0;
assign y[7]=i&s[2]&s[1]&s[0];

endmodule
