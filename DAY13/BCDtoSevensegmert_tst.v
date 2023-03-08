`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:46:36 03/08/2023
// Design Name:   BCDtoSevensegment
// Module Name:   /home/zaheer/RTLchallange/BtoS/BCDtoSevensegmert_tst.v
// Project Name:  BtoS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BCDtoSevensegment
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BCDtoSevensegmert_tst;

	// Inputs
	reg [3:0] bcd;

	// Outputs
	wire [6:0] sseg;
	
	reg [3:0] i; //temporary variable
	

	// Instantiate the Unit Under Test (UUT)
	BCDtoSevensegment uut (
		.bcd(bcd), 
		.sseg(sseg)
	);

	initial begin
		// Initialize Inputs
		bcd = 0;

		// Wait 100 ns for global reset to finish
		#100;
		for(i=0;i<10;i=i+1)
		begin
		bcd=i;
		#50;
		end
        
		// Add stimulus here

	end
      
endmodule

