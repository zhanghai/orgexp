`timescale 1ns / 1ps

module Counter_x(input clk,	// io_clk
		input rst,
		input clk0,	// clk_div[7]，来自 U8
		input clk1,	// clk_div[10]，来自 U8
		input clk2,	// clk_div[10]，来自 U8
		input counter_we,	// 计数器写控制，来自 U4
		input [31:0] counter_val,	// 计数器输入数据，来自 U4
		input [1:0] counter_ch,	// 计数器通道控制，来自 U7
		output counter0_OUT,	// 输出到 U4
		output counter1_OUT,	// 输出到 U4
		output counter2_OUT,	// 输出到 U4
		output [31:0] counter_out	// 输出到 U4
	);
endmodule
