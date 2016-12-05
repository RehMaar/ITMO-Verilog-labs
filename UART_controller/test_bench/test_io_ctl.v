`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:17:09 11/21/2016
// Design Name:   io_ctl
// Module Name:   /home/maar/code/xilinx_projects/uart/io_uart/test_io_ctl.v
// Project Name:  io_uart
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: io_ctl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_io_ctl;

	// Inputs
	reg clk;
	reg rst;
	reg sw;
	reg [7:0] din;
	reg d_rdy;
	reg tx_rdy;

	// Outputs
	wire [7:0] dout;
	wire rd;
	wire bclk;

	baud_gen baud_uut(
		.clk(clk),
		.rst(rst),
		
		.bclk(bclk)
	);
	io_ctl uut (
		.clk(clk), 
		.rst(rst), 
		.sw(sw), 
		.din(din), 
		.d_rdy(d_rdy), 
		.tx_rdy(tx_rdy), 
		.dout(dout), 
		.rd(rd)
	);

			integer i;
   initial
		forever #10 clk = ~clk;

	initial begin
		// Initialize Inputs
		clk 	 = 0;
		rst 	 = 1;
		sw 	 = 1;
		din 	 = 0;
		d_rdy  = 0;
		tx_rdy = 1;

		forever begin
			tx_rdy = 0;
			for( i = 0; i < 10; i = i + 1 )
				@( posedge bclk );
			tx_rdy = 1;
			@( posedge clk );
			tx_rdy = 0;
			@( posedge clk );
		end
		
	end
      
endmodule

