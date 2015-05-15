`timescale 1ns / 1ps

module mux4to1(
		input [4 * WIDTH - 1:0] in,
		input [1:0] select,
		output [WIDTH - 1:0] out
		);

	parameter WIDTH = 1;

	assign out =
			select == 2'b00 ? in[WIDTH - 1:0] :
			select == 2'b01 ? in[2 * WIDTH - 1: WIDTH] :
			select == 2'b10 ? in[3 * WIDTH - 1: 2 * WIDTH] :
			in[4 * WIDTH - 1: 3 * WIDTH];
endmodule
