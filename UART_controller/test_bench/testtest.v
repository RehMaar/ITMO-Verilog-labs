`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:37:56 11/30/2016
// Design Name:   test
// Module Name:   /home/maar/code/xilinx_projects/uart/io_uart/testtest.v
// Project Name:  io_uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: test
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testtest;

	// Inputs
	reg clk;
	reg sig;
	// Instantiate the Unit Under Test (UUT)
	test uut (
		.clk(clk), 
		.sig(sig)
	);


	initial begin
		// Initialize Inputs
		sig = 0;
		clk  = 0;
		// Wait 100 ns for global reset to finish
		#10;
			sig = 1;
		#50;
			clk = 1;
		#10;
			clk = 0;
		#30;
			sig = 0;
		// Add stimulus here

	end
      
endmodule

