`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:52:18 07/06/2023
// Design Name:   Mealy_NO
// Module Name:   /home/zaheer/RTLchallange/FSMmealy/Mealy_NO_tst1.v
// Project Name:  FSMmealy
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mealy_NO
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mealy_NO_tst1;

	// Inputs
	reg clk;
	reg rst;
	reg in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	Mealy_NO uut (
		.clk(clk), 
		.rst(rst), 
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		in = 0;
		#100 rst=0; clk=1; in=1;
		#100 in=0; 
		#100 in=1; 
		#100 in=0; 
		#100 in=1; 
		#100 in=0;


	end
	initial begin
		$monitor("time=%g || clk=%b || in=%b || out=%b || state=%d", $time,clk,in,out, uut.state);
	   #800 $finish;
	end
	always #50 clk=~clk;
      
endmodule

