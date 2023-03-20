`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:16:18 03/20/2023
// Design Name:   JKff
// Module Name:   /home/zaheer/RTLchallange/flipflops/JKff_tst.v
// Project Name:  flipflops
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JKff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JKff_tst;

	// Inputs
	reg j;
	reg k;
	reg clk;

	// Outputs
	wire q;
	wire qbar;

	// Instantiate the Unit Under Test (UUT)
	JKff uut (
		.j(j), 
		.k(k), 
		.clk(clk), 
		.q(q), 
		.qbar(qbar)
	);

	always #50 clk=~clk;
	initial begin
		// Initialize Inputs
		j = 0;
		k = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		j=0; k=1;
		#100; j=1; k=0;
		#100; j=1; k=1;
	 end
      
endmodule

