`timescale 1ns / 1ps

module ALU(
		A,
		ALU_operation,
		B,
		overflow,
		res,
		zero
	);

	input [31:0] A;
	input [2:0] ALU_operation;
	input [31:0] B;
	output overflow;
	output [31:0] res;
	output zero;

	wire [31:0] B_Ctrl;
	wire N0;
	wire [32:0] S;
	wire [31:0] XLXN_8;
	wire [31:0] XLXN_12;
	wire [31:0] XLXN_13;
	wire [31:0] XLXN_17;
	wire [31:0] XLXN_18;
	wire [31:0] XLXN_19;
	wire [31:0] res_DUMMY;

	assign res[31:0] = res_DUMMY[31:0];
	adc_32 ALU_ADC (
			.A(A[31:0]),
			.B(XLXN_8[31:0]),
			.C0(ALU_operation[2]),
			.overflow(overflow),
			.S(S[32:0])
	);
	mux8to1_32 ALU_MUX (
			.sel(ALU_operation[2:0]),
			.x0(XLXN_12[31:0]),
			.x1(XLXN_13[31:0]),
			.x2(S[31:0]),
			.x3(XLXN_17[31:0]),
			.x4(XLXN_18[31:0]),
			.x5(XLXN_19[31:0]),
			.x6(S[31:0]),
			.x7({N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0,
			N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0, N0,
			N0, S[32]}),
			.o(res_DUMMY[31:0])
	);
	and_32 ALU_U1 (
			.A(A[31:0]),
			.B(B[31:0]),
			.res(XLXN_12[31:0])
	);
	or_32 ALU_U2 (
			.A(A[31:0]),
			.B(B[31:0]),
			.res(XLXN_13[31:0])
	);
	xor_32 ALU_U3 (
			.A(A[31:0]),
			.B(B[31:0]),
			.res(XLXN_17[31:0])
	);
	nor_32 ALU_U4 (
			.A(A[31:0]),
			.B(B[31:0]),
			.res(XLXN_18[31:0])
	);
	srl_32 ALU_U5 (
			.A(A[31:0]),
			.B(B[31:0]),
			.res(XLXN_19[31:0])
	);
	xor_32 ALU_U7 (
			.A(B_Ctrl[31:0]),
			.B(B[31:0]),
			.res(XLXN_8[31:0])
	);
	nor_bit_32 ALU_Zero (
			.A(res_DUMMY[31:0]),
			.o(zero)
	);
	SignalExt_32 Signal1_32 (
			.S(ALU_operation[2]),
			.So(B_Ctrl[31:0])
	);
	GND XLXI_22 (
			.G(N0)
	);
endmodule
