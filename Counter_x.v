`timescale 1ns / 1ps

module Counter_x(
		input clk,
		input rst,
		input clk0,
		input clk1,
		input clk2,
		input counter_we,
		input [31:0] counter_val,
		input [1:0] counter_ch,
		output counter0_OUT,
		output counter1_OUT,
		output counter2_OUT,
		output [31:0] counter_out
		);

endmodule
