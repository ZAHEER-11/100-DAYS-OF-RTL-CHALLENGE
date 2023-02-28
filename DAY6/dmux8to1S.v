`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:56 02/28/2023 
// Design Name: 
// Module Name:    dmux8to1S 
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
module dmux8to1S(y,s,i
    );
input i;
input [2:0] s;
output [7:0] y;
not g1(s0,s[0]);
not g2(s1,s[1]);
not g3(s2,s[2]);
and g4(y[0],i,s2,s1,s0);
and g5(y[1],i,s2,s1,s[0]);
and g6(y[2],i,s2,s[1],s0);
and g7(y[3],i,s2,s[1],s[0]);
and g8(y[4],i,s[2],s1,s0);
and g9(y[5],i,s[2],s1,s[0]);
and g10(y[6],i,s[2],s[1],s0);
and g11(y[7],i,s[2],s[1],s[0]);

endmodule
