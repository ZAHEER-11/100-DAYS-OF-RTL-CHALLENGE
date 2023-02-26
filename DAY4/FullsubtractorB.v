`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:33:21 02/26/2023 
// Design Name: 
// Module Name:    FullsubtractorB 
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
module FullsubtractorB(D,Bout,P,Q,Bin
    );
input wire P,Q,Bin;
output reg D,Bout;
always @(P or Q or Bin)
begin
D=P^Q^Bin;
Bout=((Q&Bin)|((~P)&Bin)|(Q&(~P)));
end

endmodule
