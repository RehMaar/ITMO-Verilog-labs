`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:10:45 09/27/2016
// Design Name:   animation
// Module Name:   D:/lab1_v2/lab1_v2/led_test.v
// Project Name:  lab1_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: animation
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module led_test;

	// Inputs
	reg sw0;
	reg sw1;
	reg clk;

	// Outputs
	wire [15:0] led;

	// Instantiate the Unit Under Test (UUT)
	animation uut (
		.sw0(sw0), 
		.sw1(sw1), 
		.clk(clk), 
		.led(led)
	);
		

	initial begin
		// Initialize Inputs
		sw0 = 0;
		sw1 = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100
		sw0 = 1;
		sw1 = 0;
		/*
		#10
		sw0 = 0;
		sw1 = 1;
		#10000
		sw0 = 1;
		sw1 = 1;*/
	end
	
   always begin
			#1 clk = !clk;
	end
endmodule
