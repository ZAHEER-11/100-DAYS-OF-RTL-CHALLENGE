`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:53:10 03/02/2023
// Design Name:   decoder3to8B
// Module Name:   /home/zaheer/RTLchallange/decoder8to3_tst.v
// Project Name:  RTLchallange
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decoder3to8B
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoder8to3_tst;

	// Inputs
	reg [2:0] i;

	// Outputs
	wire [7:0] y;

	// Instantiate the Unit Under Test (UUT)
	decoder3to8B uut (
		.i(i), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		i = 3'b000;

		// Wait 100 ns for global reset to finish
		#100;
		i=3'b001;
		#100;
		i=3'b010;
		#100;
		i=3'b011;
		#100;
		i=3'b100;
		#100;
		i=3'b101;
		#100;
		i=3'b110;
		#100;
		i=3'b111;
        
		// Add stimulus here

	end
      
endmodule

