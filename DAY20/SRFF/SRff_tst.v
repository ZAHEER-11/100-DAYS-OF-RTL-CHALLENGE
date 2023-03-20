`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:47:07 03/20/2023
// Design Name:   SRff
// Module Name:   /home/zaheer/RTLchallange/flipflops/SRff_tst.v
// Project Name:  flipflops
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SRff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SRff_tst;

	// Inputs
	reg s;
	reg r;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	SRff uut (
		.s(s), 
		.r(r), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);
	always #50 clk=~clk;
	initial begin
		// Initialize Inputs
		s = 0;
		r = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		s=0; r=1;
		#100; s=1; r=0;
		#100; s=1; r=1;
   end
		
      
endmodule

