`timescale 1ns / 1ps

module M_datapath(
		input clk,
		input reset,
		input MIO_ready,
		input IorD,
		input IRWrite,
		input [1:0] RegDst,
		input RegWrite,
		input [1:0] MemtoReg,
		input ALUSrcA,
		input [1:0] ALUSrcB,
		input [1:0] PCSource,
		input PCWrite,
		input PCWriteCond,
		input Branch,
		input [2:0] ALU_operation,
		output [31:0] PC_Current,
		input [31:0] Data_in,
		output [31:0] Inst,
		output [31:0] data_out,
		output [31:0] M_addr,
		output zero,
		output overflow
	);

	// U_MDR REG32
	wire [31:0] MDR;

	// U2 Regs
	wire [4:0] Wt_addr;
	wire [31:0] Wt_data;
	wire [31:0] rdata_A;

	// U_Ext Ext_32
	wire [31:0] Imm_32;

	// U1 ALU
	wire [31:0] A;
	wire [31:0] B;
	wire [31:0] res;

	// U_ALUOut REG32
	wire [31:0] ALUOut;

	// U_PC REG32
	wire [31:0] PC_Next;

	REG32 U_IR (
		.clk(clk),
		.rst(1'b0),
		.CE(IRWrite),
		.D(Data_in[31:0]),
		.Q(Inst[31:0])
	);
	REG32 U_MDR (
		.clk(clk),
		.rst(1'b0),
		.CE(1'b1),
		.D(Data_in[31:0]),
		.Q(MDR[31:0])
	);
	mux4to1 #(5) U_mux_Wt_addr (
		.in({
			5'b0,	// 11: unused
			5'd31,	// 10: $ra
			Inst[15:11],	// 01
			Inst[20:16]	// 00
		}),
		.select(RegDst[1:0]),
		.out(Wt_addr[4:0])
	);
	mux4to1 #(32) U_mux_Wt_data (
		.in({
			PC_Current[31:0],	// 11: JR
			{Inst[15:0], 16'b0},	// 10: LUI
			MDR[31:0],	// 01: MDR
			ALUOut[31:0]	// 00: ALU OP
		}),
		.select(MemtoReg[1:0]),
		.out(Wt_data[31:0])
	);
	Regs U2 (
		.clk(clk),
		.rst(reset),
		.R_addr_A(Inst[25:21]),
		.R_addr_B(Inst[20:16]),
		.Wt_addr(Wt_addr[4:0]),
		.Wt_data(Wt_data[31:0]),
		.L_S(RegWrite),
		.rdata_A(rdata_A[31:0]),
		.rdata_B(data_out[31:0])
	);
	Ext_32 U_Ext (
		.Imm_16(Inst[15:0]),
		.Imm_32(Imm_32[31:0])
	);
	assign A = ALUSrcA ? rdata_A : PC_Current;
	mux4to1 #(32) U_mux_B (
		.in({
			{Imm_32[29:0], 2'b00},	// 11: Offset
			Imm_32[31:0],	// 10
			32'd4,	// 01: 4
			data_out[31:0]	// 00
		}),
		.select(ALUSrcB[1:0]),
		.out(B[31:0])
	);
	ALU U1 (
		.A(A[31:0]),
		.B(B[31:0]),
		.ALU_operation(ALU_operation[2:0]),
		.zero(zero),
		.res(res[31:0]),
		.overflow(overflow)
	);
	REG32 U_ALUOut (
		.clk(clk),
		.rst(1'b0),
		.CE(1'b1),
		.D(res[31:0]),
		.Q(ALUOut[31:0])
	);
	mux4to1 #(32) U_mux_PC_next (
		.in({
			ALUOut[31:0],	// 11: JR
			{PC_Current[31:28], Inst[25:0], 2'b00},	// 10: Jump
			ALUOut[31:0],	// 01: Branch
			res[31:0]	// 00: PC+4
		}),
		.select(PCSource[1:0]),
		.out(PC_Next[31:0])
	);
	REG32 U_PC (
		.clk(clk),
		.rst(reset),
		.CE(MIO_ready && (PCWrite || (PCWriteCond && (Branch == zero)))),
		.D(PC_Next[31:0]),
		.Q(PC_Current[31:0])
	);
	assign M_addr = IorD ? ALUOut : PC_Current;
endmodule
