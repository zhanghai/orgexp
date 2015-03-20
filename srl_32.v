`timescale 1ns / 1ps

module srl_32(
		input [31:0] A,
		input [31:0] B,
		output [31:0] S
		);

	assign S = A >> B[10:6];

endmodule
