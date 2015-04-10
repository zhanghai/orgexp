`timescale 1ns / 1ps

module regfile(
   input clk,
   input rst,
   input we,
   input [4:0] reg_Rs_addr_A,
   input [4:0] reg_Rt_addr_B,
   input [4:0] reg_Wt_addr,
   input [31:0] wdata,
   output [31:0] rdata_A,
   output [31:0] rdata_B
   );

	reg [31:0] register [1:31];

	assign rdata_A = reg_Rs_addr_A == 0 ? 0 : register[reg_Rs_addr_A];

	assign rdata_B = reg_Rt_addr_B == 0 ? 0 : register[reg_Rt_addr_B];

	integer i;
	always @(posedge clk or posedge rst) begin
		if (rst) begin
			for (i = 1; i < 32; i = i + 1) begin
				register[i] <= 0;
			end
		end else if (we == 1 && reg_Wt_addr != 0) begin
			register[reg_Wt_addr] <= wdata;
		end
	end
endmodule
