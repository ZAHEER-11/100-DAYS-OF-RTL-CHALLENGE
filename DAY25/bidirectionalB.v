`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:31 03/27/2023 
// Design Name: 
// Module Name:    bidirectionalB 
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
module bidirectionalB(clk,rst,dir,d,q
    );
input clk,rst,dir,d;
output reg [3:0] q;
always@(posedge clk)
begin

if(rst)
    q<=4'b0000;
else if(dir==0)
    q<={q[2:0],d};
else
    q<={d,q[3:1]};
end

endmodule
