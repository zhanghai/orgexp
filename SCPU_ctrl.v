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
		output mem_w,
		output reg [2:0] ALU_Control,
		output reg CPU_MIO
		);

	reg MemWrite, MemRead;
	reg [1:0] ALUop;
	`define CPU_ctrl_signals {RegDst, ALUSrc_B, MemtoReg, RegWrite, MemRead, MemWrite, Branch, Jump, ALUop}
	always @(*) begin
		case (OPcode)
			6'b000000: `CPU_ctrl_signals = {8'b10010000, 2'b10};	// ALU
			6'b100011: `CPU_ctrl_signals = {8'b01111000, 2'b00};	// lw
			6'b101011: `CPU_ctrl_signals = {8'bX1X00100, 2'b00};	// sw
			6'b000100: `CPU_ctrl_signals = {8'bX0X00010, 2'b01};	// beq
			6'b000010: `CPU_ctrl_signals = {8'bXXX00001, 2'bXX};	// jump
			6'h24: `CPU_ctrl_signals = {8'b01010000, 2'b11};	// slti, here 6'b100100 according to Sqs, but it should be 6'b001010 according to MIPS 32.
			default: `CPU_ctrl_signals = {8'bXXX00000, 2'bXX};
		endcase
	end

	assign mem_w = MemWrite && (!MemRead);

	always @(*) begin
		case(ALUop)
			2'b00: ALU_Control = 3'b010;	// add
			2'b01: ALU_Control = 3'b110;	// sub
			2'b10: begin
				case(Fun)
					6'b100000: ALU_Control = 3'b010;	// add
					6'b100010: ALU_Control = 3'b110;	// sub
					6'b100100: ALU_Control = 3'b000;	// and
					6'b100101: ALU_Control = 3'b001;	// or
					6'b101010: ALU_Control = 3'b111;	// slt
					6'b100111: ALU_Control = 3'b100;	// nor
					6'b000010: ALU_Control = 3'b101;	// srl
					6'b010110: ALU_Control = 3'b011;	// xor
					default: ALU_Control = 3'bXXX;
				endcase
			end
			2'b11: ALU_Control = 3'b111;	// slti
		endcase
	end
endmodule
