`timescale 1ns / 1ps

module led_Dev_IO(
		input clk,	// io_clk，与 CPU 反向
		input rst,
		input GPIOf0000000_we,	// 来自 U4
		input [31:0] Peripheral_in,	// 来自 U4
		output [1:0] counter_set,	// 来自 U7
		output [7:0] led_out,	// 输出到 LED，回读到 U4
		output [21:0] GPIOf0	// 备用
	);
endmodule
