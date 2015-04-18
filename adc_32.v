`timescale 1ns / 1ps

module adc_32(
		input [31:0] A,
		input [31:0] B,
		input C0,
		output [32:0] S,
		output overflow
		);
	assign S = {1'b0, A} + {C0, B} + C0;
	assign overflow = S[32];
endmodule
