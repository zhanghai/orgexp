`timescale 1ns / 1ps

module SignalExt_32(
		input S,
		output [31:0] So
		);

	assign So = {32{S}};

endmodule
