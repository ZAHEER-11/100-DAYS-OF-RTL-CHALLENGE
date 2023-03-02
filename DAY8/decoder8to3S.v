`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:19:30 03/02/2023 
// Design Name: 
// Module Name:    decoder8to3S 
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
module decoder8to3S(y,i
    );
input [2:0] i;
output [7:0] y;

not g1(i0,i[0]);
not g2(i1,i[1]);
not g3(i2, i[2]);
and g4(y[0],i0,i1,i2);
and g5(y[1],i2,i1,i[0]);
and g6(y[2],i2,i[1],i0);
and g7(y[3],i2,i[1],i[0]);
and g8(y[4],i[2],i1,i0);
and g9(y[5],i[2],i1,i[0]);
and g10(y[6],i[2],i[1],i0);
and g11(y[7],i[2],i[1],i[0]);

endmodule
