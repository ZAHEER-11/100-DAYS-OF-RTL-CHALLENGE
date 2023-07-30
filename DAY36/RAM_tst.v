`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2023 19:39:36
// Design Name: 
// Module Name: RAM_tst
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RAM_tst();
reg clk,en,wr_rd,rst;
reg [7:0] data_in;
reg [4:0] addr;
wire [7:0] data_out;
reg [7:0] temp[31:0];

//local variable
reg [4:0] addr_l;
reg [7:0] data_out_l;
//port connection
RAM dut(clk,en,wr_rd,rst,data_in,addr,data_out);

initial begin
clk=0;
rst=0;
#10;
en=1;
clk=1;
rst=1;
forever #5 clk=~clk;
end

initial begin
wr_rd=1;//write operation
addr= $random;
data_in=$random;
addr_l=addr;
temp[addr_l]= data_in;
#50;
wr_rd=0;
addr=addr_l;
#100 data_out_l=data_out;
end

endmodule
