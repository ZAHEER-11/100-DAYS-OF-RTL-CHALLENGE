`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:00:32 03/05/2023
// Design Name:   ripplecarryadder_4
// Module Name:   /home/zaheer/RTLchallange/ripple_adder_4/ripplecarryadder_4_tst.v
// Project Name:  ripple_adder_4
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ripplecarryadder_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ripplecarryadder_4_tst;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg Cin;

	// Outputs
	wire [3:0] sum;
	wire carry;
	


	// Instantiate the Unit Under Test (UUT)
	ripplecarryadder_4 uut (
		.a(a), 
		.b(b), 
		.sum(sum), 
		.carry(carry), 
		.Cin(Cin)
	);

	initial begin
		// Initialize Inputs
		a = 4'b0;
		b = 4'b0;
		Cin = 4'b0;

		// Wait 100 ns for global reset to finish
		#100;
		
		// Add stimulus here
		a=4'b1111;
		b=4'b1011;
		Cin=0;
		#100
		a=4'b1111;
		b=4'b1011;
		Cin=1;
		#100
		a=4'b0000;
		b=4'b0001;
		Cin=0;
		#100
		a=4'b0101;
		b=4'b1010;
		Cin=1;
		
		

	end
      
endmodule

