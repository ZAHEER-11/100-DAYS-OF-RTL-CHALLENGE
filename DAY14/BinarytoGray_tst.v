`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:21:48 03/08/2023
// Design Name:   BinarytoGray
// Module Name:   /home/zaheer/RTLchallange/BtoG.v/BinarytoGray_tst.v
// Project Name:  BtoG.v
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BinarytoGray
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BinarytoGray_tst;

	// Inputs
	reg [3:0] B;

	// Outputs
	wire [3:0] G;
	reg [3:0] i;

	// Instantiate the Unit Under Test (UUT)
	BinarytoGray uut (
		.B(B), 
		.G(G)
	);

	initial begin
		// Initialize Inputs
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i=0;i<16;i=i+1)
		begin
		B=i;
		
		#50;
		end

	end
      
endmodule

