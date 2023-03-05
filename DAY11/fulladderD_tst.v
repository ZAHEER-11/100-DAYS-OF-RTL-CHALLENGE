`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:53:17 03/05/2023
// Design Name:   fulladderD
// Module Name:   /home/zaheer/RTLchallange/ripple_adder_4/fulladderD_tst.v
// Project Name:  ripple_adder_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladderD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fulladderD_tst;

	// Inputs
	reg A;
	reg B;
	reg Cin;

	// Outputs
	wire sum;
	wire carry;

	// Instantiate the Unit Under Test (UUT)
	fulladderD uut (
		.sum(sum), 
		.carry(carry), 
		.A(A), 
		.B(B), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Cin = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 0;
		B = 0;
		Cin = 1;
		#100;
		A = 0;
		B = 1;
		Cin = 0;
		#100;
      A = 0;
		B = 1;
		Cin = 1;
		#100;
		A=1;
		B=0;
		Cin=0;
		#100;
		A = 1;
		B = 0;
		Cin = 1;
		#100;
		A = 1;
		B = 1;
		Cin = 0;
		#100;
		A = 1;
		B = 1;
		Cin = 1;
		// Add stimulus here

	end
      
endmodule
