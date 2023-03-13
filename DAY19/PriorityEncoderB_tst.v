`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:37:56 03/13/2023
// Design Name:   PriorityEncoderB
// Module Name:   /home/zaheer/RTLchallange/PriorityEncoder/PriorityEncoderB_tst.v
// Project Name:  PriorityEncoder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PriorityEncoderB
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PriorityEncoderB_tst;

	// Inputs
	reg [7:0] d;

	// Outputs
	wire [2:0] o;
	integer i;

	// Instantiate the Unit Under Test (UUT)
	PriorityEncoderB uut (
		.d(d), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		d = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		for(i=0;i<255;i=i+1)
		begin
		d=i;
		#100;
		end

	end
      
endmodule

