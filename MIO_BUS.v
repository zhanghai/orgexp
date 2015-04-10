`timescale 1ns / 1ps

module MIO_BUS(
		input clk,
		input rst,
		input [3:0] BTN,
		input [7:0] SW,
		input mem_w,
		input [31:0] Cpu_data2bus, // Data from CPU
		input [31:0] addr_bus,
		input [31:0] ram_data_out,
		input [7:0] led_out,
		input [31:0] counter_out,
		input counter0_out,
		input counter1_out,
		input counter2_out,
		output [31:0] Cpu_data4bus, // Write to CPU
		output [31:0] ram_data_in, // from CPU write to Memory
		output [9:0] ram_addr, // Memory Address signals
		output data_ram_we,
		output GPIOf0000000_we,
		output GPIOe0000000_we,
		output counter_we,
		output [31:0] Peripheral_in
		);
endmodule
