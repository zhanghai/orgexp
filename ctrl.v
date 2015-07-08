`timescale 1ns / 1ps

module ctrl(
		input clk,
		input reset,
		input [31:0] Inst_in,
		input zero,
		input overflow,
		input MIO_ready,
		output reg MemRead,
		output reg MemWrite,
		output reg [3:0] ALU_operation,
		output [4:0] state_out,
		output reg CPU_MIO,
		output reg IorD,
		output reg IRWrite,
		output reg [1:0] RegDst,
		output reg RegWrite,
		output reg [1:0] MemtoReg,
		output reg ALUSrcA,
		output reg [1:0] ALUSrcB,
		output reg [1:0] PCSource,
		output reg PCWrite,
		output reg PCWriteCond,
		output reg Branch
	);

	localparam
			IF = 4'b0000,
			ID = 4'b0001,
			Mem_Ex = 4'b0010,
			Mem_RD = 4'b0011,
			LW_WB = 4'b0100,
			Mem_WD = 4'b0101,
			R_Exe = 4'b0110,
			R_WB = 4'b0111,
			Beq_Exe = 4'b1000,
			J = 4'b1001,
			I_Exe = 4'b1010,
			I_WB = 4'b1011,
			Lui_WB = 4'b1100,
			Bne_Exe = 4'b1101,
			Jr = 4'b1110,
			Jal = 4'b1111;
	localparam
			ALU_AND = 4'b0000,
			ALU_OR = 4'b0001,
			ALU_ADD = 4'b0010,
			ALU_XOR = 4'b0011,
			ALU_NOR = 4'b0100,
			ALU_SRLV = 4'b0101,
			ALU_SUB = 4'b0110,
			ALU_SLTU = 4'b0111,
			ALU_SLLV = 4'b1000,
			ALU_SLT = 4'b1001;

	`define CPU_ctrl_signals {PCWrite, PCWriteCond, IorD, MemRead, MemWrite, IRWrite, MemtoReg[1:0], PCSource[1:0], ALUSrcB[1:0], ALUSrcA, RegWrite, RegDst[1:0], CPU_MIO}

	reg [3:0] state;
	assign state_out = {1'b0, state};

	task GoToIF;
		begin
			`CPU_ctrl_signals <= 17'h12821;
			ALU_operation <= ALU_ADD;
			state <= IF;
		end
	endtask

	initial begin
		GoToIF;
	end

	always @(posedge clk or posedge reset) begin
		if (reset) begin
			GoToIF;
		end else begin
			ALU_operation <= ALU_ADD;
			case (state)
				IF: begin
					if (MIO_ready) begin
						`CPU_ctrl_signals <= 17'h00060;
						ALU_operation <= ALU_ADD;
						state <= ID;
					end else begin
						GoToIF;
					end
				end
				ID: begin
					case (Inst_in[31:26])
						6'b000000: begin	// R type
							`CPU_ctrl_signals <= 17'h00010;
							state <= R_Exe;
							case (Inst_in[5:0])
								6'b100000: begin ALU_operation <= ALU_ADD; end
								6'b100010: begin ALU_operation <= ALU_SUB; end
								6'b100100: begin ALU_operation <= ALU_AND; end
								6'b100101: begin ALU_operation <= ALU_OR; end
								6'b100110: begin ALU_operation <= ALU_XOR; end
								6'b100111: begin ALU_operation <= ALU_NOR; end
								6'b101010: begin ALU_operation <= ALU_SLT; end
								6'b101011: begin ALU_operation <= ALU_SLTU; end
								6'b000110: begin ALU_operation <= ALU_SRLV; end
								6'b000100: begin ALU_operation <= ALU_SLLV; end
								6'b001000: begin	// JR
									`CPU_ctrl_signals <= 17'h10010;
									state <= Jr;
								end
								default: begin	// Error
									GoToIF;
								end
							endcase
						end
						6'b001000: begin	// ADDI
							`CPU_ctrl_signals <= 17'h00050;
							ALU_operation <= ALU_ADD;
							state <= I_Exe;
						end
						6'b001100: begin	// ANDI
							`CPU_ctrl_signals <= 17'h00050;
							ALU_operation <= ALU_AND;
							state <= I_Exe;
						end
						6'b001101: begin	// ORI
							`CPU_ctrl_signals <= 17'h00050;
							ALU_operation <= ALU_OR;
							state <= I_Exe;
						end
						6'b001110: begin	// XORI
							`CPU_ctrl_signals <= 17'h00050;
							ALU_operation <= ALU_XOR;
							state <= I_Exe;
						end
						6'b001010: begin	// SLTI
							`CPU_ctrl_signals <= 17'h00050;
							ALU_operation <= ALU_SLT;
							state <= I_Exe;
						end
						6'b001011: begin	// SLTIU
							`CPU_ctrl_signals <= 17'h00050;
							ALU_operation <= ALU_SLTU;
							state <= I_Exe;
						end
						6'b001111: begin	// LUI
							`CPU_ctrl_signals <= 17'h00468;
							state <= Lui_WB;
						end
						6'b100011, 6'b101011: begin	// LW, SW
							`CPU_ctrl_signals <= 17'h00050;
							ALU_operation <= ALU_ADD;
							state <= Mem_Ex;
						end
						6'b000100: begin	// BEQ
							Branch <= 1;
							`CPU_ctrl_signals <= 17'h08090;
							ALU_operation <= ALU_SUB;
							state <= Beq_Exe;
						end
						6'b000101: begin	// BNE
							Branch <= 0;
							`CPU_ctrl_signals <= 17'h08090;
							ALU_operation <= ALU_SUB;
							state <= Bne_Exe;
						end
						6'b000010: begin	// J
							`CPU_ctrl_signals <= 17'h10160;
							state <= J;
						end
						6'b000011: begin	// JAL
							`CPU_ctrl_signals <= 17'h1076C;
							state <= Jal;
						end
						default: begin	// Error
							GoToIF;
						end
					endcase
				end
				Mem_Ex: begin
					case (Inst_in[31:26])
						6'b100011: begin	// LW
							`CPU_ctrl_signals <= 17'h06051;
							state <= Mem_RD;
						end
						6'b101011: begin	// SW
							`CPU_ctrl_signals <= 17'h05051;
							state <= Mem_WD;
						end
						default: begin	// Error
							GoToIF;
						end
					endcase
				end
				Mem_RD: begin
					if (MIO_ready) begin
						`CPU_ctrl_signals <= 17'h00208;
						state <= LW_WB;
					end else begin
						`CPU_ctrl_signals <= 17'h06051;
						state <= Mem_RD;
					end
				end
				LW_WB: begin
					GoToIF;
				end
				Mem_WD: begin
					if (MIO_ready) begin
						GoToIF;
					end else begin
						`CPU_ctrl_signals <= 17'h05051;
						state <= Mem_WD;
					end
				end
				R_Exe: begin
					`CPU_ctrl_signals <= 17'h0001A;
					state <= R_WB;
				end
				R_WB: begin
					GoToIF;
				end
				Beq_Exe: begin
					GoToIF;
				end
				J: begin
					GoToIF;
				end
				I_Exe: begin
					`CPU_ctrl_signals <= 17'h00058;
					state <= I_WB;
				end
				I_WB: begin
					GoToIF;
				end
				Lui_WB: begin
					GoToIF;
				end
				Bne_Exe: begin
					GoToIF;
				end
				Jr: begin
					GoToIF;
				end
				Jal: begin
					GoToIF;
				end
				default begin	// Error
					GoToIF;
				end
			endcase
		end
	end
endmodule
