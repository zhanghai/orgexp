`timescale 1ns / 1ps

module Input_2_32bit(
		input [2:0] push_out,
		input [4:0] disp_ctr,	// {SW[7:5], SW[1:0]}
		output reg[31:0] Ai = 32'h87654321,
		output reg[31:0] Bi = 32'h12345678,
		output reg[1:0] state = 0,
		output reg [3:0 ] blink
		);

	always @(posedge push_out[0]) begin	// btn[0] make blink right shift, or left shift if btn[1]
		if (disp_ctr[4:2] <= 3'b001) begin	// SW[7:5] <= 1, Ai or Bi
			if (push_out[1]) begin
				state <= state + 1'b1;
			end else begin
				state <= state - 1'b1;
			end
		end else begin
			state <= state;
		end
	end

	always @(*) begin
		if (disp_ctr[4:2] <= 3'b001) begin	// SW[7:5] <= 1, Ai or Bi
			case (state[1:0])
				2'b00: blink <= 4'b0001;
				2'b01: blink <= 4'b0010;
				2'b10: blink <= 4'b0100;
				2'b11: blink <= 4'b1000;
			endcase
		end else begin
			blink <= 4'b0000;
		end
	end

	always @(posedge push_out[2]) begin	// btn[2] increments the bliking digit
		if (disp_ctr[4:2] == 3'b000) begin	//SW[7:5]=000,A
			case ({disp_ctr[1], state})
				3'b000: Ai[3:0] <= Ai[3:0] + 1'b1;	//SW[1]=0,Ai16
				3'b001: Ai[7:4] <= Ai[7:4] + 1'b1;
				3'b010: Ai[11:8] <= Ai[11:8] + 1'b1;
				3'b011: Ai[15:12] <= Ai[15:12] + 1'b1;
				3'b100: Ai[19:16] <= Ai[19:16] + 1'b1;	//SW[1]=1,Ai16
				3'b101: Ai[23:20] <= Ai[23:20] + 1'b1;
				3'b110: Ai[27:24] <= Ai[27:24] + 1'b1;
				3'b111: Ai[31:28] <= Ai[31:28] + 1'b1;
			endcase
		end else if (disp_ctr[4:2] == 3'b001) begin	//SW[7:5]=001,B
			case({disp_ctr[1],state})
				3'b000: Bi[3:0] <= Bi[3:0] + 1'b1;	//SW[1]=0,Bi16
				3'b001: Bi[7:4] <= Bi[7:4] + 1'b1;
				3'b010: Bi[11:8] <= Bi[11:8] + 1'b1;
				3'b011: Bi[15:12] <= Bi[15:12] + 1'b1;
				3'b100: Bi[19:16] <= Bi[19:16] + 1'b1;	//SW[1]=1,Bi16
				3'b101: Bi[23:20] <= Bi[23:20] + 1'b1;
				3'b110: Bi[27:24] <= Bi[27:24] + 1'b1;
				3'b111: Bi[31:28] <= Bi[31:28] + 1'b1;
			endcase
		end
	end

endmodule
