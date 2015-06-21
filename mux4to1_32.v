`timescale 1ns / 1ps

module mux4to1_32(
		input [31:0] x0,
		input [31:0] x1,
		input [31:0] x2,
		input [31:0] x3,
		input [1:0] sel,
		output [31:0] o
		);
	mux4to1 #(32) mux({x3, x2, x1, x0}, sel, o);
endmodule
