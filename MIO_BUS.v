`timescale 1ns / 1ps

module MIO_BUS(
		input [3:0] BTN,	// 4 
		input [7:0] SW,	// 8 
		input mem_w,	//  CPU
		input [31:0] Cpu_data2bus,	// CPU 
		input [31:0] addr_bus,	//  CPU
		input [31:0] ram_data_out,	//  RAM 
		input [7:0] led_out,	//  LED 
		input [31:0] counter_out,	// 
		input counter0_out,	//  0 
		input counter1_out,	//  1 
		input counter2_out,	//  2 
		output reg [31:0] Cpu_data4bus,	// CPU , CPU
		output reg [31:0] ram_data_in,	// RAM  RAM
		output reg [9:0] ram_addr,	// RAM  RAM
		output reg data_ram_we,	// RAM  RAM
		output reg GPIOf0000000_we,	//  LED 
		output reg GPIOe0000000_we,	//  7 U5
		output reg counter_we,	//  U10
		output reg [31:0] Peripheral_in,	// ,
		
		input [31:0] lg_out,
		output reg lg_we,
		output reg [6:0] lg_addr
	);

	reg data_ram_rd;
	reg GPIOf0000000_rd;
	reg GPIOe0000000_rd;
	reg counter_rd;
	reg [7:0] led_in;

	reg lg_rd;

	always @(*) begin

		data_ram_we=0;
		data_ram_rd=0;
		counter_we=0;
		counter_rd=0;
		GPIOf0000000_we=0;
		GPIOe0000000_we=0;
		GPIOf0000000_rd=0;
		GPIOe0000000_rd=0;
		ram_addr=10'h0;
		ram_data_in=32'h0;
		Peripheral_in=32'h0;
		Cpu_data4bus =32'h0;

		lg_we = 0;
		lg_rd = 0;
		lg_addr = 7'b0;

		case (addr_bus[31:28])
			4'h0: begin
				data_ram_we = mem_w;
				ram_addr = addr_bus[11:2];
				ram_data_in = Cpu_data2bus;
				Cpu_data4bus = ram_data_out;
				data_ram_rd = ~mem_w;
			end
			4'hd: begin	// Life game
				lg_we = mem_w;
				lg_addr = addr_bus[6:0];
				Peripheral_in = Cpu_data2bus;
				Cpu_data4bus = lg_out;
				lg_rd = ~mem_w;
			end
			4'he: begin	// 7 segments LEDs
				GPIOe0000000_we = mem_w;
				Peripheral_in = Cpu_data2bus;
				Cpu_data4bus = counter_out;
				GPIOe0000000_rd = ~mem_w;
			end
			4'hf: begin
				if (addr_bus[2]) begin
					counter_we = mem_w;
					Peripheral_in = Cpu_data2bus;
					Cpu_data4bus = counter_out;
					counter_rd = ~mem_w;
				end else begin
					GPIOf0000000_we = mem_w;
					Peripheral_in = Cpu_data2bus;
					Cpu_data4bus = {counter0_out, counter1_out, counter2_out, 9'h00, led_out, BTN, SW};
					GPIOf0000000_rd = ~mem_w;
				end
			end
		endcase

		casex ({data_ram_rd, lg_rd, GPIOe0000000_rd, counter_rd, GPIOf0000000_rd})
			5'b1xxxx: Cpu_data4bus = ram_data_out;	// read from RAM
			5'bx1xxx: Cpu_data4bus = lg_out;	// read from life game
			5'bxx1xx: Cpu_data4bus = counter_out;	// read from Counter
			5'bxxx1x: Cpu_data4bus = counter_out;	// read from Counter
			5'bxxxx1: Cpu_data4bus = {counter0_out, counter1_out,  counter2_out, 9'h00, led_out, BTN, SW};	//read from SW & BTN
		endcase
	end
endmodule
