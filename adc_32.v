`timescale 1ns / 1ps

module adc_32(
		input [31:0] A,
		input [31:0] B,
		input C,
		output Cout,
		output [31:0] S
		);

	assign {Cout, S} = C ? A - B : A + B;

endmodule
