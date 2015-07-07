`timescale 1ns / 1ps

module vga_controller(
		input clock_25mhz,
		input reset,
		output reg h_sync,
		output reg v_sync,
		output reg inside_video,
		output [9:0] x_position,
		output [8:0] y_position
	);

	// SYNC, BPORCH, VIDEO, FPORCH.
	localparam H_SYNC = 96;
	localparam H_BPORCH = 144;
	localparam H_FPORCH = 784;
	localparam H_TOTAL = 800;
	localparam V_SYNC = 2;
	localparam V_BPORCH = 35;
	localparam V_FPORCH = 511;
	localparam V_TOTAL = 525;

	reg [9:0] h_counter = 0;
	reg [9:0] v_counter = 0;
	reg v_enable = 0;

	always @(posedge clock_25mhz or posedge reset) begin
		if (reset) begin
			h_counter <= 0;
		end else if (h_counter == H_TOTAL - 1) begin
			h_counter <= 0;
			v_enable <= 1;
		end else begin
			h_counter <= h_counter + 1'b1;
			v_enable <= 0;
		end
	end

	always @(*) begin
		if (h_counter < H_SYNC) begin
			h_sync = 0;
		end else begin
			h_sync = 1;
		end
	end

	always @(posedge clock_25mhz or posedge reset) begin
		if (reset) begin
			v_counter <= 0;
		end else if (v_enable) begin
			if (v_counter == V_TOTAL - 1) begin
				v_counter <= 0;
			end else begin
				v_counter <= v_counter + 1'b1;
			end
		end
	end

	always @(*) begin
		if (v_counter < V_SYNC) begin
			v_sync = 0;
		end else begin
			v_sync = 1;
		end
	end

	always @(*) begin
		if ((h_counter >= H_BPORCH) && (h_counter < H_FPORCH) && (v_counter >= V_BPORCH) && (v_counter < V_FPORCH)) begin
			inside_video = 1;
		end else begin
			inside_video = 0;
		end
	end

	assign x_position = h_counter - H_BPORCH;
	assign y_position = v_counter - V_BPORCH;

endmodule
