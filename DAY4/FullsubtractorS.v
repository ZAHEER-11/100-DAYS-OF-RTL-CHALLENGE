`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:26:21 02/26/2023 
// Design Name: 
// Module Name:    FullsubtractorS 
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
module FullsubtractorS(D,Bout,P,Q,Bin
    );
input P,Q,Bin;
output D,Bout;
wire t1,t2,t3,t4;
xor g1(t1,P,Q);
xor g2(D,t1,Bin);
not g3(Pbar,P);
and g4(t2,Q,Bin);
and g5(t3,Pbar,Bin);
and g6(t4,Pbar,Q);
or g7(Bout,t2,t3,t4);

endmodule
