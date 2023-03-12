`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:44:53 03/12/2023
// Design Name:   Even_Parity_Generator
// Module Name:   /home/zaheer/RTLchallange/ParityGenerator/Even_Parity_Generator_tst.v
// Project Name:  ParityGenerator
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Even_Parity_Generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Even_Parity_Generator_tst;

	// Inputs
	reg [2:0] A;

	// Outputs
	wire P;
	reg [2:0] i;

	// Instantiate the Unit Under Test (UUT)
	Even_Parity_Generator uut (
		.A(A), 
		.P(P)
	);

	initial begin
		// Initialize Inputs
		A = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i=0;i<8;i=i+1)
		begin
		A=i;
		#100;
		end

	end
      
endmodule

