`timescale 1ns / 1ps

module adc_32(
		input [31:0] A,
		input [31:0] B,
		input C0,
		output [31:0] S,
		output OF
		);
	wire Cout;
	assign {Cout, S} = C0 ? A - B : A + B;
	assign OF = Cout ^ S[31];
endmodule
