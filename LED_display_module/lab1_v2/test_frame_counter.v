`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:31:55 09/27/2016
// Design Name:   frame_counter
// Module Name:   D:/lab1_v2/lab1_v2/test_frame_counter.v
// Project Name:  lab1_v2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: frame_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_frame_counter;

	// Inputs
	reg fc_clk;
	reg clk;
	// Outputs
	wire [4:0] fm_no;

	// Instantiate the Unit Under Test (UUT)
	frame_counter uut (
		.fc_clk(fc_clk), 
		.clk(clk),
		.fm_no(fm_no)
	);

	initial begin
		// Initialize Inputs
		fc_clk = 0;
		clk = 0;
		// Wait 100 ns for global reset to finish
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		#100;
		fc_clk = 1;
		#1 fc_clk = 0;
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		#100;
      fc_clk = 1;
		#1 fc_clk = 0;
		// Add stimulus here
		
	end
   always begin
			#1 clk = !clk;
	end 
endmodule

