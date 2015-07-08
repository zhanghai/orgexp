`timescale 1ns / 1ps

module Multi_CPU(
		input clk,
		input reset,
		input MIO_ready,	// be used
		output [31:0] PC_out,	// Test
		output [31:0] inst_out,	// TEST
		output mem_w,	// 
		output [31:0] Addr_out,	// 
		output [31:0] Data_out,	// 
		input [31:0] Data_in,	// 
		output CPU_MIO,	// Be used
		input INT,	// 
		output [4:0] state	// Test
	);

	// U11 ctrl
	wire MemRead;
	wire MemWrite;
	wire IorD;
	wire IRWrite;
	wire RegWrite;
	wire ALUSrcA;
	wire PCWrite;
	wire PCWriteCond;
	wire Branch;
	wire [1:0] RegDst;
	wire [1:0] MemtoReg;
	wire [1:0] ALUSrcB;
	wire [1:0] PCSource;
	wire [3:0] ALU_operation;

	// U12 M_datapath
	wire zero;
	wire overflow;

	ctrl U11(
			.clk(clk),
			.reset(reset),
			.zero(zero),
			.overflow(overflow),
			.MIO_ready(MIO_ready),
			.Inst_in(inst_out[31:0]),
			.MemRead(MemRead),
			.MemWrite(MemWrite),
			.CPU_MIO(CPU_MIO),
			.IorD(IorD),
			.IRWrite(IRWrite),
			.RegWrite(RegWrite),
			.ALUSrcA(ALUSrcA),
			.PCWrite(PCWrite),
			.PCWriteCond(PCWriteCond),
			.Branch(Branch),
			.RegDst(RegDst[1:0]),
			.MemtoReg(MemtoReg[1:0]),
			.ALUSrcB(ALUSrcB[1:0]),
			.PCSource(PCSource[1:0]),
			.ALU_operation(ALU_operation[3:0]),
			.state_out(state[4:0])
	);
	assign mem_w = MemWrite && (!MemRead);

	M_datapath U12(
			.clk(clk),
			.reset(reset),
			.MIO_ready(MIO_ready),
			.IorD(IorD),
			.IRWrite(IRWrite),
			.RegWrite(RegWrite),
			.ALUSrcA(ALUSrcA),
			.PCWrite(PCWrite),
			.PCWriteCond(PCWriteCond),
			.Branch(Branch),
			.RegDst(RegDst[1:0]),
			.MemtoReg(MemtoReg[1:0]),
			.ALUSrcB(ALUSrcB[1:0]),
			.PCSource(PCSource[1:0]),
			.ALU_operation(ALU_operation[3:0]),
			.Data_in(Data_in[31:0]),
			.zero(zero),
			.overflow(overflow),
			.PC_Current(PC_out[31:0]),
			.Inst(inst_out[31:0]),
			.data_out(Data_out[31:0]),
			.M_addr(Addr_out[31:0])
	);
endmodule
