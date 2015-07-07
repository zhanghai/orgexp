`timescale 1ns / 1ps

module life_game_dev_io(
		input clock,
		input block_write,
		input [6:0] block_address,
		input [31:0] block_data_in,
		input [9:0] x_position,
		input [8:0] y_position,
		input inside_video,
		output [31:0] block_data_out,
		output reg [7:0] color
	);

	parameter BLOCK_COUNT_X = 64;
	parameter BLOCK_COUNT_Y = 48;

	parameter COLOR_POINTER = 8'b110_110_10;
	parameter COLOR_EMPTY = 8'b111_111_11;
	parameter COLOR_BLACK = 8'b000_000_00;

	reg [31:0] map_0 [0:48 * 2 - 1];	// {6'bY, 1'bX}, Write one word at a time.
	reg [31:0] map_1 [0:48 * 2 - 1];
	reg map_index = 0;

	wire [5:0] x_address;
	wire [5:0] y_address;
	wire [31:0] vga_block;

	wire [7:0] color_life;
	wire [7:0] color_empty;
	wire [7:0] color_block;
	wire [7:0] color_block_circlized;

	initial begin
		map_0[0][1] = 1;
		map_0[2][2] = 1;
		map_0[4][0] = 1;
		map_0[4][1] = 1;
		map_0[4][2] = 1;
	end

	assign block_data_out = map_index == 0 ? map_0[block_address] : map_1[block_address];

	always @(posedge clock) begin
		if (block_write) begin
			// Use 7'b1111111 to access map_index
			if (&block_address == 1) begin
				map_index <= block_data_in[0];
			end else if (map_index == 0) begin
				map_0[block_address] <= block_data_in;
			end else begin
				map_1[block_address] <= block_data_in;
			end
		end
	end

	assign x_address = x_position / 10;
	assign y_address = y_position / 10;
	assign vga_block = map_index == 0 ? map_0[{y_address, x_address[5]}] : map_1[{y_address, x_address[5]}];

	always @(*) begin
		if (inside_video) begin
			color = vga_block[x_address[4:0]] ? COLOR_BLACK : COLOR_EMPTY;
		end else begin
			color = 8'b0;
		end
	end

endmodule
