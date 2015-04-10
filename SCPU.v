`timescale 1ns / 1ps

module SCPU(
		input clk,	//
		input reset,
		input MIO_ready,
		input [31:0] inst_in,
		input [31:0] Data_in,
		output mem_w,
		output [31:0] PC_out,
		output [31:0] Addr_out,
		output[31:0]Data_out,
		output CPU_MIO,
		input INT
		);

endmodule
