`timescale 1ns / 1ps

module srl_32(
		input [31:0] A,
		input [31:0] B,
		output [31:0] res
		);
	// Shift amount in MIPS R type intruction.
	assign res = A >> B[10:6];
endmodule
