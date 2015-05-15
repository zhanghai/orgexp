`timescale 1ns / 1ps

module mux8to1_seq(
		input clock,
		input reset,
		input [WIDTH - 1:0] in_reset,
		input [8 * WIDTH - 1:0] in,
		input [2:0] select,
		output reg [WIDTH - 1:0] out
		);

	parameter WIDTH = 1;

	always @(posedge clock or posedge reset) begin
		if (reset) begin
			out <= in_reset;
		end else begin
			case (select)
				3'b000: out <= in[WIDTH - 1:0];
				3'b001: out <= in[2 * WIDTH - 1:WIDTH];
				3'b010: out <= in[3 * WIDTH - 1:2 * WIDTH];
				3'b011: out <= in[4 * WIDTH - 1:3 * WIDTH];
				3'b100: out <= in[5 * WIDTH - 1:4 * WIDTH];
				3'b101: out <= in[6 * WIDTH - 1:5 * WIDTH];
				3'b110: out <= in[7 * WIDTH - 1:6 * WIDTH];
				3'b111: out <= in[8 * WIDTH - 1:7 * WIDTH];
			endcase
		end
	end
endmodule
