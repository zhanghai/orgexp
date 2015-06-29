`timescale 1ns / 1ps

module mux8to1_32(
		input [2:0] sel,
		input [31:0] x0,
		input [31:0] x1,
		input [31:0] x2,
		input [31:0] x3,
		input [31:0] x4,
		input [31:0] x5,
		input [31:0] x6,
		input [31:0] x7,
		output [31:0] o
		);
	mux8to1 #(32) mux({x7, x6, x5, x4, x3, x2, x1, x0}, sel, o);
endmodule
