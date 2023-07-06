`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:54:50 07/07/2023 
// Design Name: 
// Module Name:    Mealy_O 
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

//1010 overlapping mealy sequence detector
module Mealy_O(
    input in,clk,rst,
    output reg out
    );
reg [1:0] state,nstate;
parameter s0= 2'b00,s1= 2'b01,s10= 2'b10,s101= 2'b11;

always@(posedge clk)
begin
if(rst==1) begin
state<= s0; 
end
else begin
state<= nstate; 
end
end

always@(state or in)
begin
case(state)
s0: if(in==1) begin
    nstate= s1; 
	 out= 1'b0; 
	 end
	 else begin
	 nstate= state; 
	 out= 1'b0; 
	 end

s1: if(in==0) begin
    nstate= s10; 
	 out= 1'b0; 
	 end
	 else begin
	 nstate= state; 
	 out= 1'b0; 
	 end

s10: if(in==1) begin
    nstate= s101; 
	 out= 1'b0;
	 end
	 else begin
	 nstate= s0; 
	 out= 1'b0; 
	 end

s101: if(in==0) begin
    nstate= s10; 
	 out= 1'b1; end
	 else begin
	 nstate= s1; 
	 out= 1'b0; end

default: begin
	nstate= s0;
	out=1'b0;
end
	 
endcase
end

endmodule