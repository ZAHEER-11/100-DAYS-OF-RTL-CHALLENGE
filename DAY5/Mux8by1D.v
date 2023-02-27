`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:28:50 02/27/2023 
// Design Name: 
// Module Name:    Mux8by1D 
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
module Mux8by1D(
  input [7:0] i,
  input [2:0] s,
  output y
  );
assign s0=~s[0];
assign s1=~s[1];
assign s2=~s[2];
assign y=(i[0]&s2&s1&s0)|(i[1]&s2&s1&s[0])|(i[2]&s2&s[1]&s0)|(i[3]&s2&s[1]&s[0])|(i[4]&s[2]&s1&s0)|(i[5]&s[2]&s1&s[0])|(i[6]&s[2]&s[1]&s0)|(i[7]&s[2]&s[1]&s[0]);

endmodule
