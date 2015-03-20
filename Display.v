`timescale 1ns / 1ps

module Display(
		input [31:0] disp_num,
		input [1:0] SW,
		input flash_clk,
		input [1:0] Scanning,
		input [3:0] pointing,
		input [3:0] blinking,
		output [3:0] AN,
		output [7:0] SEGMENT
		);

	wire dp;	// Dot
	wire [3:0] digit, anode;
	wire [7:0] temp_seg;	// Segment display for ROM
	reg [6:0] digit_seg;	// Segment display for digit
	wire [15:0] disp_current;	// Current number to display

	assign SEGMENT[7:0] = SW[0] ? {dp, digit_seg[6:0]} : temp_seg;

	mux4to1 #(1) mux_dp(pointing, Scanning, dp);
	assign disp_current = SW[1] ? disp_num[31:16] : disp_num[15:0];
	mux4to1 #(4) mux_digit(disp_current, Scanning, digit);
	always @(*) begin
		case ({1'b0, digit})
			5'b00000 : digit_seg = 7'b1000000;	// 0
			5'b00001 : digit_seg = 7'b1111001;	// 1
			5'b00010 : digit_seg = 7'b0100100;	// 2
			5'b00011 : digit_seg = 7'b0110000;	// 3
			5'b00100 : digit_seg = 7'b0011001;	// 4
			5'b00101 : digit_seg = 7'b0010010;	// 5
			5'b00110 : digit_seg = 7'b0000010;	// 6
			5'b00111 : digit_seg = 7'b1111000;	// 7
			5'b01000 : digit_seg = 7'b0000000;	// 8
			5'b01001 : digit_seg = 7'b0010000;	// 9
			5'b01010 : digit_seg = 7'b0001000;	// A
			5'b01011 : digit_seg = 7'b0000011;	// b
			5'b01100 : digit_seg = 7'b1000110;	// C
			5'b01101 : digit_seg = 7'b0100001;	// d
			5'b01110 : digit_seg = 7'b0000110;	// E
			5'b01111 : digit_seg = 7'b0001110;	// F
			5'b10000 : digit_seg = 7'b1000010;	// G
			5'b10001 : digit_seg = 7'b0001011;	// h
			5'b10010 : digit_seg = 7'b0001001;	// H
			5'b10011 : digit_seg = 7'b1000111;	// L
			5'b10100 : digit_seg = 7'b0101011;	// n
			5'b10101 : digit_seg = 7'b0100011;	// o
			5'b10110 : digit_seg = 7'b0001100;	// P
			5'b10111 : digit_seg = 7'b0011000;	// q
			5'b11000 : digit_seg = 7'b0101111;	// r
			5'b11001 : digit_seg = 7'b0000111;	// t
			5'b11010 : digit_seg = 7'b1000001;	// U
			5'b11011 : digit_seg = 7'b0010001;	// y
			5'b11100 : digit_seg = 7'b0111111;	// -
			5'b11101 : digit_seg = 7'b0111110;	// =
			5'b11110 : digit_seg = 7'b0011011;	// S
			5'b11111 : digit_seg = 7'b1110001;	// J
		endcase
	end

	mux4to1 #(8) mux_temp_seg({
			disp_num[30], disp_num[3], disp_num[10], disp_num[22], disp_num[31], disp_num[23], disp_num[11], disp_num[15],
			disp_num[28], disp_num[2], disp_num[8], disp_num[20], disp_num[29], disp_num[21], disp_num[9], disp_num[14],
			disp_num[26], disp_num[1], disp_num[6], disp_num[18], disp_num[27], disp_num[19], disp_num[7], disp_num[13],
			disp_num[24], disp_num[0], disp_num[4], disp_num[16], disp_num[25], disp_num[17], disp_num[5], disp_num[12]}, Scanning, temp_seg);

	// Digit select: ANcode
	mux4to1 #(4) mux_anode({4'b0111, 4'b1011, 4'b1101, 4'b1110}, Scanning, anode);
	assign AN = anode | (blinking & {4{flash_clk}});

endmodule
