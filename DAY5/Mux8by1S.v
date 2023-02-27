`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:44:46 02/27/2023 
// Design Name: 
// Module Name:    Mux8by1S 
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
module Mux8by1S(
input[7:0] i,
input [2:0] s,
output y
    );
wire t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11;
not (t1,s[2]);
not (t2,s[1]);
not (t3,s[0]);
and (t4,i[0],t1,t2,t3);
and (t5,i[1],t1,t2,s[0]);
and (t6,i[2],t1,s[1],t3);
and (t7,i[3],t1,s[1],s[0]);
and (t8,i[4],s[2],t2,t3);
and (t9,i[5],s[2],t2,s[0]);
and (t10,i[6],s[2],s[1],t3);
and (t11,i[7],s[2],s[1],s[0]);
or (y,t4,t5,t6,t7,t8,t9,t10,t11);

endmodule
