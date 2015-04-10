<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <attr value="PartialBusOnly|BaseDashIndex" name="RenameBusIO" />
    <netlist>
        <signal name="clk_50mhz" />
        <signal name="BTN(3:0)" />
        <signal name="clkdiv(31:0)" />
        <signal name="SW(7:0)" />
        <signal name="LED(7:0)" />
        <signal name="SW_OK(1:0)" />
        <signal name="CPU_CLK" />
        <signal name="SW_OK(2)" />
        <signal name="pc(11:2)" />
        <signal name="clka" />
        <signal name="wea" />
        <signal name="Disp_num(31:0)" />
        <signal name="clkdiv(24)" />
        <signal name="XLXN_341(3:0)" />
        <signal name="AN(3:0)" />
        <signal name="SEGMENT(7:0)" />
        <signal name="SEGMENT(7)" />
        <signal name="SEGMENT(0)" />
        <signal name="SEGMENT(1)" />
        <signal name="SEGMENT(2)" />
        <signal name="SEGMENT(3)" />
        <signal name="SEGMENT(4)" />
        <signal name="SEGMENT(5)" />
        <signal name="SEGMENT(6)" />
        <signal name="XLXN_357(3:0)" />
        <signal name="N0,N0,pc(31:2)" />
        <signal name="clkdiv(19:18)" />
        <signal name="SW_OK(7:0)" />
        <signal name="button_out(3)" />
        <signal name="rom_dout(31:0)" />
        <signal name="counter0_out" />
        <signal name="counter1_out" />
        <signal name="counter2_out" />
        <signal name="Data_in(31:0)" />
        <signal name="ram_din(31:0)" />
        <signal name="pc(31:0)" />
        <signal name="addra(9:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="mem_w" />
        <signal name="ram_data(31:0)" />
        <signal name="counter_out(31:0)" />
        <signal name="GPIOe0000000_we" />
        <signal name="counter_we" />
        <signal name="V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(3:0),blink(3:0)" />
        <signal name="XLXN_442" />
        <signal name="counter_ch(1:0)" />
        <signal name="clkdiv(10)" />
        <signal name="clkdiv(7)" />
        <signal name="N0" />
        <signal name="counter_val(31:0)" />
        <signal name="XLXN_485" />
        <signal name="V5" />
        <signal name="button_out(3:0)" />
        <signal name="SW_OK(7:5)" />
        <port polarity="Input" name="clk_50mhz" />
        <port polarity="Input" name="BTN(3:0)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="SEGMENT(7)" />
        <port polarity="Output" name="SEGMENT(0)" />
        <port polarity="Output" name="SEGMENT(1)" />
        <port polarity="Output" name="SEGMENT(2)" />
        <port polarity="Output" name="SEGMENT(3)" />
        <port polarity="Output" name="SEGMENT(4)" />
        <port polarity="Output" name="SEGMENT(5)" />
        <port polarity="Output" name="SEGMENT(6)" />
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="Anti_jitter">
            <timestamp>2015-3-12T5:53:0</timestamp>
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(170,255,255);fillstyle:Solid" width="304" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <rect width="64" x="368" y="-44" height="24" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <rect width="64" x="368" y="-92" height="24" />
            <line x2="432" y1="-80" y2="-80" x1="368" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
        </blockdef>
        <blockdef name="seven_seg_Dev_IO">
            <timestamp>2015-4-2T7:57:13</timestamp>
            <rect style="fillcolor:rgb(150,131,255);fillstyle:Solid" width="320" x="64" y="-896" height="896" />
            <line x2="0" y1="-864" y2="-864" x1="64" />
            <rect width="64" x="0" y="-684" height="24" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <rect width="64" x="0" y="-492" height="24" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-716" height="24" />
            <line x2="448" y1="-704" y2="-704" x1="384" />
            <rect width="64" x="384" y="-652" height="24" />
            <line x2="448" y1="-640" y2="-640" x1="384" />
            <line x2="0" y1="-816" y2="-816" x1="64" />
            <line x2="0" y1="-768" y2="-768" x1="64" />
            <rect width="64" x="384" y="-812" height="24" />
            <line x2="448" y1="-800" y2="-800" x1="384" />
        </blockdef>
        <blockdef name="seven_seg_dev">
            <timestamp>2015-3-26T7:37:31</timestamp>
            <rect width="64" x="400" y="-236" height="24" />
            <line x2="400" y1="-224" y2="-224" x1="464" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="400" y1="-160" y2="-160" x1="464" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <rect width="64" x="0" y="-156" height="24" />
            <line x2="0" y1="-144" y2="-144" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <rect width="64" x="0" y="-220" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect style="linecolor:rgb(0,0,0);fillcolor:rgb(174,185,255);fillstyle:Solid" width="336" x="64" y="-356" height="340" />
            <line x2="464" y1="-304" y2="-304" x1="400" />
            <rect width="64" x="400" y="-316" height="24" />
            <rect width="64" x="400" y="-76" height="24" />
            <line x2="464" y1="-64" y2="-64" x1="400" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="clk_div">
            <timestamp>2015-3-12T5:53:0</timestamp>
            <rect style="fillcolor:rgb(142,240,255);fillstyle:Solid" width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-156" height="24" />
            <line x2="384" y1="-144" y2="-144" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ROM_B">
            <timestamp>2015-3-12T5:53:0</timestamp>
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="544" y1="80" y2="80" style="linewidth:W" x1="576" />
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="512" x="32" y="32" height="328" />
        </blockdef>
        <blockdef name="RAM_B">
            <timestamp>2015-3-12T5:53:0</timestamp>
            <rect style="fillcolor:rgb(255,170,255);fillstyle:Solid" width="512" x="32" y="32" height="316" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="144" y2="144" style="linewidth:W" x1="0" />
            <line x2="32" y1="224" y2="224" style="linewidth:W" x1="0" />
            <line x2="544" y1="144" y2="144" style="linewidth:W" x1="576" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="MIO_BUS">
            <timestamp>2015-4-4T2:45:34</timestamp>
            <rect style="fillcolor:rgb(255,255,127);fillstyle:Solid" width="432" x="64" y="-832" height="832" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-428" height="24" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="560" y1="-704" y2="-704" x1="496" />
            <line x2="560" y1="-608" y2="-608" x1="496" />
            <line x2="560" y1="-512" y2="-512" x1="496" />
            <rect width="64" x="496" y="-172" height="24" />
            <line x2="560" y1="-160" y2="-160" x1="496" />
            <line x2="560" y1="-48" y2="-48" x1="496" />
            <rect width="64" x="496" y="-108" height="24" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
            <rect width="64" x="496" y="-444" height="24" />
            <line x2="560" y1="-432" y2="-432" x1="496" />
            <rect width="64" x="496" y="-284" height="24" />
            <line x2="560" y1="-272" y2="-272" x1="496" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
        </blockdef>
        <blockdef name="SCPU">
            <timestamp>2015-4-4T2:45:34</timestamp>
            <rect width="64" x="-80" y="-124" height="24" />
            <line x2="-80" y1="-112" y2="-112" x1="-16" />
            <line x2="-80" y1="-512" y2="-512" x1="-16" />
            <line x2="-80" y1="-48" y2="-48" x1="-16" />
            <rect width="64" x="368" y="-124" height="24" />
            <line x2="432" y1="-112" y2="-112" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
            <line x2="-80" y1="-464" y2="-464" x1="-16" />
            <rect width="64" x="-80" y="-396" height="24" />
            <line x2="-80" y1="-384" y2="-384" x1="-16" />
            <line x2="-80" y1="-288" y2="-288" x1="-16" />
            <line x2="432" y1="-464" y2="-464" x1="368" />
            <rect width="64" x="368" y="-396" height="24" />
            <line x2="432" y1="-384" y2="-384" x1="368" />
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(255,170,255);fillstyle:Solid" width="384" x="-16" y="-564" height="564" />
            <rect width="64" x="368" y="-188" height="24" />
            <line x2="432" y1="-176" y2="-176" x1="368" />
        </blockdef>
        <blockdef name="Counter_x">
            <timestamp>2015-4-4T2:45:34</timestamp>
            <rect style="fillcolor:rgb(180,180,180);fillstyle:Solid" width="384" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-480" y2="-480" x1="448" />
            <line x2="512" y1="-336" y2="-336" x1="448" />
            <line x2="512" y1="-192" y2="-192" x1="448" />
            <rect width="64" x="448" y="-60" height="24" />
            <line x2="512" y1="-48" y2="-48" x1="448" />
        </blockdef>
        <blockdef name="led_Dev_IO">
            <timestamp>2015-4-4T2:45:34</timestamp>
            <rect style="fillcolor:rgb(128,119,255);fillstyle:Solid" width="384" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-236" height="24" />
            <line x2="512" y1="-224" y2="-224" x1="448" />
            <rect width="64" x="448" y="-140" height="24" />
            <line x2="512" y1="-128" y2="-128" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <block symbolname="seven_seg_Dev_IO" name="U5">
            <blockpin signalname="XLXN_442" name="clk" />
            <blockpin signalname="SW_OK(7:5)" name="Test(2:0)" />
            <blockpin signalname="V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5" name="point_in(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(3:0),blink(3:0)" name="blink_in(31:0)" />
            <blockpin signalname="counter_val(31:0)" name="disp_cpudata(31:0)" />
            <blockpin signalname="N0,N0,pc(31:2)" name="Test_data1(31:0)" />
            <blockpin signalname="counter_out(31:0)" name="Test_data2(31:0)" />
            <blockpin signalname="rom_dout(31:0)" name="Test_data3(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="Test_data4(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="Test_data5(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="Test_data6(31:0)" />
            <blockpin signalname="pc(31:0)" name="Test_data7(31:0)" />
            <blockpin signalname="XLXN_357(3:0)" name="blink_out(3:0)" />
            <blockpin signalname="XLXN_341(3:0)" name="point_out(3:0)" />
            <blockpin signalname="button_out(3)" name="rst" />
            <blockpin signalname="GPIOe0000000_we" name="GPIOe0000000_we" />
            <blockpin signalname="Disp_num(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="seven_seg_dev" name="U6">
            <blockpin signalname="XLXN_341(3:0)" name="pointing(3:0)" />
            <blockpin signalname="XLXN_357(3:0)" name="blinking(3:0)" />
            <blockpin signalname="SW_OK(1:0)" name="SW(1:0)" />
            <blockpin signalname="clkdiv(19:18)" name="Scanning(1:0)" />
            <blockpin signalname="Disp_num(31:0)" name="disp_num(31:0)" />
            <blockpin signalname="clkdiv(24)" name="flash_clk" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="ROM_B" name="U2">
            <blockpin signalname="pc(11:2)" name="addra(9:0)" />
            <blockpin signalname="clka" name="clka" />
            <blockpin signalname="rom_dout(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="addra(9:0)" name="addra(9:0)" />
            <blockpin signalname="clka" name="clka" />
            <blockpin signalname="wea" name="wea(0:0)" />
            <blockpin signalname="ram_din(31:0)" name="dina(31:0)" />
            <blockpin signalname="ram_data(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="clk_50mhz" name="I" />
            <blockpin signalname="clka" name="O" />
        </block>
        <block symbolname="Anti_jitter" name="U9">
            <blockpin signalname="clk_50mhz" name="clk" />
            <blockpin signalname="SW(7:0)" name="SW(7:0)" />
            <blockpin signalname="button_out(3:0)" name="button_out(3:0)" />
            <blockpin signalname="SW_OK(7:0)" name="SW_OK(7:0)" />
            <blockpin name="button_pulse(3:0)" />
            <blockpin signalname="BTN(3:0)" name="button(3:0)" />
        </block>
        <block symbolname="clk_div" name="U8">
            <blockpin signalname="clk_50mhz" name="clk" />
            <blockpin signalname="button_out(3)" name="rst" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="clkdiv(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="CPU_CLK" name="Clk_CPU" />
        </block>
        <block symbolname="vcc" name="VC">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="MIO_BUS" name="U4">
            <blockpin signalname="clk_50mhz" name="clk" />
            <blockpin signalname="button_out(3)" name="rst" />
            <blockpin signalname="mem_w" name="mem_w" />
            <blockpin signalname="counter0_out" name="counter0_out" />
            <blockpin signalname="counter1_out" name="counter1_out" />
            <blockpin signalname="counter2_out" name="counter2_out" />
            <blockpin signalname="button_out(3:0)" name="BTN(3:0)" />
            <blockpin signalname="SW_OK(7:0)" name="SW(7:0)" />
            <blockpin signalname="ram_data(31:0)" name="ram_data_out(31:0)" />
            <blockpin signalname="LED(7:0)" name="led_out(7:0)" />
            <blockpin signalname="counter_out(31:0)" name="counter_out(31:0)" />
            <blockpin signalname="XLXN_485" name="GPIOf0000000_we" />
            <blockpin signalname="GPIOe0000000_we" name="GPIOe0000000_we" />
            <blockpin signalname="counter_we" name="counter_we" />
            <blockpin signalname="ram_din(31:0)" name="ram_data_in(31:0)" />
            <blockpin signalname="wea" name="data_ram_we" />
            <blockpin signalname="addra(9:0)" name="ram_addr(9:0)" />
            <blockpin signalname="Data_in(31:0)" name="Cpu_data4bus(31:0)" />
            <blockpin signalname="counter_val(31:0)" name="Peripheral_in(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Cpu_data2bus(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="addr_bus(31:0)" />
        </block>
        <block symbolname="SCPU" name="U1">
            <blockpin signalname="CPU_CLK" name="clk" />
            <blockpin signalname="counter0_out" name="INT" />
            <blockpin signalname="rom_dout(31:0)" name="inst_in(31:0)" />
            <blockpin signalname="button_out(3)" name="reset" />
            <blockpin name="MIO_ready" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin name="CPU_MIO" />
            <blockpin signalname="mem_w" name="mem_w" />
            <blockpin signalname="pc(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="Addr_out(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="CPU_CLK" name="I" />
            <blockpin signalname="XLXN_442" name="O" />
        </block>
        <block symbolname="Counter_x" name="U10">
            <blockpin signalname="XLXN_442" name="clk" />
            <blockpin signalname="button_out(3)" name="rst" />
            <blockpin signalname="clkdiv(7)" name="clk0" />
            <blockpin signalname="clkdiv(10)" name="clk1" />
            <blockpin signalname="clkdiv(10)" name="clk2" />
            <blockpin signalname="counter_we" name="counter_we" />
            <blockpin signalname="counter_val(31:0)" name="counter_val(31:0)" />
            <blockpin signalname="counter_ch(1:0)" name="counter_ch(1:0)" />
            <blockpin signalname="counter0_out" name="counter0_OUT" />
            <blockpin signalname="counter1_out" name="counter1_OUT" />
            <blockpin signalname="counter2_out" name="counter2_OUT" />
            <blockpin signalname="counter_out(31:0)" name="counter_out(31:0)" />
        </block>
        <block symbolname="gnd" name="XST_GND">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="led_Dev_IO" name="U7">
            <blockpin signalname="XLXN_442" name="clk" />
            <blockpin signalname="button_out(3)" name="rst" />
            <blockpin signalname="XLXN_485" name="GPIOf0000000_we" />
            <blockpin signalname="counter_val(31:0)" name="Peripheral_in(31:0)" />
            <blockpin signalname="counter_ch(1:0)" name="counter_set(1:0)" />
            <blockpin signalname="LED(7:0)" name="led_out(7:0)" />
            <blockpin name="GPIOf0(21:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="CPU_CLK">
            <wire x2="1376" y1="896" y2="896" x1="640" />
            <wire x2="640" y1="896" y2="976" x1="640" />
            <wire x2="1376" y1="576" y2="896" x1="1376" />
            <wire x2="1920" y1="576" y2="576" x1="1376" />
        </branch>
        <branch name="wea">
            <wire x2="496" y1="1744" y2="2352" x1="496" />
            <wire x2="592" y1="2352" y2="2352" x1="496" />
            <wire x2="2320" y1="1744" y2="1744" x1="496" />
            <wire x2="2320" y1="1552" y2="1744" x1="2320" />
        </branch>
        <iomarker fontsize="28" x="176" y="80" name="BTN(3:0)" orien="R180" />
        <instance x="784" y="112" name="VC" orien="R0" />
        <branch name="SW(7:0)">
            <wire x2="752" y1="448" y2="448" x1="160" />
            <wire x2="752" y1="320" y2="448" x1="752" />
            <wire x2="960" y1="320" y2="320" x1="752" />
        </branch>
        <branch name="BTN(3:0)">
            <wire x2="752" y1="80" y2="80" x1="176" />
            <wire x2="752" y1="80" y2="272" x1="752" />
            <wire x2="960" y1="272" y2="272" x1="752" />
        </branch>
        <iomarker fontsize="28" x="160" y="448" name="SW(7:0)" orien="R180" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="45" cx="323" cy="171" />
        <circle style="fillcolor:rgb(0,0,0);fillstyle:Solid" r="18" cx="322" cy="170" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="45" cx="203" cy="171" />
        <circle style="fillcolor:rgb(0,0,0);fillstyle:Solid" r="18" cx="202" cy="170" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="45" cx="447" cy="171" />
        <circle style="fillcolor:rgb(0,0,0);fillstyle:Solid" r="18" cx="446" cy="170" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="45" cx="571" cy="171" />
        <circle style="fillcolor:rgb(0,0,0);fillstyle:Solid" r="18" cx="570" cy="170" />
        <branch name="clkdiv(24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="144" type="branch" />
            <wire x2="1792" y1="144" y2="144" x1="1664" />
            <wire x2="1808" y1="144" y2="144" x1="1792" />
        </branch>
        <branch name="XLXN_341(3:0)">
            <wire x2="2352" y1="192" y2="192" x1="2272" />
            <wire x2="2352" y1="192" y2="512" x1="2352" />
            <wire x2="3376" y1="512" y2="512" x1="2352" />
            <wire x2="3376" y1="512" y2="944" x1="3376" />
            <wire x2="3376" y1="944" y2="944" x1="3312" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="2320" y1="112" y2="112" x1="2272" />
            <wire x2="3120" y1="80" y2="80" x1="2320" />
            <wire x2="3120" y1="80" y2="160" x1="3120" />
            <wire x2="3120" y1="160" y2="192" x1="3120" />
            <wire x2="3120" y1="192" y2="224" x1="3120" />
            <wire x2="3120" y1="224" y2="256" x1="3120" />
            <wire x2="3120" y1="256" y2="288" x1="3120" />
            <wire x2="3120" y1="288" y2="320" x1="3120" />
            <wire x2="3120" y1="320" y2="352" x1="3120" />
            <wire x2="3120" y1="352" y2="384" x1="3120" />
            <wire x2="2320" y1="80" y2="112" x1="2320" />
        </branch>
        <bustap x2="3216" y1="160" y2="160" x1="3120" />
        <bustap x2="3216" y1="192" y2="192" x1="3120" />
        <bustap x2="3216" y1="256" y2="256" x1="3120" />
        <bustap x2="3216" y1="288" y2="288" x1="3120" />
        <bustap x2="3216" y1="320" y2="320" x1="3120" />
        <bustap x2="3216" y1="352" y2="352" x1="3120" />
        <bustap x2="3216" y1="224" y2="224" x1="3120" />
        <bustap x2="3216" y1="384" y2="384" x1="3120" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="3032" y="180" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2936" y="180" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="3032" y="268" height="96" />
        <text style="fontsize:40;fontname:Arial" x="3040" y="224">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2968" y="336" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2936" y="268" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2968" y="180" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2940" y="312">e</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2992" y="352">d</text>
        <text style="fontsize:40;fontname:Arial" x="2944" y="232">f</text>
        <text style="fontsize:40;fontname:Arial" x="3040" y="312">c</text>
        <text style="fontsize:28;fontname:Arial" x="2972" y="384">AN0</text>
        <text style="fontsize:40;fontname:Arial" x="2996" y="192">a</text>
        <line x2="2928" y1="176" y2="400" x1="2928" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="3088" cy="348" />
        <text style="fontsize:28;fontname:Arial" x="3072" y="348">dp</text>
        <rect width="724" x="2384" y="176" height="224" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2852" y="180" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2756" y="180" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2852" y="268" height="96" />
        <text style="fontsize:40;fontname:Arial" x="2860" y="224">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2788" y="336" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2756" y="268" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2788" y="180" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2760" y="312">e</text>
        <text style="fontsize:40;fontname:Arial" x="2764" y="232">f</text>
        <text style="fontsize:40;fontname:Arial" x="2860" y="312">c</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="2908" cy="352" />
        <text style="fontsize:28;fontname:Arial" x="2892" y="352">dp</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2812" y="352">d</text>
        <text style="fontsize:28;fontname:Arial" x="2792" y="384">AN1</text>
        <text style="fontsize:40;fontname:Arial" x="2808" y="192">a</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2788" y="252" height="32" />
        <text style="fontsize:40;fontname:Arial" x="2812" y="264">g</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2968" y="252" height="32" />
        <text style="fontsize:40;fontname:Arial" x="2992" y="264">g</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2676" y="180" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2580" y="180" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2676" y="268" height="96" />
        <text style="fontsize:40;fontname:Arial" x="2684" y="224">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2612" y="336" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2580" y="268" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2612" y="180" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2584" y="312">e</text>
        <text style="fontsize:40;fontname:Arial" x="2588" y="232">f</text>
        <text style="fontsize:40;fontname:Arial" x="2684" y="312">c</text>
        <text style="fontsize:40;fontname:Arial" x="2628" y="192">a</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2632" y="352">d</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2612" y="252" height="32" />
        <text style="fontsize:40;fontname:Arial" x="2636" y="264">g</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="2728" cy="348" />
        <text style="fontsize:28;fontname:Arial" x="2712" y="348">dp</text>
        <line x2="2572" y1="400" y2="176" x1="2572" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2500" y="180" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2404" y="180" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2500" y="268" height="96" />
        <text style="fontsize:40;fontname:Arial" x="2508" y="224">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2436" y="336" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2404" y="268" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2436" y="180" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2408" y="312">e</text>
        <text style="fontsize:40;fontname:Arial" x="2412" y="232">f</text>
        <text style="fontsize:40;fontname:Arial" x="2508" y="312">c</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2436" y="252" height="32" />
        <text style="fontsize:40;fontname:Arial" x="2460" y="264">g</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="2552" cy="348" />
        <text style="fontsize:28;fontname:Arial" x="2536" y="348">dp</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2456" y="352">d</text>
        <text style="fontsize:40;fontname:Arial" x="2456" y="192">a</text>
        <text style="fontsize:28;fontname:Arial" x="2440" y="384">AN3</text>
        <text style="fontsize:28;fontname:Arial" x="2616" y="384">AN2</text>
        <text style="alignment:CENTER;fontsize:40;fontname:Times New Roman;textcolor:rgb(0,0,255)" x="2724" y="140">Four-Digit, Seven-Segment LED Display</text>
        <line x2="2748" y1="400" y2="176" x1="2748" />
        <branch name="SEGMENT(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3232" y="384" type="branch" />
            <wire x2="3232" y1="384" y2="384" x1="3216" />
            <wire x2="3248" y1="384" y2="384" x1="3232" />
        </branch>
        <branch name="SEGMENT(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3232" y="352" type="branch" />
            <wire x2="3232" y1="352" y2="352" x1="3216" />
            <wire x2="3248" y1="352" y2="352" x1="3232" />
        </branch>
        <branch name="SEGMENT(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3232" y="320" type="branch" />
            <wire x2="3232" y1="320" y2="320" x1="3216" />
            <wire x2="3248" y1="320" y2="320" x1="3232" />
        </branch>
        <branch name="SEGMENT(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3232" y="288" type="branch" />
            <wire x2="3232" y1="288" y2="288" x1="3216" />
            <wire x2="3248" y1="288" y2="288" x1="3232" />
        </branch>
        <branch name="SEGMENT(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3232" y="256" type="branch" />
            <wire x2="3232" y1="256" y2="256" x1="3216" />
            <wire x2="3248" y1="256" y2="256" x1="3232" />
        </branch>
        <branch name="SEGMENT(4)">
            <attrtext style="alignment:HARD-BCENTER" attrname="Name" x="3232" y="224" type="branch" />
            <wire x2="3232" y1="224" y2="224" x1="3216" />
            <wire x2="3248" y1="224" y2="224" x1="3232" />
        </branch>
        <branch name="SEGMENT(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="Name" x="3232" y="192" type="branch" />
            <wire x2="3232" y1="192" y2="192" x1="3216" />
            <wire x2="3248" y1="192" y2="192" x1="3232" />
        </branch>
        <branch name="SEGMENT(6)">
            <attrtext style="alignment:HARD-BCENTER" attrname="Name" x="3232" y="160" type="branch" />
            <wire x2="3232" y1="160" y2="160" x1="3216" />
            <wire x2="3248" y1="160" y2="160" x1="3232" />
        </branch>
        <rect style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" width="1036" x="2368" y="112" height="320" />
        <iomarker fontsize="16" x="3248" y="160" name="SEGMENT(6)" orien="R0" />
        <iomarker fontsize="16" x="3248" y="192" name="SEGMENT(5)" orien="R0" />
        <iomarker fontsize="16" x="3248" y="224" name="SEGMENT(4)" orien="R0" />
        <iomarker fontsize="16" x="3248" y="256" name="SEGMENT(3)" orien="R0" />
        <iomarker fontsize="16" x="3248" y="288" name="SEGMENT(2)" orien="R0" />
        <iomarker fontsize="16" x="3248" y="320" name="SEGMENT(1)" orien="R0" />
        <iomarker fontsize="16" x="3248" y="352" name="SEGMENT(0)" orien="R0" />
        <iomarker fontsize="16" x="3248" y="384" name="SEGMENT(7)" orien="R0" />
        <instance x="1808" y="416" name="U6" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="96" y="-320" type="instance" />
        </instance>
        <branch name="AN(3:0)">
            <wire x2="2288" y1="352" y2="352" x1="2272" />
            <wire x2="2288" y1="352" y2="464" x1="2288" />
            <wire x2="3248" y1="464" y2="464" x1="2288" />
        </branch>
        <branch name="XLXN_357(3:0)">
            <wire x2="2320" y1="256" y2="256" x1="2272" />
            <wire x2="2320" y1="256" y2="560" x1="2320" />
            <wire x2="3344" y1="560" y2="560" x1="2320" />
            <wire x2="3344" y1="560" y2="880" x1="3344" />
            <wire x2="3344" y1="880" y2="880" x1="3312" />
        </branch>
        <iomarker fontsize="28" x="3248" y="464" name="AN(3:0)" orien="R0" />
        <branch name="Disp_num(31:0)">
            <wire x2="1808" y1="208" y2="208" x1="1792" />
            <wire x2="1792" y1="208" y2="416" x1="1792" />
            <wire x2="3472" y1="416" y2="416" x1="1792" />
            <wire x2="3472" y1="416" y2="784" x1="3472" />
            <wire x2="3472" y1="784" y2="784" x1="3312" />
        </branch>
        <instance x="960" y="352" name="U9" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="112" y="-160" type="instance" />
        </instance>
        <bustap x2="1664" y1="144" y2="144" x1="1568" />
        <branch name="SW_OK(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="272" type="branch" />
            <wire x2="1648" y1="272" y2="272" x1="1600" />
            <wire x2="1808" y1="272" y2="272" x1="1648" />
        </branch>
        <bustap x2="1600" y1="272" y2="272" x1="1504" />
        <branch name="clkdiv(19:18)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="352" type="branch" />
            <wire x2="1680" y1="352" y2="352" x1="1664" />
            <wire x2="1696" y1="352" y2="352" x1="1680" />
            <wire x2="1696" y1="336" y2="352" x1="1696" />
            <wire x2="1808" y1="336" y2="336" x1="1696" />
        </branch>
        <bustap x2="1664" y1="352" y2="352" x1="1568" />
        <bustap x2="1552" y1="192" y2="192" x1="1456" />
        <bustap x2="1408" y1="384" y2="384" x1="1504" />
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1344" y="384" type="branch" />
            <wire x2="1344" y1="384" y2="384" x1="976" />
            <wire x2="1408" y1="384" y2="384" x1="1344" />
            <wire x2="976" y1="384" y2="576" x1="976" />
            <wire x2="992" y1="576" y2="576" x1="976" />
        </branch>
        <instance x="992" y="608" name="U8" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="112" y="-160" type="instance" />
        </instance>
        <branch name="button_out(3)">
            <wire x2="880" y1="656" y2="656" x1="608" />
            <wire x2="1728" y1="656" y2="656" x1="880" />
            <wire x2="1728" y1="656" y2="864" x1="1728" />
            <wire x2="1760" y1="864" y2="864" x1="1728" />
            <wire x2="608" y1="656" y2="1024" x1="608" />
            <wire x2="640" y1="1024" y2="1024" x1="608" />
            <wire x2="880" y1="512" y2="656" x1="880" />
            <wire x2="992" y1="512" y2="512" x1="880" />
            <wire x2="1728" y1="864" y2="864" x1="1424" />
            <wire x2="1424" y1="864" y2="1984" x1="1424" />
            <wire x2="1424" y1="1984" y2="2544" x1="1424" />
            <wire x2="2608" y1="2544" y2="2544" x1="1424" />
            <wire x2="1776" y1="1984" y2="1984" x1="1424" />
            <wire x2="1728" y1="192" y2="192" x1="1552" />
            <wire x2="1728" y1="192" y2="528" x1="1728" />
            <wire x2="1728" y1="528" y2="656" x1="1728" />
            <wire x2="2800" y1="528" y2="528" x1="1728" />
            <wire x2="2800" y1="528" y2="768" x1="2800" />
            <wire x2="2864" y1="768" y2="768" x1="2800" />
            <wire x2="2720" y1="1936" y2="1936" x1="2608" />
            <wire x2="2608" y1="1936" y2="2544" x1="2608" />
        </branch>
        <iomarker fontsize="28" x="192" y="560" name="clk_50mhz" orien="R180" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="100" y="248" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="104" y="256" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="180" y="248" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="260" y="248" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="264" y="256" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="340" y="248" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="420" y="248" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="424" y="256" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="500" y="248" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="504" y="256" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="580" y="248" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="584" y="256" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="660" y="248" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="344" y="304" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="664" y="308" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="184" y="308" height="44" />
        <text style="fontsize:28;fontname:Arial" x="652" y="392">SW0</text>
        <text style="fontsize:28;fontname:Arial" x="572" y="392">SW1</text>
        <text style="fontsize:28;fontname:Arial" x="492" y="392">SW2</text>
        <text style="fontsize:28;fontname:Arial" x="412" y="392">SW3</text>
        <text style="fontsize:28;fontname:Arial" x="332" y="392">SW4</text>
        <text style="fontsize:28;fontname:Arial" x="252" y="392">SW5</text>
        <text style="fontsize:28;fontname:Arial" x="172" y="392">SW6</text>
        <text style="fontsize:28;fontname:Arial" x="92" y="392">SW7</text>
        <branch name="clkdiv(31:0)">
            <wire x2="1568" y1="464" y2="464" x1="1376" />
            <wire x2="1568" y1="464" y2="2048" x1="1568" />
            <wire x2="1568" y1="2048" y2="2144" x1="1568" />
            <wire x2="1568" y1="144" y2="352" x1="1568" />
            <wire x2="1568" y1="352" y2="464" x1="1568" />
        </branch>
        <instance x="1760" y="1600" name="U4" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="208" y="-752" type="instance" />
        </instance>
        <instance x="720" y="1488" name="U1" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="144" y="-480" type="instance" />
        </instance>
        <instance x="592" y="2208" name="U3" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="256" y="108" type="instance" />
        </instance>
        <branch name="clka">
            <wire x2="464" y1="2096" y2="2096" x1="432" />
            <wire x2="576" y1="2096" y2="2096" x1="464" />
            <wire x2="464" y1="2096" y2="2480" x1="464" />
            <wire x2="592" y1="2480" y2="2480" x1="464" />
        </branch>
        <instance x="576" y="1824" name="U2" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="256" y="120" type="instance" />
        </instance>
        <branch name="pc(11:2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="432" y="1904" type="branch" />
            <wire x2="432" y1="1904" y2="1904" x1="352" />
            <wire x2="576" y1="1904" y2="1904" x1="432" />
        </branch>
        <branch name="rom_dout(31:0)">
            <wire x2="464" y1="752" y2="1104" x1="464" />
            <wire x2="640" y1="1104" y2="1104" x1="464" />
            <wire x2="464" y1="1104" y2="1616" x1="464" />
            <wire x2="1152" y1="1616" y2="1616" x1="464" />
            <wire x2="1152" y1="1616" y2="1904" x1="1152" />
            <wire x2="2576" y1="752" y2="752" x1="464" />
            <wire x2="2576" y1="752" y2="1296" x1="2576" />
            <wire x2="2864" y1="1296" y2="1296" x1="2576" />
        </branch>
        <branch name="counter0_out">
            <wire x2="640" y1="1200" y2="1200" x1="576" />
            <wire x2="576" y1="1200" y2="1552" x1="576" />
            <wire x2="1632" y1="1552" y2="1552" x1="576" />
            <wire x2="1632" y1="1552" y2="1840" x1="1632" />
            <wire x2="2288" y1="1840" y2="1840" x1="1632" />
            <wire x2="2288" y1="1840" y2="1920" x1="2288" />
            <wire x2="1760" y1="992" y2="992" x1="1632" />
            <wire x2="1632" y1="992" y2="1552" x1="1632" />
        </branch>
        <branch name="counter1_out">
            <wire x2="1760" y1="1056" y2="1056" x1="1664" />
            <wire x2="1664" y1="1056" y2="1824" x1="1664" />
            <wire x2="2304" y1="1824" y2="1824" x1="1664" />
            <wire x2="2304" y1="1824" y2="2064" x1="2304" />
            <wire x2="2304" y1="2064" y2="2064" x1="2288" />
        </branch>
        <branch name="counter2_out">
            <wire x2="1760" y1="1120" y2="1120" x1="1696" />
            <wire x2="1696" y1="1120" y2="1808" x1="1696" />
            <wire x2="2320" y1="1808" y2="1808" x1="1696" />
            <wire x2="2320" y1="1808" y2="2208" x1="2320" />
            <wire x2="2320" y1="2208" y2="2208" x1="2288" />
        </branch>
        <branch name="addra(9:0)">
            <wire x2="528" y1="1776" y2="2288" x1="528" />
            <wire x2="592" y1="2288" y2="2288" x1="528" />
            <wire x2="2352" y1="1776" y2="1776" x1="528" />
            <wire x2="2352" y1="1504" y2="1504" x1="2320" />
            <wire x2="2352" y1="1504" y2="1776" x1="2352" />
        </branch>
        <branch name="ram_din(31:0)">
            <wire x2="592" y1="2432" y2="2432" x1="560" />
            <wire x2="560" y1="2432" y2="2576" x1="560" />
            <wire x2="2384" y1="2576" y2="2576" x1="560" />
            <wire x2="2384" y1="1440" y2="1440" x1="2320" />
            <wire x2="2384" y1="1440" y2="2576" x1="2384" />
        </branch>
        <branch name="clk_50mhz">
            <wire x2="208" y1="560" y2="560" x1="192" />
            <wire x2="800" y1="560" y2="560" x1="208" />
            <wire x2="208" y1="560" y2="800" x1="208" />
            <wire x2="208" y1="800" y2="2096" x1="208" />
            <wire x2="1760" y1="800" y2="800" x1="208" />
            <wire x2="960" y1="192" y2="192" x1="800" />
            <wire x2="800" y1="192" y2="448" x1="800" />
            <wire x2="992" y1="448" y2="448" x1="800" />
            <wire x2="800" y1="448" y2="560" x1="800" />
        </branch>
        <instance x="208" y="2128" name="XLXI_4" orien="R0" />
        <bustap x2="352" y1="1904" y2="1904" x1="256" />
        <branch name="pc(31:0)">
            <wire x2="1216" y1="688" y2="688" x1="256" />
            <wire x2="1216" y1="688" y2="1104" x1="1216" />
            <wire x2="2640" y1="688" y2="688" x1="1216" />
            <wire x2="2640" y1="688" y2="1552" x1="2640" />
            <wire x2="2864" y1="1552" y2="1552" x1="2640" />
            <wire x2="256" y1="688" y2="1904" x1="256" />
            <wire x2="1216" y1="1104" y2="1104" x1="1152" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="1760" y1="1376" y2="1376" x1="1152" />
        </branch>
        <branch name="mem_w">
            <wire x2="1376" y1="1024" y2="1024" x1="1152" />
            <wire x2="1376" y1="928" y2="1024" x1="1376" />
            <wire x2="1760" y1="928" y2="928" x1="1376" />
        </branch>
        <branch name="ram_data(31:0)">
            <wire x2="1280" y1="2352" y2="2352" x1="1168" />
            <wire x2="1760" y1="1440" y2="1440" x1="1280" />
            <wire x2="1280" y1="1440" y2="2352" x1="1280" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="640" y1="1376" y2="1376" x1="624" />
            <wire x2="624" y1="1376" y2="1712" x1="624" />
            <wire x2="2416" y1="1712" y2="1712" x1="624" />
            <wire x2="2416" y1="1168" y2="1168" x1="2320" />
            <wire x2="2416" y1="1168" y2="1488" x1="2416" />
            <wire x2="2416" y1="1488" y2="1712" x1="2416" />
            <wire x2="2864" y1="1488" y2="1488" x1="2416" />
        </branch>
        <branch name="counter_we">
            <wire x2="1776" y1="2240" y2="2240" x1="1680" />
            <wire x2="1680" y1="2240" y2="2512" x1="1680" />
            <wire x2="2512" y1="2512" y2="2512" x1="1680" />
            <wire x2="2512" y1="1088" y2="1088" x1="2320" />
            <wire x2="2512" y1="1088" y2="2512" x1="2512" />
        </branch>
        <instance x="1920" y="608" name="XLXI_7" orien="R0" />
        <branch name="XLXN_442">
            <wire x2="1776" y1="1872" y2="1920" x1="1776" />
            <wire x2="2720" y1="1872" y2="1872" x1="1776" />
            <wire x2="2720" y1="576" y2="576" x1="2144" />
            <wire x2="2720" y1="576" y2="720" x1="2720" />
            <wire x2="2720" y1="720" y2="1872" x1="2720" />
            <wire x2="2864" y1="720" y2="720" x1="2720" />
        </branch>
        <bustap x2="2784" y1="912" y2="912" x1="2688" />
        <branch name="SW_OK(7:0)">
            <wire x2="1504" y1="320" y2="320" x1="1392" />
            <wire x2="1504" y1="320" y2="384" x1="1504" />
            <wire x2="1504" y1="384" y2="624" x1="1504" />
            <wire x2="1504" y1="624" y2="1248" x1="1504" />
            <wire x2="1760" y1="1248" y2="1248" x1="1504" />
            <wire x2="2688" y1="624" y2="624" x1="1504" />
            <wire x2="2688" y1="624" y2="912" x1="2688" />
            <wire x2="1504" y1="272" y2="320" x1="1504" />
        </branch>
        <instance x="1776" y="2400" name="U10" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial" attrname="InstName" x="160" y="-464" type="instance" />
        </instance>
        <branch name="counter_ch(1:0)">
            <wire x2="1776" y1="2368" y2="2368" x1="1744" />
            <wire x2="1744" y1="2368" y2="2416" x1="1744" />
            <wire x2="2448" y1="2416" y2="2416" x1="1744" />
            <wire x2="2448" y1="1824" y2="2416" x1="2448" />
            <wire x2="3248" y1="1824" y2="1824" x1="2448" />
            <wire x2="3248" y1="1824" y2="1872" x1="3248" />
            <wire x2="3248" y1="1872" y2="1872" x1="3232" />
        </branch>
        <bustap x2="1664" y1="2144" y2="2144" x1="1568" />
        <branch name="clkdiv(10)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="2144" type="branch" />
            <wire x2="1680" y1="2144" y2="2144" x1="1664" />
            <wire x2="1712" y1="2144" y2="2144" x1="1680" />
            <wire x2="1712" y1="2144" y2="2176" x1="1712" />
            <wire x2="1776" y1="2176" y2="2176" x1="1712" />
            <wire x2="1712" y1="2112" y2="2144" x1="1712" />
            <wire x2="1776" y1="2112" y2="2112" x1="1712" />
        </branch>
        <bustap x2="1664" y1="2048" y2="2048" x1="1568" />
        <branch name="clkdiv(7)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="2048" type="branch" />
            <wire x2="1680" y1="2048" y2="2048" x1="1664" />
            <wire x2="1776" y1="2048" y2="2048" x1="1680" />
        </branch>
        <instance x="3344" y="1376" name="XST_GND" orien="R0" />
        <branch name="counter_out(31:0)">
            <wire x2="1760" y1="1568" y2="1568" x1="1744" />
            <wire x2="1744" y1="1568" y2="1616" x1="1744" />
            <wire x2="2448" y1="1616" y2="1616" x1="1744" />
            <wire x2="2448" y1="1616" y2="1776" x1="2448" />
            <wire x2="2416" y1="2352" y2="2352" x1="2288" />
            <wire x2="2416" y1="1776" y2="2352" x1="2416" />
            <wire x2="2448" y1="1776" y2="1776" x1="2416" />
            <wire x2="2448" y1="1232" y2="1616" x1="2448" />
            <wire x2="2864" y1="1232" y2="1232" x1="2448" />
        </branch>
        <branch name="N0,N0,pc(31:2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3408" y="1014" type="branch" />
            <wire x2="3408" y1="672" y2="672" x1="2848" />
            <wire x2="3408" y1="672" y2="1120" x1="3408" />
            <wire x2="2848" y1="672" y2="1168" x1="2848" />
            <wire x2="2864" y1="1168" y2="1168" x1="2848" />
        </branch>
        <branch name="GPIOe0000000_we">
            <wire x2="2480" y1="992" y2="992" x1="2320" />
            <wire x2="2480" y1="816" y2="992" x1="2480" />
            <wire x2="2864" y1="816" y2="816" x1="2480" />
        </branch>
        <instance x="2864" y="1584" name="U5" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="144" y="-848" type="instance" />
        </instance>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(3:0),blink(3:0)">
            <wire x2="2864" y1="1040" y2="1040" x1="2800" />
        </branch>
        <branch name="V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5">
            <wire x2="2864" y1="976" y2="976" x1="2768" />
        </branch>
        <bustap x2="3408" y1="1120" y2="1216" x1="3408" />
        <branch name="N0">
            <wire x2="3408" y1="1216" y2="1248" x1="3408" />
        </branch>
        <instance x="2720" y="2096" name="U7" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="144" y="-224" type="instance" />
        </instance>
        <branch name="counter_val(31:0)">
            <wire x2="1776" y1="2304" y2="2304" x1="1712" />
            <wire x2="1712" y1="2304" y2="2464" x1="1712" />
            <wire x2="2480" y1="2464" y2="2464" x1="1712" />
            <wire x2="2480" y1="1328" y2="1328" x1="2320" />
            <wire x2="2480" y1="1328" y2="2064" x1="2480" />
            <wire x2="2480" y1="2064" y2="2464" x1="2480" />
            <wire x2="2720" y1="2064" y2="2064" x1="2480" />
            <wire x2="2688" y1="1136" y2="1136" x1="2480" />
            <wire x2="2480" y1="1136" y2="1328" x1="2480" />
            <wire x2="2864" y1="1104" y2="1104" x1="2688" />
            <wire x2="2688" y1="1104" y2="1136" x1="2688" />
        </branch>
        <branch name="Addr_out(31:0)">
            <wire x2="1248" y1="1312" y2="1312" x1="1152" />
            <wire x2="1504" y1="1312" y2="1312" x1="1248" />
            <wire x2="1760" y1="1312" y2="1312" x1="1504" />
            <wire x2="1504" y1="1312" y2="1680" x1="1504" />
            <wire x2="2592" y1="1680" y2="1680" x1="1504" />
            <wire x2="2608" y1="720" y2="720" x1="1248" />
            <wire x2="2608" y1="720" y2="1360" x1="2608" />
            <wire x2="2864" y1="1360" y2="1360" x1="2608" />
            <wire x2="1248" y1="720" y2="1312" x1="1248" />
            <wire x2="2864" y1="1424" y2="1424" x1="2592" />
            <wire x2="2592" y1="1424" y2="1680" x1="2592" />
        </branch>
        <branch name="XLXN_485">
            <wire x2="2544" y1="896" y2="896" x1="2320" />
            <wire x2="2544" y1="896" y2="2000" x1="2544" />
            <wire x2="2720" y1="2000" y2="2000" x1="2544" />
        </branch>
        <branch name="LED(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1504" type="branch" />
            <wire x2="1760" y1="1504" y2="1504" x1="1728" />
            <wire x2="1728" y1="1504" y2="1648" x1="1728" />
            <wire x2="3296" y1="1648" y2="1648" x1="1728" />
            <wire x2="3296" y1="1648" y2="1968" x1="3296" />
            <wire x2="3296" y1="1968" y2="2496" x1="3296" />
            <wire x2="3360" y1="2496" y2="2496" x1="3296" />
            <wire x2="3296" y1="1968" y2="1968" x1="3232" />
        </branch>
        <iomarker fontsize="28" x="3360" y="2496" name="LED(7:0)" orien="R0" />
        <rect style="linewidth:W;linecolor:rgb(0,0,255);linestyle:Dash" width="112" x="3376" y="1648" height="784" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3432" cy="1800" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3432" cy="1896" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3432" cy="1992" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3432" cy="2088" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3432" cy="2184" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3432" cy="1704" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3432" cy="2376" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3432" cy="2280" />
        <branch name="V5">
            <wire x2="848" y1="112" y2="128" x1="848" />
        </branch>
        <text style="fontsize:38;fontname:Arial;textcolor:rgb(255,0,0)" x="832" y="152">V5</text>
        <text style="fontsize:58;fontname:Arial" x="3376" y="1612">LED </text>
        <branch name="button_out(3:0)">
            <wire x2="1456" y1="192" y2="192" x1="1392" />
            <wire x2="1456" y1="192" y2="1184" x1="1456" />
            <wire x2="1760" y1="1184" y2="1184" x1="1456" />
        </branch>
        <branch name="SW_OK(7:5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2800" y="912" type="branch" />
            <wire x2="2800" y1="912" y2="912" x1="2784" />
            <wire x2="2864" y1="912" y2="912" x1="2800" />
        </branch>
    </sheet>
</drawing>