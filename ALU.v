`timescale 1ns / 1ps

module ALU(
		input [31:0] A,
		input [3:0] ALU_operation,
		input [31:0] B,
		output overflow,
		output [31:0] res,
		output zero
	);
	mux16to1 #(32) ALU_MUX (
			.in({
				{6{32'b0}},
				{31'b0, $signed(A) < $signed(B)},
				B << A[4:0],
				{31'b0, A < B},
				$signed(A) - $signed(B),
				B >> A[4:0],
				~(A | B),
				A ^ B,
				$signed(A) + $signed(B),
				A | B,
				A & B
			}),
			.select(ALU_operation),
			.out(res)
	);
	assign zero = ~|res;
	// Not implemented
	assign overflow = 0;
endmodule
