`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:36:12 11/30/2016 
// Design Name: 
// Module Name:    test 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module test(
	input clk,
	input	sig
);

reg [31:0] ctr = 0;
reg [31:0] sctr = 0;
reg [31:0] wctr = 0;
always @( posedge sig ) begin
	wctr <= wctr + 1;
	wait( clk == 1 )
		ctr <= ctr + 1;
	sctr <= sctr + 1;
end


endmodule
