`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:57:40 03/05/2023 
// Design Name: 
// Module Name:    ripplecarryadder_4 
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
module ripplecarryadder_4(a,b,sum,carry,Cin
    );
input [3:0] a,b;
input Cin;
output [3:0] sum;
output carry;
wire c1,c2,c3;
fulladderD FA0(.A(a[0]),.B(b[0]),.Cin(Cin),.sum(sum[0]),.carry(c1));
fulladderD FA1(.A(a[1]),.B(b[1]),.Cin(c1),.sum(sum[1]),.carry(c2));
fulladderD FA2(.A(a[2]),.B(b[2]),.Cin(c2),.sum(sum[2]),.carry(c3));
fulladderD FA3(.A(a[3]),.B(b[3]),.Cin(c3),.sum(sum[3]),.carry(carry));
endmodule
