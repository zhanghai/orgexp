`timescale 1ns / 1ps

module Muliti_CPU(
		input clk,
		input reset,
		input MIO_ready,	// be used
		output [31:0] PC_out,	// Test
		output [31:0] inst_out,	// TEST
		output mem_w,	// 存储器读写控制
		output [31:0] Addr_out,	// 数据空间访问地址
		output [31:0] Data_out,	// 数据输出总线
		input [31:0] Data_in,	// 数据输入总线
		output CPU_MIO,	// Be used
		input INT,	// 中断
		output [4:0] state	// Test
	);
endmodule
