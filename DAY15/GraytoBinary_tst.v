`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:21:31 03/09/2023
// Design Name:   GraytoBinary
// Module Name:   /home/zaheer/RTLchallange/GtoB/GraytoBinary_tst.v
// Project Name:  GtoB
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: GraytoBinary
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module GraytoBinary_tst;

	// Inputs
	reg [3:0] G;

	// Outputs
	wire [3:0] B;
	reg [3:0] i;

	// Instantiate the Unit Under Test (UUT)
	GraytoBinary uut (
		.G(G), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		G = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i=0;i<16;i=i+1)
		begin
		G=i;
		#50;
		end

	end
      
endmodule

