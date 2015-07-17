`timescale 1ns / 1ps

module life_game_dev_io(
		input clock,
		input cell_write,
		input [6:0] cell_address,
		input [31:0] cell_data_in,
		input world_clock,
		input [9:0] x_position,
		input [8:0] y_position,
		input inside_video,
		output [31:0] cell_data_out,
		output [7:0] color
	);

	parameter COLOR_POINTER = 8'b110_110_10;
	parameter COLOR_EMPTY = 8'b111_111_11;
	parameter COLOR_BLACK = 8'b000_000_00;

	reg [31:0] world_0 [0:48 * 2 - 1];	// {6'bY, 1'bX}, Write one word at a time.
	reg [31:0] world_1 [0:48 * 2 - 1];
	reg world_index = 0;

	wire [5:0] x_address;
	wire [5:0] y_address;
	wire [31:0] vga_block;
	wire vga_cell;

	wire [7:0] color_life;
	wire [7:0] color_empty;
	wire [7:0] color_cell;
	wire [7:0] color_cell_circlized;

	initial begin
		world_0[2][25] = 1;
		world_0[4][23] = 1;	world_0[4][25] = 1;
		world_0[6][14:13] = 2'b11;	world_0[6][22:21] = 2'b11;	world_0[7][4:3] = 2'b11;
		world_0[8][12] = 1;	world_0[8][16] = 1;	world_0[8][22:21] = 2'b11;	world_0[9][4:3] = 2'b11;
		world_0[10][2:1] = 2'b11;	world_0[10][11] = 1;	world_0[10][17] = 1; world_0[10][22:21] = 2'b11;
		world_0[12][2:1] = 2'b11;	world_0[12][11] = 1;	world_0[12][15] = 1;	world_0[12][18:17] = 2'b11; world_0[12][23] = 1; world_0[12][25] = 1;
		world_0[14][11] = 1;	world_0[14][17] = 1; world_0[14][25] = 1;
		world_0[16][12] = 1;	world_0[16][16] = 1;
		world_0[18][14:13] = 2'b11;
	end

	assign cell_data_out = world_index ? world_1[cell_address] : world_0[cell_address];

	// Write to the next frame
	always @(posedge clock) begin
		if (cell_write && world_index) begin
			world_0[cell_address] <= cell_data_in;
		end
	end
	always @(posedge clock) begin
		if (cell_write && !world_index) begin
			world_1[cell_address] <= cell_data_in;
		end
	end

	assign x_address = x_position / 10;
	assign y_address = y_position / 10;
	assign vga_block = world_index ? world_1[{y_address, x_address[5]}] : world_0[{y_address, x_address[5]}];
	assign vga_cell = vga_block[x_address[4:0]];
	assign color = inside_video ? (vga_cell ? COLOR_BLACK : COLOR_EMPTY) : 8'b0;

	always @(posedge world_clock) begin
		world_index <= !world_index;
	end
endmodule
