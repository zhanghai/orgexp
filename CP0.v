`timescale 1ns / 1ps

module CP0(
	input clk,
	input rst,
	input [4:0] RegReadAddr,
	input RegWrite,
	input [4:0] RegWriteAddr,
	input [31:0] RegWriteData,
	input [1:0] Interrupt,
	output reg [31:0] RegReadData,
	output reg [31:0] InterruptPc
	);

	localparam INT_NONE = 2'b00;
	localparam INT_EXTDEV = 2'b01;
	localparam INT_ILLINST = 2'b10;
	localparam INT_OVERFLOW = 2'b11;

	reg [31:0] status;
	reg [31:0] cause;
	reg [31:0] epc;

	always @(*) begin
		RegReadData = 0;
		case (RegReadAddr)
			4'd12: RegReadData = status;
			4'd13: RegReadData = cause;
			4'd14: RegReadData = epc;
		endcase
	end

	always @(*) begin
		InterruptPc = 0;
		case (Interrupt)
			INT_EXTDEV: InterruptPc = 32'h00000018;
			INT_ILLINST: InterruptPc = 32'h00000004;
			INT_OVERFLOW: InterruptPc = 32'h00000010;
		endcase
	end

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			status <= 0;
			cause <= 0;
			epc <= 0;
		end else begin
			case (Interrupt)
				INT_NONE: begin
					if (RegWrite) begin
						case (RegWriteAddr)
							4'd12: status <= RegWriteData;
							4'd13: cause <= RegWriteData;
							4'd14: epc <= RegWriteData;
						endcase
					end
				end
				INT_EXTDEV: begin
					status[1] <= 1'b1;
					cause[6:2] <= 5'd0;
				end
				INT_ILLINST: begin
					status[1] <= 1'b1;
					cause[6:2] <= 5'd10;
				end
				INT_OVERFLOW: begin
					status[1] <= 1'b1;
					cause[6:2] <= 5'd12;
				end
			endcase
		end
	end
endmodule
