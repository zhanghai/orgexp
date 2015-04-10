`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:10 11/03/2014 
// Design Name: 
// Module Name:    Output_2_Disp 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module seven_seg_Dev_IO(input clk,
							input rst,
							input GPIOe0000000_we,				//EN
							input[2:0]Test,						//ALU&Clock,SW[7:5]	
							input[31:0]point_in,					//针对8个显示输入各4个小数点
							input[31:0]blink_in,
							input[31:0] disp_cpudata,			//disp_cpudata
							input[31:0] Test_data1,
							input[31:0] Test_data2,
							input[31:0] Test_data3,
							input[31:0] Test_data4,
							input[31:0] Test_data5,
							input[31:0] Test_data6,
							input[31:0] Test_data7,
							output reg[3:0] point_out,
							output reg[3:0] blink_out,
							output reg[31:0]Disp_num=32'h12345678
							);

	
endmodule
