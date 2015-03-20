`timescale 1ns / 1ps

module ALU_LCDF(
		input [31:0] Ai,
		input [31:0] Bi,
		input [2:0] ALU_Ctr,
		input C,
		output [31:0] ALU_out,
		output Cout
		);

	wire [31:0] alu_and;
	and_32 alu_and_32(Ai, Bi, alu_and);

	wire [31:0] alu_or;
	or_32 alu_or_32(Ai, Bi, alu_or);

	wire [31:0] alu_adc;
	adc_32 alu_adc_32(Ai, Bi ^ {32{C}}, C, Cout, alu_adc);

	wire [31:0] alu_xor;
	xor_32 alu_xor_32(Ai, Bi, alu_xor);

	wire [31:0] alu_nor;
	nor_32 alu_nor_32(Ai, Bi, alu_nor);

	wire [31:0] alu_srl;
	srl_32 alu_srl_32(Ai, Bi, alu_srl);

	wire [31:0] alu_sub = Ai - Bi;

	wire [31:0] alu_slt = Ai < Bi ? 1 : 0;

	mux8to1 #(32) mux_alu({alu_slt, alu_sub, alu_srl, alu_nor, alu_xor, alu_adc, alu_or, alu_and}, ALU_Ctr, ALU_out);

endmodule
