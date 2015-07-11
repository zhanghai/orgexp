`timescale 1ns / 1ps

module life_game_dev_io(
		input clock,
		input cell_write,
		input [6:0] cell_address,
		input [31:0] cell_data_in,
		input [9:0] x_position,
		input [8:0] y_position,
		input inside_video,
		output [31:0] cell_data_out,
		output reg [7:0] color
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
		world_0[0][1] = 1;
		world_0[2][2] = 1;
		world_0[4][0] = 1;
		world_0[4][1] = 1;
		world_0[4][2] = 1;
	end

	assign cell_data_out = world_index == 0 ? world_0[cell_address] : world_1[cell_address];

	// Write to the next frame
	always @(posedge clock) begin
		if (cell_write) begin
			// Use 7'b1111111 to access world_index
			if (&cell_address == 1) begin
				world_index <= cell_data_in[0];
			end else if (world_index == 0) begin
				world_1[cell_address] <= cell_data_in;
			end else begin
				world_0[cell_address] <= cell_data_in;
			end
		end
	end

	assign x_address = x_position / 10;
	assign y_address = y_position / 10;
	assign vga_block = world_index == 0 ? world_0[{y_address, x_address[5]}] : world_1[{y_address, x_address[5]}];
	assign vga_cell = vga_block[x_address[4:0]];

	always @(*) begin
		if (inside_video) begin
			color = vga_cell ? COLOR_BLACK : COLOR_EMPTY;
		end else begin
			color = 8'b0;
		end
	end

endmodule
