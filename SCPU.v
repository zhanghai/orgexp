`timescale 1ns / 1ps

module SCPU(
		input clk,
		input [31:0] Data_in,
		input [31:0] inst_in,
		input INT,
		input MIO_ready,
		input reset,
		output [31:0] Addr_out,
		output CPU_MIO,
		output [31:0] Data_out,
		output mem_w,
		output [31:0] PC_out
	);

	wire ALUSrc_B;
	wire [2:0] ALU_Control;
	wire [1:0] Branch;
	wire [1:0] DatatoReg;
	wire MemOrCp0Data;
	wire Pc4ToCp0;
	wire Cp0ToPc;
	wire PcOrEpc;
	wire Cp0ReadEpc;
	wire Cp0WriteEpc;
	wire Cp0Write;
	wire [1:0] Cp0Interrupt;
	wire Jump;
	wire RegDst;
	wire RegWrite;
	wire zero;

	SCPU_ctrl_more Controller (
			.OPcode(inst_in[31:26]),
			.RegSrc(inst_in[25:21]),
			.Fun(inst_in[5:0]),
			.MIO_ready(MIO_ready),
			.zero(zero),
			.RegDst(RegDst),
			.ALUSrc_B(ALUSrc_B),
			.DatatoReg(DatatoReg[1:0]),
			.MemOrCp0Data(MemOrCp0Data),
			.Pc4ToCp0(Pc4ToCp0),
			.Cp0ToPc(Cp0ToPc),
			.PcOrEpc(PcOrEpc),
			.Cp0ReadEpc(Cp0ReadEpc),
			.Cp0WriteEpc(Cp0WriteEpc),
			.Cp0Write(Cp0Write),
			.Cp0Interrupt(Cp0Interrupt[1:0]),
			.ALU_Control(ALU_Control[2:0]),
			.Branch(Branch[1:0]),
			.CPU_MIO(CPU_MIO),
			.Jal(Jump),
			.mem_w(mem_w),
			.RegWrite(RegWrite));
	Data_path_more Data_path (
			.ALUSrc_B(ALUSrc_B),
			.ALU_Control(ALU_Control[2:0]),
			.Branch(Branch[1:0]),
			.clk(clk),
			.DatatoReg(DatatoReg[1:0]),
			.MemOrCp0Data(MemOrCp0Data),
			.Pc4ToCp0(Pc4ToCp0),
			.Cp0ToPc(Cp0ToPc),
			.PcOrEpc(PcOrEpc),
			.Cp0ReadEpc(Cp0ReadEpc),
			.Cp0WriteEpc(Cp0WriteEpc),
			.Cp0Write(Cp0Write),
			.Cp0Interrupt(Cp0Interrupt[1:0]),
			.Data_in(Data_in[31:0]),
			.inst_field(inst_in[25:0]),
			.Jal(Jump),
			.overflow(),
			.RegDst(RegDst),
			.RegWrite(RegWrite),
			.rst(reset),
			.zero(zero),
			.ALU_out(Addr_out[31:0]),
			.Data_out(Data_out[31:0]),
			.PC_out(PC_out[31:0]));
endmodule
