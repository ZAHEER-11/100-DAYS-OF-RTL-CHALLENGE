`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:37:37 02/22/2023
// Design Name:   halfadderD
// Module Name:   /home/zaheer/RTLchallange/halfadderD_tst.v
// Project Name:  RTLchallange
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: halfadderD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module halfadderD_tst;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	halfadderD uut (
		.sum(sum), 
		.carry(carry), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A=0; B=0;
		#100;
		A=0; B=1;
		#100;
		A=1; B=0;
		#100;
		A=1; B=1;
        
		// Add stimulus here

	end
      
endmodule

