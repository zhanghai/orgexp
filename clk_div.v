`timescale 1ns / 1ps

module clk_div(
		input clk,
		input rst,
		input SW2,
		output reg [31:0] clkdiv,
		output Clk_CPU);

	always @(posedge clk) begin
		if (rst) begin
			clkdiv <= 0;
		end else begin
			clkdiv <= clkdiv + 1'b1;
		end
	end

	assign Clk_CPU = SW2 ? clkdiv[24] : clk;

endmodule
