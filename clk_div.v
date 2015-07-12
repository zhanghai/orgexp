`timescale 1ns / 1ps

module clk_div(
		input clk,
		input rst,
		output reg [31:0] clkdiv
	);

	always @(posedge clk or posedge rst) begin
		if (rst) begin
			clkdiv <= 0;
		end else begin
			clkdiv <= clkdiv + 1'b1;
		end
	end
endmodule
