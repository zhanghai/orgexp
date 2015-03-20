`timescale 1ns / 1ps

module Ext_32(
		input [15:0] imm_16,
		output [31:0] Imm_32
		);

	assign Imm_32 = {{16{imm_16[15]}}, imm_16};

endmodule
