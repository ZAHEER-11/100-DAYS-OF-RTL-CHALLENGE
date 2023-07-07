`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:10:44 07/07/2023 
// Design Name: 
// Module Name:    Moore_NO 
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
module Moore_NO(clk,rst,in,out);

input clk,rst,in;
output reg out;

parameter s0=3'b000,s1=3'b001,s10=3'b010,s101=3'b011,s1010=3'b100;
reg [2:0] cstate,nstate;

always @(posedge clk)begin
	if(rst==1)begin
		cstate<=s0;
	end
	else begin
		cstate<=nstate;
	end
end

always @(in or cstate)begin
	case(cstate)
	s0: if(in==1)begin
		out=1'b0;
		nstate=s1;
	end
	else begin
		out=1'b0;
		nstate=s0;
	end
	
	s1: if(in==1)begin
		out=1'b0;
		nstate=s1;
	end
	else begin
		out=1'b0;
		nstate=s10;
	end
	
	s10: if(in==1)begin
		out=1'b0;
		nstate=s101;
	end
	else begin
		out=1'b0;
		nstate=s0;
	end
	
	s101: if(in==1)begin
		out=1'b0;
		nstate=s1;
	end
	else begin
		out=1'b0;
		nstate=s1010;
	end
	
	s1010: if(in==1)begin
		out=1'b1;
		nstate=s1;
	end
	else begin
		out=1'b1;
		nstate=s0;
	end
	
	default: nstate=s0;
	endcase
end

endmodule
