`timescale 1ns / 1ps

module LED_DEV(
		input clk,
		input rst,
		input EN,
		input [31:0] Data_in,
		output [7:0] LED,
		output [31:8] Other_out
		);

	assign LED[7:0] =  Data_in[7:0];			//LED[7]=SW[1], LED[0]=Cout
	assign Other_out = Data_in[31:8];

endmodule
