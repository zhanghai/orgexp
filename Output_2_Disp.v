`timescale 1ns / 1ps

module Output_2_Disp(
		input clk,
		input rst,
		input EN,
		input [2:0] Disp_sel,	// ALU&Clock, SW[7:5]
		input [31:0] point_in,
		input [31:0] blink_in,
		input [31:0] Disp0,
		input [31:0] Disp1,
		input [31:0] Disp2,
		input [31:0] Disp3,
		input [31:0] Disp4,
		input [31:0] Disp5,
		input [31:0] Disp6,
		input [31:0] Disp7,
		output [3:0] point_out,
		output [3:0] blink_out,
		output [31:0] Disp_num
		);

	mux8to1 #(32) mux_disp({Disp7, Disp6, Disp5, Disp4, Disp3, Disp2, Disp1, Disp0}, Disp_sel, Disp_num);
	mux8to1 #(4) mux_blink(blink_in, Disp_sel, blink_out);
	mux8to1 #(4) mux_point(point_in, Disp_sel, point_out);

endmodule
