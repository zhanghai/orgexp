`timescale 1ns / 1ps

module led_Dev_IO(
		input clk,
		input rst,
		input GPIOf0000000_we,
		input [31:0] Peripheral_in,
		output [1:0] counter_set,
		output [7:0] led_out,
		output [21:0] GPIOf0
		);
endmodule
