`timescale 1ns / 1ps

module orgexp(
		input clk_100mhz,
		input [3:0] BTN,
		input [7:0] SW,
		output [3:0] AN,
		output [7:0] SEGMENT,
		output [7:0] LED,

		output [2:0] red,
		output [2:0] green,
		output [1:0] blue,
		output h_sync,
		output v_sync
	);

	// U9 Anti_jitter
	wire [3:0] button_out;
	wire rst;
	wire [7:0] SW_OK;

	// U8 clk_div
	wire [31:0] clkdiv;
	// 12.5MHz
	wire clk_CPU;
	// 12.5MHz, inverted
	wire clk_IO;

	// U1 Multi_CPU
	wire [31:0] inst_out;
	wire mem_w;
	wire [31:0] PC_out;
	wire [31:0] Addr_out;
	wire [31:0] Data_out;

	// U3 RAM_B
	wire clk_100mhz_inv;
	wire [31:0] ram_data_out;

	// U10 Counter_X
	wire counter0_OUT;
	wire counter1_OUT;
	wire counter2_OUT;
	wire [31:0] counter_out;

	// U7 led_Dev_IO
	wire [1:0] counter_set;
	wire [7:0] led_out;

	// U4 MIO_BUS
	wire GPIOf0000000_we;
	wire GPIOe0000000_we;
	wire counter_we;
	wire [31:0] CPU_data4bus;
	wire [31:0] Peripheral_in;
	wire [31:0] ram_data_in;
	wire [9:0] ram_addr;
	wire data_ram_we;

	wire [31:0] lg_out;
	wire lg_we;
	wire [6:0] lg_addr;

	// U0 life_game_dev_io
	wire [9:0] x_position;
	wire [8:0] y_position;
	wire inside_video;
	wire [31:0] cell_data_out;
	wire [7:0] color;

	// U00 vga_controller
	wire clock_25mhz;

	// U5 seven_seg_Dev_IO
	wire [31:0] Disp_num;
	wire [3:0] blink_out;
	wire [3:0] point_out;

	// Unknown
	wire [3:0] blink;

	Anti_jitter U9 (
		.clk(clk_100mhz),
		.button(BTN[3:0]),
		.SW(SW[7:0]),
		.button_out(button_out[3:0]),
		.rst(rst),
		.button_pulse(),
		.SW_OK(SW_OK[7:0])
	);
	clk_div U8 (
		.clk(clk_100mhz),
		.rst(rst),
		.SW2(SW_OK[2]),
		.clkdiv(clkdiv[31:0]),
		.Clk_CPU(clk_CPU)
	);
	assign clk_IO = ~clk_CPU;
	Multi_CPU U1 (
		.clk(clk_CPU),
		.reset(rst),
		.inst_out(inst_out[31:0]),
		.INT(counter0_OUT),
		.Data_in(CPU_data4bus[31:0]),
		.MIO_ready(~button_out[1]),
		.mem_w(mem_w),
		.PC_out(PC_out[31:0]),
		.state(),
		.Addr_out(Addr_out[31:0]),
		.Data_out(Data_out[31:0]),
		.CPU_MIO()
	);
	assign clk_100mhz_inv = ~clk_100mhz;
	RAM_B U3 (
		.addra(ram_addr[9:0]),
		.wea(data_ram_we),
		.dina(ram_data_in[31:0]),
		.clka(clk_100mhz_inv),
		.douta(ram_data_out[31:0])
	);
	Counter_x U10 (
		.clk(clk_IO),
		.rst(rst),
		.clk0(clkdiv[7]),
		.clk1(clkdiv[10]),
		.clk2(clkdiv[10]),
		.counter_we(counter_we),
		.counter_val(Peripheral_in[31:0]),
		.counter_ch(counter_set[1:0]),
		.counter0_OUT(counter0_OUT),
		.counter1_OUT(counter1_OUT),
		.counter2_OUT(counter2_OUT),
		.counter_out(counter_out[31:0])
	);
	led_Dev_IO U7 (
		.clk(clk_IO),
		.rst(rst),
		.GPIOf0000000_we(GPIOf0000000_we),
		.Peripheral_in(Peripheral_in[31:0]),
		.counter_set(counter_set[1:0]),
		.led_out(led_out[7:0]),
		.GPIOf0()
	);
	assign LED = led_out[7:0];
	MIO_BUS U4 (
		.mem_w(mem_w),
		.counter0_out(counter0_OUT),
		.counter1_out(counter1_OUT),
		.counter2_out(counter2_OUT),
		.BTN(button_out[3:0]),
		.SW(SW_OK[7:0]),
		.addr_bus(Addr_out[31:0]),
		.Cpu_data2bus(Data_out[31:0]),
		.ram_data_out(ram_data_out[31:0]),
		.led_out(led_out[7:0]),
		.counter_out(counter_out[31:0]),
		.GPIOf0000000_we(GPIOf0000000_we),
		.GPIOe0000000_we(GPIOe0000000_we),
		.counter_we(counter_we),
		.Cpu_data4bus(CPU_data4bus[31:0]),
		.Peripheral_in(Peripheral_in[31:0]),
		.ram_data_in(ram_data_in[31:0]),
		.ram_addr(ram_addr[9:0]),
		.data_ram_we(data_ram_we),
		
		.lg_out(lg_out[31:0]),
		.lg_we(lg_we),
		.lg_addr(lg_addr[6:0])
	);
	life_game_dev_io U0 (
		.clock(clk_100mhz_inv),
		.cell_write(lg_we),
		.cell_address(lg_addr[6:0]),
		.cell_data_in(Peripheral_in[31:0]),
		.x_position(x_position[9:0]),
		.y_position(y_position[8:0]),
		.inside_video(inside_video),
		.cell_data_out(lg_out[31:0]),
		.color(color[7:0])
	);
	assign red = color[7:5];
	assign green = color[4:2];
	assign blue = color[1:0];
	assign clock_25mhz = clkdiv[1];
	vga_controller U00 (
		.clock_25mhz(clock_25mhz),
		.reset(rst),
		.h_sync(h_sync),
		.v_sync(v_sync),
		.inside_video(inside_video),
		.x_position(x_position[9:0]),
		.y_position(y_position[8:0])
	);
	seven_seg_Dev_IO U5 (
		.clk(clk_IO),
		.rst(rst),
		.GPIOe0000000_we(GPIOe0000000_we),
		.Test(SW_OK[7:5]),
		.point_in({32{1'b1}}),
		.blink_in({{24{1'b0}}, blink[3:0], blink[3:0]}),
		.disp_cpudata(Peripheral_in[31:0]),
		.Test_data1({2'b00, PC_out[31:2]}),
		.Test_data2(counter_out[31:0]),
		.Test_data3(inst_out[31:0]),
		.Test_data4(Addr_out[31:0]),
		.Test_data5(Data_out[31:0]),
		.Test_data6(CPU_data4bus[31:0]),
		.Test_data7(PC_out[31:0]),
		.disp_num(Disp_num[31:0]),
		.blink_out(blink_out[3:0]),
		.point_out(point_out[3:0])
	);
	seven_seg_dev U6 (
		.flash_clk(clkdiv[26]),
		.disp_num(Disp_num[31:0]),
		.SW(SW_OK[1:0]),
		.Scanning(clkdiv[19:18]),
		.SEGMENT(SEGMENT[7:0]),
		.pointing(point_out[3:0]),
		.blinking(blink_out[3:0]),
		.AN(AN[3:0])
	);
endmodule
