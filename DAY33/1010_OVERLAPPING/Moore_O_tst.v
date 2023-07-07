`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:32:44 07/07/2023
// Design Name:   Moore_O
// Module Name:   /home/zaheer/RTLchallange/FSMmoore/Moore_O_tst.v
// Project Name:  FSMmoore
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Moore_O
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Moore_O_tst;

	// Inputs
	reg clk;
	reg rst;
	reg in;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	Moore_O uut (
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
		$monitor("time=%g || clk=%b || in=%b || out=%b || cstate=%d || nstate=%d",$time,clk,in,out,uut.cstate,uut.nstate);
		#800 $finish;
	end
	
always #50 clk=~clk;
      
endmodule

