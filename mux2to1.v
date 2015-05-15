`timescale 1ns / 1ps

module mux2to1(
		input [2 * WIDTH - 1:0] in,
		input select,
		output [WIDTH - 1:0] out
		);

	parameter WIDTH = 1;

	assign out = select ? in[WIDTH - 1:0] : in[2 * WIDTH - 1: WIDTH];
endmodule
