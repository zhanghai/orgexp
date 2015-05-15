`timescale 1ns / 1ps

module mux2to1_sqs(
		input [WIDTH - 1:0] a,
		input [WIDTH - 1:0] b,
		input sel,
		output [WIDTH - 1:0] o
		);
	parameter WIDTH = 1;
	assign o = sel ? a : b;
endmodule
