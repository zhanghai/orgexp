`timescale 1ns / 1ps

module REG32(
		input clk,
		input rst,
		input CE,
		input [31:0] D,
		output reg [31:0] Q
	);

	initial begin
		Q = 32'b0;
	end

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			Q <= 0;
		end else if (CE) begin
			Q <= D;
		end
	end
endmodule
