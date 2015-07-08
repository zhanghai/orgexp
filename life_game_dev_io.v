`timescale 1ns / 1ps

module life_game_dev_io(
		input clock,
		input cell_write,
		input [11:0] cell_address,
		input [31:0] cell_data_in,
		input [9:0] x_position,
		input [8:0] y_position,
		input inside_video,
		output reg [31:0] cell_data_out,
		output reg [7:0] color
	);

	parameter CELL_COUNT_X = 64;
	parameter CELL_COUNT_Y = 48;

	parameter COLOR_POINTER = 8'b110_110_10;
	parameter COLOR_EMPTY = 8'b111_111_11;
	parameter COLOR_BLACK = 8'b000_000_00;

	reg [CELL_COUNT_X - 1:0] world_0 [0:CELL_COUNT_Y - 1];	// {6'bY, 6'bX}
	reg [CELL_COUNT_X - 1:0] world_1 [0:CELL_COUNT_Y - 1];
	reg world_index = 0;

	wire [5:0] x_address;
	wire [5:0] y_address;
	wire [63:0] vga_row;

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

	assign cell_data_out_row = world_index == 0 ? world_0[cell_address[11:6]] : world_1[cell_address[11:6]];
	always @(posedge clock) begin
		cell_data_out = {31'b0, cell_data_out_row[cell_address[5:0]]};
		if (cell_write) begin
			// Write to the next frame
			// Use 7'b1111111 to access world_index
			if (&cell_address == 1) begin
				world_index <= cell_data_in[0];
			end else if (world_index == 0) begin
				world_1[cell_address[11:6]][cell_address[5:0]] <= cell_data_in[0];
			end else begin
				world_0[cell_address[11:6]][cell_address[5:0]] <= cell_data_in[0];
			end
		end
	end

	assign x_address = x_position / 10;
	assign y_address = y_position / 10;
	assign vga_row = world_index == 0 ? world_0[y_address] : world_1[y_address];

	always @(*) begin
		if (inside_video) begin
			color = vga_row[x_address] ? COLOR_BLACK : COLOR_EMPTY;
		end else begin
			color = 8'b0;
		end
	end

endmodule
