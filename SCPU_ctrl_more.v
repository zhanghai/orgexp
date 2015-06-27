`timescale 1ns / 1ps

module SCPU_ctrl_more(
		input [5:0] OPcode, // OPcode
		input [4:0] RegSrc,
		input [5:0] Fun, // Function
		input MIO_ready, // CPU Wait
		input zero,
		output reg RegDst,
		output reg ALUSrc_B,
		output reg [1:0] DatatoReg,
		output reg MemOrCp0Data,
		output reg Pc4ToCp0,
		output reg Cp0ToPc,
		output reg PcOrEpc,
		output reg Cp0ReadEpc,
		output reg Cp0WriteEpc,
		output reg Cp0Write,
		output reg [1:0] Cp0Interrupt,
		output reg Jal,
		output reg [1:0] Branch,
		output reg RegWrite,
		output reg [2:0] ALU_Control,
		output reg mem_w,
		output reg CPU_MIO
		);

	localparam INT_NONE = 2'b00;
	localparam INT_EXTDEV = 2'b01;
	localparam INT_ILLINST = 2'b10;
	localparam INT_OVERFLOW = 2'b11;

	localparam DTR_ALUOUT = 2'b00;
	localparam DTR_DATAIN = 2'b01;
	localparam DTR_LUI = 2'b10;
	localparam DTR_PC4 = 2'b11;

	localparam BR_PC4 = 2'b00;
	localparam BR_OFFSET = 2'b01;
	localparam BR_JUMP = 2'b10;
	localparam BR_REG = 2'b11;

	localparam ALU_ADD = 3'b010;
	localparam ALU_SUB = 3'b110;
	localparam ALU_AND = 3'b000;
	localparam ALU_OR = 3'b001;
	localparam ALU_SLT = 3'b111;
	localparam ALU_NOR = 3'b100;
	localparam ALU_SRL = 3'b101;
	localparam ALU_XOR = 3'b011;

	always @(*) begin
		RegDst = 1;
		ALUSrc_B = 0;
		DatatoReg = DTR_ALUOUT;
		MemOrCp0Data = 0;
		Pc4ToCp0 = 0;
		Cp0ToPc = 0;
		PcOrEpc = 1;
		Cp0ReadEpc = 0;
		Cp0WriteEpc = 0;
		Cp0Write = 0;
		Cp0Interrupt = INT_NONE;
		RegWrite = 0;
		Branch = BR_PC4;
		Jal = 0;
		ALU_Control = ALU_ADD;
		mem_w = 0;
		CPU_MIO = 0;
		case (OPcode)
			6'b000000: begin	// R type
				if (Fun == 6'b001000) begin Branch = BR_REG; end	// jr
				else if (Fun == 6'b001001) begin RegDst = 0; DatatoReg = DTR_PC4; RegWrite = 1; Branch = BR_REG; Jal = 1; end	// jalr
				else if (Fun == 6'b011000) begin
					if (RegSrc == 5'b10000) begin	// eret
						Cp0ToPc = 1;
						Cp0ReadEpc = 1;
					end else if (RegSrc == 5'b00000) begin	// syscall
						Pc4ToCp0 = 1;
						Cp0WriteEpc = 1;
					end else begin	// Illegal
						Cp0Interrupt = INT_ILLINST;
						Cp0ToPc = 1;
						PcOrEpc = 1;
					end
				end
				else begin	// ALU
					RegDst = 1; RegWrite = 1;
					case (Fun)
						6'b100000: ALU_Control = ALU_ADD;	// add
						6'b100010: ALU_Control = ALU_SUB;	// sub
						6'b100100: ALU_Control = ALU_AND;	// and
						6'b100101: ALU_Control = ALU_OR;	// or
						6'b101010: ALU_Control = ALU_SLT;	// slt
						6'b100111: ALU_Control = ALU_NOR;	// nor
						6'b000010: ALU_Control = ALU_SRL;	// srlv
						6'b010110: ALU_Control = ALU_XOR;	// xor
						default: begin
							RegWrite = 0;
							Cp0Interrupt = INT_ILLINST;
							Cp0ToPc = 1;
							PcOrEpc = 1;
						end
					endcase
				end
			end
			6'b001000: begin RegDst = 0; ALUSrc_B = 1; RegWrite = 1; ALU_Control = ALU_ADD; end	// addi
			6'b001100: begin RegDst = 0; ALUSrc_B = 1; RegWrite = 1; ALU_Control = ALU_AND; end	// andi
			6'b001101: begin RegDst = 0; ALUSrc_B = 1; RegWrite = 1; ALU_Control = ALU_OR; end	// ori
			6'b001110: begin RegDst = 0; ALUSrc_B = 1; RegWrite = 1; ALU_Control = ALU_XOR; end	// xori
			6'b001010: begin RegDst = 0; ALUSrc_B = 1; RegWrite = 1; ALU_Control = ALU_SLT; end	// slti
			6'b001111: begin RegDst = 0; DatatoReg = DTR_LUI; RegWrite = 1; end	// lui
			6'b100011: begin RegDst = 0; ALUSrc_B = 1; DatatoReg = DTR_DATAIN; RegWrite = 1; ALU_Control = ALU_ADD; end	// lw
			6'b101011: begin ALUSrc_B = 1; ALU_Control = ALU_ADD; mem_w = 1; end	// sw
			6'b000100: begin ALU_Control = ALU_SUB; Branch = zero ? BR_OFFSET : BR_PC4; end	// beq
			6'b000100: begin ALU_Control = ALU_SUB; Branch = zero ? BR_PC4 : BR_OFFSET; end	// bne
			6'b000010: begin Branch = BR_JUMP; end	// j
			6'b000011: begin RegDst = 0; DatatoReg = DTR_PC4; RegWrite = 1; Branch = BR_JUMP; Jal = 1; end	// jal
			6'h24: begin ALU_Control = ALU_SLT; RegDst = 0; ALUSrc_B = 1; RegWrite = 1; end	// slti, here 6'b100100 according to Sqs, but it should be 6'b001010 according to MIPS 32.
			6'b010000: begin	// cop0
				if (RegSrc == 5'b00000) begin	// mfc0
					RegDst = 0;
					DatatoReg = DTR_DATAIN;
					MemOrCp0Data = 1;
				end else if (RegSrc == 5'b00100) begin	// mtc0
					Cp0Write = 1;
				end else begin
					Cp0Interrupt = INT_ILLINST;
					Cp0ToPc = 1;
					PcOrEpc = 1;
				end
			end
			default: begin
				Cp0Interrupt = INT_ILLINST;
				Cp0ToPc = 1;
				PcOrEpc = 1;
			end
		endcase
	end
endmodule
