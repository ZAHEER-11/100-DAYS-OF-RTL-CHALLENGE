`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:03:37 02/25/2023
// Design Name:   halfsubtractorD
// Module Name:   /home/zaheer/RTLchallange/halfsubtractor_tst.v
// Project Name:  RTLchallange
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfsubtractorD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module halfsubtractor_tst;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire diff;
	wire borrow;

	// Instantiate the Unit Under Test (UUT)
	halfsubtractorD uut (
		.diff(diff), 
		.borrow(borrow), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#200;
		A=0; B=0;
		#200;
		A=0; B=1;
		#200;
		A=1; B=0;
		#200;
		A=1; B=1;
        
		// Add stimulus here

	end
      
endmodule

