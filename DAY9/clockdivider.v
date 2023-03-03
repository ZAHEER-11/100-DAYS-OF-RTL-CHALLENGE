`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:31:40 03/03/2023 
// Design Name: 
// Module Name:    clockdivider 
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
module clockdivider(by2,by4,by8,clk,rst
    );
input clk,rst;
output reg by2,by4,by8;
reg [3:0] b;
always @(posedge clk)
begin
if(rst==0)
b=4'b0000;
else
b=b+4'b0001;
by2=b[1];
by4=b[2];
by8=b[3];
end
endmodule
