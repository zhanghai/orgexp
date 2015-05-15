`timescale 1ns / 1ps

module SCPU_ctrl(
		input [5:0] OPcode, // OPcode
		input [5:0] Fun, // Function
		input MIO_ready, // CPU Wait
		output reg RegDst,
		output reg ALUSrc_B,
		output reg MemtoReg,
		output reg Jump,
		output reg Branch,
		output reg RegWrite,
		output reg mem_w,
		output reg [2:0] ALU_Control,
		output reg CPU_MIO
		);

	wire MemWrite, MemRead;
	wire [1:0] ALUop;
	`define CPU_ctrl_signals {RegDst, ALUSrc_B, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump, ALUop}
	always @(*) begin
		case (OPCode)
			6'b000000: CPU_ctrl_signals = {8'b10010000, 2'b10};	// ALU
			6'b100011: CPU_ctrl_signals = {8'b01111000, 2'b00};	// lw
			6'b101011: CPU_ctrl_signals = {8'bX1X00100, 2'b00};	// sw
			6'b000100: CPU_ctrl_signals = {8'bX0X00010, 2'b01};	// beq
		endcase
	end

	assign mem_w = MemWrite && (!MemRead);
endmodule
