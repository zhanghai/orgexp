`timescale 1ns / 1ps

module adc_32(
		input [31:0] A,
		input [31:0] B,
		input C0,
		output [32:0] S,
		output overflow
		);
	assign S = C0 ? A - B : A + B;
	assign overflow = C0 ?
			(A[31] != B[31]) && (S[31] == B[31]) :
			(A[31] == B[31]) && (S[31] != B[31]);
endmodule
