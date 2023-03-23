`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:08:56 03/23/2023
// Design Name:   SIPOb
// Module Name:   /home/zaheer/RTLchallange/SIPO/SIPOb_tst.v
// Project Name:  SIPO
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SIPOb
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SIPOb_tst;

	// Inputs
	reg clk;
	reg si;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	SIPOb uut (
		.clk(clk), 
		.si(si), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		si = 1;
		#10;
		si=0;
		#10;
		si=0;
		#10;
		si=1;

	end
	always #5 clk=~clk;
      
endmodule

