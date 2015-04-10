`timescale 1ns / 1ps

module Data_path(
		input clk, // ¼Ä´æÆ÷Ê±ÖÓ
		input rst, // ¼Ä´æÆ÷¸´Î»
		input [25:0] inst_field, // Ö¸ÁîÊı¾İÓò
		input RegDst,
		input ALUSrc_B,
		input MemtoReg,
		input Jump,
		input Branch,
		input RegWrite,
		input [31:0] Data_in,
		input [2:0] ALU_Control,
		output [31:0] ALU_out,
		output [31:0] Data_out,
		output [31:0] PC_out
		);
endmodule
