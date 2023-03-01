`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:59 03/01/2023 
// Design Name: 
// Module Name:    encoderD 
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
module encoderD(i,y
    );
input [7:0] i;
output [2:0] y;
assign y[0]=(i[1]|i[3]|i[5]|i[7]);
assign y[1]=(i[2]|i[3]|i[6]|i[7]);
assign y[2]=(i[4]|i[5]|i[6]|i[7]);

endmodule
