`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:08:01 03/01/2023
// Design Name:   encoder8to3
// Module Name:   /home/zaheer/RTLchallange/encoder8to3_tst.v
// Project Name:  RTLchallange
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: encoder8to3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module encoder8to3_tst;

	// Inputs
	reg [7:0] i;

	// Outputs
	wire [2:0] y;
	
	// Instantiate the Unit Under Test (UUT)
	encoder8to3 uut (
		.y(y), 
		.i(i)
	);

	initial begin
		// Initialize Inputs
		i =8'b00000000;

		// Wait 100 ns for global reset to finish
		#100;
		i=8'b00000001;
		#100;
		i=8'b00000010;
		#100;
		i=8'b00000100;
		#100;
		i=8'b00001000;
		#100;
		i=8'b00010000;
		#100;
		i=8'b00100000;
		#100;
		i=8'b01000000;
		#100;
		i=8'b10000000;
		
		// Add stimulus here

	end
      
endmodule

