`timescale 1ns / 1ps

module MIO_BUS(
		input clk,	// 主板时钟
		input rst,	// 复位，按钮 BTN3
		input [3:0] BTN,	// 4 位原始按钮输入
		input [7:0] SW,	// 8 位原始开关输入
		input mem_w,	// 存储器读写操作，来自 CPU
		input [31:0] Cpu_data2bus,	// CPU 输出数据总线
		input [31:0] addr_bus,	// 地址总线，来自 CPU
		input [31:0] ram_data_out,	// 来自 RAM 数据输出
		input [7:0] led_out,	// 来自 LED 设备输出
		input [31:0] counter_out,	// 当前通道计数输出，来自计数器外设
		input counter0_out,	// 通道 0 计数结束输出，来自计数器外设
		input counter1_out,	// 通道 1 计数结束输出，来自计数器外设
		input counter2_out,	// 通道 2 计数结束输出，来自计数器外设
		output [31:0] Cpu_data4bus,	// CPU 写入数据总线,连接到 CPU
		output [31:0] ram_data_in,	// RAM 写入数据总线，连接到 RAM
		output [9:0] ram_addr,	// RAM 访问地址，连接到 RAM
		output data_ram_we,	// RAM 读写控制，连接到 RAM
		output GPIOf0000000_we,	// 设备一 LED 写信号
		output GPIOe0000000_we,	// 设备二 7 段写信号，连接到U5
		output counter_we,	// 记数器写信号，连接到 U10
		output [31:0] Peripheral_in	// 外部设备写数据总线,连接所有写设备
);
endmodule
