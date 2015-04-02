`timescale 1ns / 1ps

module seven_seg_Dev_IO(
		input clk,
		input rst,
		input GPIOe0000000_we,
		input [2:0] Test,	// SW[7:5]
		input [31:0] point_in,
		input [31:0] blink_in,
		input [31:0] disp_cpudata,
		input [31:0] Test_data1,
		input [31:0] Test_data2,
		input [31:0] Test_data3,
		input [31:0] Test_data4,
		input [31:0] Test_data5,
		input [31:0] Test_data6,
		input [31:0] Test_data7,
		output [3:0] point_out,
		output [3:0] blink_out,
		output [31:0] Disp_num
		);

	mux8to1_seq #(32) mux_disp(clk, rst, 32'hAA5555AA, {Test_data7, Test_data6, Test_data5, Test_data4, Test_data3, Test_data2, Test_data1, GPIOe0000000_we ? disp_cpudata : Disp_num}, Test, Disp_num);
	mux8to1_seq #(4) mux_blink(clk, rst, 4'b0000, blink_in, Test, blink_out);
	mux8to1_seq #(4) mux_point(clk, rst, 4'b1111, point_in, Test, point_out);
endmodule
