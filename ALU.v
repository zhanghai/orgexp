`timescale 1ns / 1ps

module ALU(
		input [31:0] A,
		input [3:0] ALU_operation,
		input [31:0] B,
		output overflow,
		output [31:0] res,
		output zero
	);

	wire [31:0] B_Ctrl;
	wire [32:0] S;

	assign B_Ctrl = {32{ALU_operation[2]}};
	adc_32 ALU_ADC (
			.A(A),
			.B(B_Ctrl ^ B),
			.C0(ALU_operation[2]),
			.overflow(overflow),
			.S(S)
	);
	mux16to1 #(32) ALU_MUX (
			.in({
				{7{32'b0}},
				B << A[4:0],
				{31'b0, S[32]},
				S[31:0],
				B >> A[4:0],
				~(A | B),
				A ^ B,
				S[31:0],
				A | B,
				A & B
			}),
			.select(ALU_operation),
			.out(res)
	);
	assign zero = ~|res;
endmodule
