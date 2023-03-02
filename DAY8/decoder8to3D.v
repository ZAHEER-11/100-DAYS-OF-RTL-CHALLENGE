`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:06:54 03/02/2023 
// Design Name: 
// Module Name:    decoder8to3D 
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
module decoder8to3D(y,i
    );
input [2:0] i;
output [7:0] y;
assign i0=~i[0];
assign i1=~i[1];
assign i2=~i[2];
assign y[0]=i0&i1&i2;
assign y[1]=i2&i1&i[0];
assign y[2]=i2&i[1]&i0;
assign y[3]=i2&i[1]&i[0];
assign y[4]=i[2]&i1&i2;
assign y[5]=i[2]&i1&i[0];
assign y[6]=i[2]&i[1]&i0;
assign y[7]=i[2]&i[1]&i[0];

endmodule
