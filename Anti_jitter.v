`timescale 1ns / 1ps

module Anti_jitter(
		input clk,
		input [3:0] button,
		input [7:0] SW,
		output reg [3:0] button_out,
		output reg [3:0] button_pulse,
		output reg [7:0] SW_OK
		);

	reg [31:0] counter;
	reg [3:0] btn_prev;
	reg [7:0] sw_prev;
	reg pulse;

	always @(posedge clk) begin
		btn_prev <= button;
		sw_prev <= SW;
		if (btn_prev != button || sw_prev != SW) begin
			counter <= 0;
			pulse <= 0;
		end else if (counter < 100000) begin
			counter <= counter + 1;
		end else begin
			button_out <= button;
			SW_OK <= SW;
			pulse <= 1;
			if (!pulse) begin
				button_pulse <= button;
			end else begin
				button_pulse <= 0;
			end
		end
	end

endmodule
