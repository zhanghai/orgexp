`timescale 1ns / 1ps

module mux4to1_32(
		input [31:0] a,
		input [31:0] b,
		input sel,
		output [31:0] o
		);
	mux4to1 #(32) mux(a, b, sel, o);
endmodule
