`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:39:10 03/23/2023 
// Design Name: 
// Module Name:    PISOb 
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
module PISOb(clk,d,mode,so
    );
input clk,mode;
input [3:0] d;
output so;
reg [3:0] q=0;
always@(posedge clk)
begin
    if(mode)
	 begin
	 q<=d;
	 end
	 else
	 begin
	 q[3]<=1'bx;
	 q[2]<=q[3];
	 q[1]<=q[2];
	 q[0]<=q[1];
	 end
end
assign so=q[0];

endmodule
