module seven_seg_dev(
		input [31:0] disp_num,	// 来自U5
		input [1:0] SW,	// 来自U9
		input flash_clk,	// 通用分频器
		input [1:0] Scanning,	// 来自U8
		input [3:0] pointing,	// 来自U5
		input [3:0] blinking,	// 来自U5
		output [3:0] AN,
		output reg [7:0] SEGMENT	// 来自U5
	);
endmodule
