`timescale 1ns / 1ps

module MIO_BUS(
		clk,
		rst,
		BTN,
		SW,
		mem_w,
		Cpu_data2bus,	//data from CPU
		addr_bus,
		ram_data_out,
		led_out,
		counter_out,
		counter0_out,
		counter1_out,
		counter2_out,
		Cpu_data4bus,	//write to CPU
		ram_data_in,	//from CPU write to Memory
		ram_addr,	//Memory Address signals
		data_ram_we,
		GPIOf0000000_we,
		GPIOe0000000_we,
		counter_we,
		Peripheral_in
		);

	input clk, rst, mem_w;
	input counter0_out, counter1_out, counter2_out;
	input [3:0] BTN;
	input [7:0] SW,led_out;
	input [31:0] Cpu_data2bus, ram_data_out, addr_bus, counter_out;
	output data_ram_we, GPIOe0000000_we, GPIOf0000000_we, counter_we;
	output [31:0] Cpu_data4bus, ram_data_in, Peripheral_in;
	output [9:0] ram_addr;
endmodule
