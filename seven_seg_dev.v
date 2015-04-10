`timescale 1ns / 1ps

module seven_seg_dev(
		input [31:0] disp_num,
		input [1:0] SW,
		input flash_clk,
		input [1:0] Scanning,
		input [3:0] pointing,
		input [3:0] blinking,
		output [3:0] AN,
		output [7:0] SEGMENT
		);
endmodule
