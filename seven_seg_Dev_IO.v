module seven_seg_Dev_IO(
		input clk,	// io_clk CPU
		input rst,
		input GPIOe0000000_we,	// = 1 0 
		input [31:0] point_in,	//  8  4 
		input [31:0] blink_in,	//  8  4 
		input [2:0] Test,	//  SW[7:5]
		input [31:0] disp_cpudata,	//  0
		input [31:0] Test_data1,	//  1
		input [31:0] Test_data2,	//  2
		input [31:0] Test_data3,	//  3
		input [31:0] Test_data4,	//  4
		input [31:0] Test_data5,	//  5
		input [31:0] Test_data6,	//  6
		input [31:0] Test_data7,	//  7
		output reg [3:0] point_out,	// 
		output reg [3:0] blink_out, // 
		output [31:0] disp_num	//  7 
	);
endmodule
