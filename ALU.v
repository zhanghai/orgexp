`timescale 1ns / 1ps

module ALU(
		input [31:0] A,
		input [2:0] ALU_operation,
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
	mux8to1_32 ALU_MUX (
			.sel(ALU_operation[2:0]),
			.x0(A & B),
			.x1(A | B),
			.x2(S[31:0]),
			.x3(A ^ B),
			.x4(~(A | B)),
			.x5(B >> A[4:0]),
			.x6(S[31:0]),
			.x7({31'b0, S[32]}),
			.o(res)
	);
	assign zero = ~|res;
endmodule
