`timescale 1ns / 1ps

module or_32(
		input [31:0] A,
		input [31:0] B,
		output [31:0] S
		);

	assign S = A | B;

endmodule
