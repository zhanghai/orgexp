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

	reg [1:0] ALUop;
	always @(*) begin
		RegDst = 1;
		ALUSrc_B = 0;
		MemtoReg = 0;
		RegWrite = 0;
		Branch = 0;
		Jump = 0;
		mem_w = 0;
		CPU_MIO = 0;
		ALUop = 2'b10;
		case (OPcode)
			6'b000000: begin ALUop = 2'b10; RegDst = 1; RegWrite = 1; end	// ALU
			6'b100011: begin ALUop = 2'b00; RegDst = 0; ALUSrc_B = 1; MemtoReg = 1; RegWrite = 1; end	// lw
			6'b101011: begin ALUop = 2'b00; mem_w = 1; ALUSrc_B = 1; end	// sw
			6'b000100: begin ALUop = 2'b01; Branch = 1; end	// beq
			6'b000010: begin Jump = 1; end	// jump
			6'h24: begin ALUop=2'b11; RegDst = 0; ALUSrc_B = 1; RegWrite = 1; end	// slti, here 6'b100100 according to Sqs, but it should be 6'b001010 according to MIPS 32.
			default: begin ALUop=2'b10; end
		endcase
	end

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
