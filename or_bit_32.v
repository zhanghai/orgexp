`timescale 1ns / 1ps

module or_bit_32(
		input [31:0] A,
		output o
		);
	assign o = |A;
endmodule
