`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2023 19:19:06
// Design Name: 
// Module Name: RAM
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


module RAM(clk,en,wr_rd,rst,data_in,addr,data_out);
input clk,en,wr_rd,rst;
input [7:0] data_in;
input [4:0] addr;
output reg [7:0] data_out;

//local variable
integer i;

//memory declaration  width name depth
reg [7:0] RAM[31:0];

always @(posedge clk) begin
    if(en) begin
        if(!rst)begin
            data_out<=0;
            for (i=0;i<32;i=i+1) begin
                RAM[i]=0;
            end     
        end
        else begin
            if(wr_rd==1) begin //write operation
                RAM[addr]<=data_in;
            end
            else begin //read operation
                data_out<=RAM[addr];
      
            end
        end
    end
    else begin
    end
end
endmodule
