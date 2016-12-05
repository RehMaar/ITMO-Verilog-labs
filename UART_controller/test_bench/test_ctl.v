`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:49:14 11/21/2016
// Design Name:   ctl
// Module Name:   /home/maar/code/xilinx_projects/uart/io_uart/test_ctl.v
// Project Name:  io_uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ctl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ctl;

	// Inputs
	reg clk;
	reg rst;
	reg rx;
	reg sw;
	
	// Outputs
	wire tx;
	wire [7:0] led;
	wire bclk;
	// Instantiate the Unit Under Test (UUT)
	baud_gen uut_baud(
		.clk(clk),
		.rst(rst),
		.bclk(bclk)
	);
	ctl uut (
		.clk(clk), 
		.rst(rst), 
		.rx(rx), 
		.tx(tx),  
		.sw(sw), 
		.led(led)
	);

	initial
		forever #10 clk = ~clk;
		
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		rx = 1;
		sw = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		#10;
	
/*
	// 0 0111 0101 1
		// start
		@( posedge bclk ) rx = 0;
		// data
		@( posedge bclk ) rx = 0;
		@( posedge bclk ) rx = 1;
		@( posedge bclk ) rx = 1;
		@( posedge bclk ) rx = 1;
		
		@( posedge bclk ) rx = 0;
		@( posedge bclk ) rx = 1;
		@( posedge bclk ) rx = 0;
		@( posedge bclk ) rx = 1;
		// stop
		@( posedge bclk ) rx = 1;
				// start
		@( posedge bclk ) rx = 0;
		// data
		@( posedge bclk ) rx = 0;
		@( posedge bclk ) rx = 1;
		@( posedge bclk ) rx = 0;
		@( posedge bclk ) rx = 0;
		
		@( posedge bclk ) rx = 0;
		@( posedge bclk ) rx = 1;
		@( posedge bclk ) rx = 0;
		@( posedge bclk ) rx = 0;
		// stop
		@( posedge bclk ) rx = 1;
	*/
	end
      
endmodule

