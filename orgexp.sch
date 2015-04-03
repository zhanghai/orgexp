<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <attr value="PartialBusOnly|BaseDashIndex" name="RenameBusIO" />
    <netlist>
        <signal name="SEGMENT(7:0)" />
        <signal name="SEGMENT(7)" />
        <signal name="SEGMENT(6)" />
        <signal name="SEGMENT(5)" />
        <signal name="SEGMENT(4)" />
        <signal name="SEGMENT(3)" />
        <signal name="SEGMENT(2)" />
        <signal name="SEGMENT(1)" />
        <signal name="SEGMENT(0)" />
        <signal name="AN(3:0)" />
        <signal name="clkdiv(19:18)" />
        <signal name="clk_50mhz" />
        <signal name="BTN(3:0)" />
        <signal name="clkdiv(31:0)" />
        <signal name="clkdiv(24)" />
        <signal name="SW_OK(7:0)" />
        <signal name="XLXN_128(3:0)" />
        <signal name="XLXN_129(3:0)" />
        <signal name="N0" />
        <signal name="SW(7:0)" />
        <signal name="LED(7:0)" />
        <signal name="SW_OK(1:0)" />
        <signal name="V5" />
        <signal name="push_out(3:0)" />
        <signal name="ALU_out(31:0)" />
        <signal name="CPU_CLK" />
        <signal name="SW_OK(2)" />
        <signal name="V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5" />
        <signal name="push_out(0)" />
        <signal name="XLXN_239(31:0)" />
        <signal name="Ai(31:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,SW(1),CPU_CLK,Cout,Zero,clkdiv(27:24)" />
        <signal name="SW(7:5),SW(1:0)" />
        <signal name="push_out(2:0)" />
        <signal name="SW(4:2)" />
        <signal name="blink(3:0)" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(3:0),blink(3:0)" />
        <signal name="Cout" />
        <signal name="XLXN_279(31:0)" />
        <signal name="ALU_out(15:0)" />
        <signal name="So(31:0)" />
        <signal name="Zero" />
        <signal name="SW(7:5)" />
        <signal name="XLXN_283(31:0)" />
        <signal name="XLXN_286(31:0)" />
        <signal name="N0,N0,N0,N0,N0,SW(3),clkdiv(27:24)" />
        <signal name="XLXN_292" />
        <signal name="SW_OK(4)" />
        <signal name="Disp_num(31:0)" />
        <port polarity="Output" name="SEGMENT(7)" />
        <port polarity="Output" name="SEGMENT(6)" />
        <port polarity="Output" name="SEGMENT(5)" />
        <port polarity="Output" name="SEGMENT(4)" />
        <port polarity="Output" name="SEGMENT(3)" />
        <port polarity="Output" name="SEGMENT(2)" />
        <port polarity="Output" name="SEGMENT(1)" />
        <port polarity="Output" name="SEGMENT(0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Input" name="clk_50mhz" />
        <port polarity="Input" name="BTN(3:0)" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Output" name="LED(7:0)" />
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
        <blockdef name="Input_2_32bit">
            <timestamp>2015-3-13T8:22:6</timestamp>
            <rect style="fillcolor:rgb(170,255,255);fillstyle:Solid" width="256" x="64" y="-272" height="272" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-92" height="24" />
            <line x2="384" y1="-80" y2="-80" x1="320" />
            <rect width="64" x="0" y="-76" height="24" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <rect width="64" x="320" y="-252" height="24" />
            <line x2="384" y1="-240" y2="-240" x1="320" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="320" y="-188" height="24" />
            <line x2="384" y1="-176" y2="-176" x1="320" />
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
        <blockdef name="LED_DEV">
            <timestamp>2014-11-8T13:40:1</timestamp>
            <rect style="fillcolor:rgb(170,255,255);fillstyle:Solid" width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="384" y="-92" height="24" />
            <line x2="448" y1="-80" y2="-80" x1="384" />
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
        <blockdef name="ALU_LCDF">
            <timestamp>2015-3-12T5:53:0</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(255,170,255);fillstyle:Solid" width="304" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="0" y="-188" height="24" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <rect width="64" x="0" y="-124" height="24" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="368" y="-172" height="24" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
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
        <blockdef name="Ext_32">
            <timestamp>2015-3-12T5:53:0</timestamp>
            <circle style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" r="69" cx="185" cy="-33" />
            <line x2="124" y1="0" y2="0" style="linewidth:W" x1="96" />
            <line x2="272" y1="-64" y2="-64" style="linewidth:W" x1="248" />
            <rect style="linecolor:rgb(255,255,255)" width="128" x="120" y="-80" height="88" />
        </blockdef>
        <blockdef name="SignalExt_32">
            <timestamp>2015-3-12T5:53:0</timestamp>
            <line x2="76" y1="-32" y2="-32" x1="64" />
            <line x2="208" y1="-32" y2="-32" style="linewidth:W" x1="196" />
            <rect width="120" x="76" y="-52" height="40" />
        </blockdef>
        <blockdef name="or_bit_32">
            <timestamp>2015-3-12T6:11:0</timestamp>
            <rect width="220" x="64" y="-104" height="112" />
            <line x2="32" y1="-48" y2="-48" style="linewidth:W" x1="64" />
            <arc ex="260" ey="-48" sx="180" sy="0" r="88" cx="184" cy="-88" />
            <line x2="116" y1="0" y2="0" x1="180" />
            <line x2="116" y1="-96" y2="-96" x1="180" />
            <arc ex="116" ey="-96" sx="116" sy="0" r="56" cx="84" cy="-48" />
            <arc ex="180" ey="-96" sx="260" sy="-48" r="88" cx="184" cy="-8" />
            <line x2="120" y1="-96" y2="-96" x1="184" />
            <line x2="88" y1="-80" y2="-80" x1="128" />
            <line x2="92" y1="-16" y2="-16" x1="132" />
            <line x2="304" y1="-48" y2="-48" x1="284" />
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
        <block symbolname="Anti_jitter" name="U9">
            <blockpin signalname="clk_50mhz" name="clk" />
            <blockpin signalname="SW(7:0)" name="SW(7:0)" />
            <blockpin signalname="push_out(3:0)" name="button_out(3:0)" />
            <blockpin signalname="SW_OK(7:0)" name="SW_OK(7:0)" />
            <blockpin name="button_pulse(3:0)" />
            <blockpin signalname="BTN(3:0)" name="button(3:0)" />
        </block>
        <block symbolname="seven_seg_Dev_IO" name="U5">
            <blockpin signalname="clk_50mhz" name="clk" />
            <blockpin signalname="SW(7:5)" name="Test(2:0)" />
            <blockpin signalname="V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5" name="point_in(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(3:0),blink(3:0)" name="blink_in(31:0)" />
            <blockpin signalname="Ai(31:0)" name="disp_cpudata(31:0)" />
            <blockpin signalname="XLXN_239(31:0)" name="Test_data1(31:0)" />
            <blockpin signalname="ALU_out(31:0)" name="Test_data2(31:0)" />
            <blockpin signalname="XLXN_279(31:0)" name="Test_data3(31:0)" />
            <blockpin signalname="So(31:0)" name="Test_data4(31:0)" />
            <blockpin signalname="clkdiv(31:0)" name="Test_data5(31:0)" />
            <blockpin signalname="XLXN_283(31:0)" name="Test_data6(31:0)" />
            <blockpin signalname="XLXN_286(31:0)" name="Test_data7(31:0)" />
            <blockpin signalname="XLXN_128(3:0)" name="blink_out(3:0)" />
            <blockpin signalname="XLXN_129(3:0)" name="point_out(3:0)" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="V5" name="GPIOe0000000_we" />
            <blockpin signalname="Disp_num(31:0)" name="Disp_num(31:0)" />
        </block>
        <block symbolname="seven_seg_dev" name="U6">
            <blockpin signalname="XLXN_129(3:0)" name="pointing(3:0)" />
            <blockpin signalname="XLXN_128(3:0)" name="blinking(3:0)" />
            <blockpin signalname="SW_OK(1:0)" name="SW(1:0)" />
            <blockpin signalname="clkdiv(19:18)" name="Scanning(1:0)" />
            <blockpin signalname="Disp_num(31:0)" name="disp_num(31:0)" />
            <blockpin signalname="clkdiv(24)" name="flash_clk" />
            <blockpin signalname="SEGMENT(7:0)" name="SEGMENT(7:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
        </block>
        <block symbolname="vcc" name="VC">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="clk_div" name="U8">
            <blockpin signalname="clk_50mhz" name="clk" />
            <blockpin signalname="N0" name="rst" />
            <blockpin signalname="SW_OK(2)" name="SW2" />
            <blockpin signalname="clkdiv(31:0)" name="clkdiv(31:0)" />
            <blockpin signalname="CPU_CLK" name="Clk_CPU" />
        </block>
        <block symbolname="LED_DEV" name="M6">
            <blockpin name="clk" />
            <blockpin signalname="LED(7:0)" name="LED(7:0)" />
            <blockpin name="rst" />
            <blockpin name="EN" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,SW(1),CPU_CLK,Cout,Zero,clkdiv(27:24)" name="Data_in(31:0)" />
            <blockpin name="Other_out(31:8)" />
        </block>
        <block symbolname="gnd" name="XST_GND">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="Input_2_32bit" name="M4">
            <blockpin signalname="blink(3:0)" name="blink(3:0)" />
            <blockpin name="state(1:0)" />
            <blockpin signalname="SW(7:5),SW(1:0)" name="disp_ctr(4:0)" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="push_out(2:0)" name="push_out(2:0)" />
            <blockpin signalname="XLXN_239(31:0)" name="Bi(31:0)" />
        </block>
        <block symbolname="ALU_LCDF" name="M8">
            <blockpin signalname="push_out(0)" name="C" />
            <blockpin signalname="SW(4:2)" name="ALU_Ctr(2:0)" />
            <blockpin signalname="Ai(31:0)" name="Ai(31:0)" />
            <blockpin signalname="XLXN_239(31:0)" name="Bi(31:0)" />
            <blockpin signalname="ALU_out(31:0)" name="ALU_out(31:0)" />
            <blockpin signalname="Cout" name="Cout" />
        </block>
        <block symbolname="Ext_32" name="Ext32">
            <blockpin signalname="ALU_out(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="XLXN_279(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="SignalExt_32" name="Ext_Logic">
            <blockpin signalname="So(31:0)" name="So(31:0)" />
            <blockpin signalname="push_out(0)" name="S" />
        </block>
        <block symbolname="or_bit_32" name="Zero_Result">
            <blockpin signalname="Zero" name="o" />
            <blockpin signalname="ALU_out(31:0)" name="A(31:0)" />
        </block>
        <block symbolname="ROM_B" name="U2">
            <blockpin signalname="N0,N0,N0,N0,N0,SW(3),clkdiv(27:24)" name="addra(9:0)" />
            <blockpin signalname="XLXN_292" name="clka" />
            <blockpin signalname="XLXN_283(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="RAM_B" name="U3">
            <blockpin signalname="N0,N0,N0,N0,N0,SW(3),clkdiv(27:24)" name="addra(9:0)" />
            <blockpin signalname="XLXN_292" name="clka" />
            <blockpin signalname="SW_OK(4)" name="wea(0:0)" />
            <blockpin signalname="XLXN_283(31:0)" name="dina(31:0)" />
            <blockpin signalname="XLXN_286(31:0)" name="douta(31:0)" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="clk_50mhz" name="I" />
            <blockpin signalname="XLXN_292" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <bustap x2="3248" y1="128" y2="128" x1="3152" />
        <iomarker fontsize="16" x="3280" y="128" name="SEGMENT(6)" orien="R0" />
        <bustap x2="3248" y1="160" y2="160" x1="3152" />
        <iomarker fontsize="16" x="3280" y="160" name="SEGMENT(5)" orien="R0" />
        <bustap x2="3248" y1="224" y2="224" x1="3152" />
        <bustap x2="3248" y1="256" y2="256" x1="3152" />
        <bustap x2="3248" y1="288" y2="288" x1="3152" />
        <bustap x2="3248" y1="320" y2="320" x1="3152" />
        <iomarker fontsize="16" x="3280" y="192" name="SEGMENT(4)" orien="R0" />
        <bustap x2="3248" y1="192" y2="192" x1="3152" />
        <bustap x2="3248" y1="352" y2="352" x1="3152" />
        <branch name="SEGMENT(7:0)">
            <wire x2="2352" y1="96" y2="96" x1="2304" />
            <wire x2="2352" y1="80" y2="96" x1="2352" />
            <wire x2="3152" y1="80" y2="80" x1="2352" />
            <wire x2="3152" y1="80" y2="128" x1="3152" />
            <wire x2="3152" y1="128" y2="160" x1="3152" />
            <wire x2="3152" y1="160" y2="192" x1="3152" />
            <wire x2="3152" y1="192" y2="224" x1="3152" />
            <wire x2="3152" y1="224" y2="256" x1="3152" />
            <wire x2="3152" y1="256" y2="288" x1="3152" />
            <wire x2="3152" y1="288" y2="320" x1="3152" />
            <wire x2="3152" y1="320" y2="352" x1="3152" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2400" y1="336" y2="336" x1="2304" />
            <wire x2="2400" y1="336" y2="384" x1="2400" />
            <wire x2="3280" y1="384" y2="384" x1="2400" />
        </branch>
        <branch name="clkdiv(19:18)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1712" y="320" type="branch" />
            <wire x2="1712" y1="320" y2="320" x1="1680" />
            <wire x2="1840" y1="320" y2="320" x1="1712" />
        </branch>
        <rect style="linewidth:W;linecolor:rgb(0,0,255);linestyle:Dash" width="772" x="2744" y="2164" height="192" />
        <instance x="1008" y="304" name="U9" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="112" y="-160" type="instance" />
        </instance>
        <branch name="BTN(3:0)">
            <wire x2="784" y1="176" y2="176" x1="176" />
            <wire x2="784" y1="176" y2="224" x1="784" />
            <wire x2="1008" y1="224" y2="224" x1="784" />
        </branch>
        <instance x="1840" y="400" name="U6" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="96" y="-320" type="instance" />
        </instance>
        <bustap x2="1696" y1="128" y2="128" x1="1600" />
        <branch name="clkdiv(24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="128" type="branch" />
            <wire x2="1760" y1="128" y2="128" x1="1696" />
            <wire x2="1840" y1="128" y2="128" x1="1760" />
        </branch>
        <branch name="XLXN_128(3:0)">
            <wire x2="2320" y1="240" y2="240" x1="2304" />
            <wire x2="2320" y1="240" y2="480" x1="2320" />
            <wire x2="3456" y1="480" y2="480" x1="2320" />
            <wire x2="3456" y1="480" y2="816" x1="3456" />
            <wire x2="3456" y1="816" y2="816" x1="3408" />
        </branch>
        <branch name="XLXN_129(3:0)">
            <wire x2="2352" y1="176" y2="176" x1="2304" />
            <wire x2="2352" y1="176" y2="448" x1="2352" />
            <wire x2="3488" y1="448" y2="448" x1="2352" />
            <wire x2="3488" y1="448" y2="880" x1="3488" />
            <wire x2="3488" y1="880" y2="880" x1="3408" />
        </branch>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="3064" y="148" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2968" y="148" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="3064" y="236" height="96" />
        <text style="fontsize:40;fontname:Arial" x="3072" y="192">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="3000" y="304" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2968" y="236" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="3000" y="148" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2972" y="280">e</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="3024" y="320">d</text>
        <text style="fontsize:40;fontname:Arial" x="2976" y="200">f</text>
        <text style="fontsize:40;fontname:Arial" x="3072" y="280">c</text>
        <text style="fontsize:28;fontname:Arial" x="3004" y="352">AN0</text>
        <text style="fontsize:40;fontname:Arial" x="3028" y="160">a</text>
        <line x2="2960" y1="144" y2="368" x1="2960" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="3120" cy="316" />
        <text style="fontsize:28;fontname:Arial" x="3104" y="316">dp</text>
        <rect width="724" x="2416" y="144" height="224" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2884" y="148" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2788" y="148" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2884" y="236" height="96" />
        <text style="fontsize:40;fontname:Arial" x="2892" y="192">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2820" y="304" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2788" y="236" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2820" y="148" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2792" y="280">e</text>
        <text style="fontsize:40;fontname:Arial" x="2796" y="200">f</text>
        <text style="fontsize:40;fontname:Arial" x="2892" y="280">c</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="2940" cy="320" />
        <text style="fontsize:28;fontname:Arial" x="2924" y="320">dp</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2844" y="320">d</text>
        <text style="fontsize:28;fontname:Arial" x="2824" y="352">AN1</text>
        <text style="fontsize:40;fontname:Arial" x="2840" y="160">a</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2820" y="220" height="32" />
        <text style="fontsize:40;fontname:Arial" x="2844" y="232">g</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="3000" y="220" height="32" />
        <text style="fontsize:40;fontname:Arial" x="3024" y="232">g</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2708" y="148" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2612" y="148" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2708" y="236" height="96" />
        <text style="fontsize:40;fontname:Arial" x="2716" y="192">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2644" y="304" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2612" y="236" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2644" y="148" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2616" y="280">e</text>
        <text style="fontsize:40;fontname:Arial" x="2620" y="200">f</text>
        <text style="fontsize:40;fontname:Arial" x="2716" y="280">c</text>
        <text style="fontsize:40;fontname:Arial" x="2660" y="160">a</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2664" y="320">d</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2644" y="220" height="32" />
        <text style="fontsize:40;fontname:Arial" x="2668" y="232">g</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="2760" cy="316" />
        <text style="fontsize:28;fontname:Arial" x="2744" y="316">dp</text>
        <line x2="2604" y1="368" y2="144" x1="2604" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2532" y="148" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2436" y="148" height="88" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2532" y="236" height="96" />
        <text style="fontsize:40;fontname:Arial" x="2540" y="192">b</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2468" y="304" height="28" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="32" x="2436" y="236" height="96" />
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2468" y="148" height="28" />
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2440" y="280">e</text>
        <text style="fontsize:40;fontname:Arial" x="2444" y="200">f</text>
        <text style="fontsize:40;fontname:Arial" x="2540" y="280">c</text>
        <rect style="fillcolor:rgb(255,0,0);fillstyle:Solid" width="64" x="2468" y="220" height="32" />
        <text style="fontsize:40;fontname:Arial" x="2492" y="232">g</text>
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="16" cx="2584" cy="316" />
        <text style="fontsize:28;fontname:Arial" x="2568" y="316">dp</text>
        <text style="fontsize:40;fontname:Arial;textcolor:rgb(0,0,0)" x="2488" y="320">d</text>
        <text style="fontsize:40;fontname:Arial" x="2488" y="160">a</text>
        <text style="fontsize:28;fontname:Arial" x="2472" y="352">AN3</text>
        <text style="fontsize:28;fontname:Arial" x="2648" y="352">AN2</text>
        <text style="alignment:CENTER;fontsize:40;fontname:Times New Roman;textcolor:rgb(0,0,255)" x="2756" y="108">Four-Digit, Seven-Segment LED Display</text>
        <line x2="2780" y1="368" y2="144" x1="2780" />
        <rect style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" width="1036" x="2384" y="68" height="352" />
        <branch name="SEGMENT(7)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="LOC" x="3264" y="352" type="branch" />
            <wire x2="3264" y1="352" y2="352" x1="3248" />
            <wire x2="3280" y1="352" y2="352" x1="3264" />
        </branch>
        <branch name="SEGMENT(0)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="LOC" x="3264" y="320" type="branch" />
            <wire x2="3264" y1="320" y2="320" x1="3248" />
            <wire x2="3280" y1="320" y2="320" x1="3264" />
        </branch>
        <branch name="SEGMENT(1)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="LOC" x="3264" y="288" type="branch" />
            <wire x2="3264" y1="288" y2="288" x1="3248" />
            <wire x2="3280" y1="288" y2="288" x1="3264" />
        </branch>
        <branch name="SEGMENT(2)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="LOC" x="3264" y="256" type="branch" />
            <wire x2="3264" y1="256" y2="256" x1="3248" />
            <wire x2="3280" y1="256" y2="256" x1="3264" />
        </branch>
        <branch name="SEGMENT(3)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="LOC" x="3264" y="224" type="branch" />
            <wire x2="3264" y1="224" y2="224" x1="3248" />
            <wire x2="3280" y1="224" y2="224" x1="3264" />
        </branch>
        <branch name="SEGMENT(4)">
            <attrtext style="alignment:HARD-BCENTER" attrname="LOC" x="3264" y="192" type="branch" />
            <wire x2="3264" y1="192" y2="192" x1="3248" />
            <wire x2="3280" y1="192" y2="192" x1="3264" />
        </branch>
        <branch name="SEGMENT(5)">
            <attrtext style="alignment:SOFT-BCENTER" attrname="LOC" x="3264" y="160" type="branch" />
            <wire x2="3264" y1="160" y2="160" x1="3248" />
            <wire x2="3280" y1="160" y2="160" x1="3264" />
        </branch>
        <branch name="SEGMENT(6)">
            <attrtext style="alignment:HARD-BCENTER" attrname="LOC" x="3264" y="128" type="branch" />
            <wire x2="3264" y1="128" y2="128" x1="3248" />
            <wire x2="3280" y1="128" y2="128" x1="3264" />
        </branch>
        <iomarker fontsize="16" x="3280" y="224" name="SEGMENT(3)" orien="R0" />
        <iomarker fontsize="16" x="3280" y="256" name="SEGMENT(2)" orien="R0" />
        <iomarker fontsize="16" x="3280" y="288" name="SEGMENT(1)" orien="R0" />
        <iomarker fontsize="16" x="3280" y="320" name="SEGMENT(0)" orien="R0" />
        <iomarker fontsize="16" x="3280" y="352" name="SEGMENT(7)" orien="R0" />
        <iomarker fontsize="28" x="3280" y="384" name="AN(3:0)" orien="R0" />
        <iomarker fontsize="28" x="176" y="176" name="BTN(3:0)" orien="R180" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="45" cx="347" cy="111" />
        <circle style="fillcolor:rgb(0,0,0);fillstyle:Solid" r="18" cx="346" cy="110" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="45" cx="227" cy="111" />
        <circle style="fillcolor:rgb(0,0,0);fillstyle:Solid" r="18" cx="226" cy="110" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="45" cx="471" cy="111" />
        <circle style="fillcolor:rgb(0,0,0);fillstyle:Solid" r="18" cx="470" cy="110" />
        <circle style="fillcolor:rgb(255,0,0);fillstyle:Solid" r="45" cx="595" cy="111" />
        <circle style="fillcolor:rgb(0,0,0);fillstyle:Solid" r="18" cx="594" cy="110" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="160" y="200" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="164" y="208" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="240" y="200" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="320" y="200" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="324" y="208" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="400" y="200" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="480" y="200" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="484" y="208" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="560" y="200" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="564" y="208" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="640" y="200" height="112" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="644" y="208" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,255);fillstyle:Solid" width="44" x="720" y="200" height="112" />
        <text style="fontsize:28;fontname:Arial" x="152" y="344">SW7</text>
        <text style="fontsize:28;fontname:Arial" x="232" y="344">SW6</text>
        <text style="fontsize:28;fontname:Arial" x="312" y="344">SW5</text>
        <text style="fontsize:28;fontname:Arial" x="392" y="344">SW4</text>
        <text style="fontsize:28;fontname:Arial" x="472" y="344">SW3</text>
        <text style="fontsize:28;fontname:Arial" x="552" y="344">SW2</text>
        <text style="fontsize:28;fontname:Arial" x="632" y="344">SW1</text>
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="244" y="260" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="404" y="256" height="44" />
        <rect style="linecolor:rgb(255,0,0);fillcolor:rgb(0,0,0);fillstyle:Solid" width="36" x="724" y="260" height="44" />
        <text style="fontsize:28;fontname:Arial" x="712" y="344">SW0</text>
        <iomarker fontsize="28" x="192" y="48" name="clk_50mhz" orien="R180" />
        <iomarker fontsize="28" x="160" y="384" name="SW(7:0)" orien="R180" />
        <text style="fontsize:38;fontname:Arial" x="2240" y="516">Display BUS</text>
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3464" cy="2236" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3376" cy="2236" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3284" cy="2236" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3192" cy="2236" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3100" cy="2232" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="3004" cy="2236" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="2912" cy="2236" />
        <circle style="linecolor:rgb(0,0,255);fillcolor:rgb(255,0,0);fillstyle:Solid" r="40" cx="2812" cy="2236" />
        <iomarker fontsize="28" x="3344" y="2304" name="LED(7:0)" orien="R0" />
        <text style="fontsize:58;fontname:Arial" x="2812" y="2316">LED </text>
        <instance x="2960" y="1520" name="U5" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="144" y="-848" type="instance" />
        </instance>
        <branch name="SW_OK(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1744" y="256" type="branch" />
            <wire x2="1744" y1="272" y2="272" x1="1728" />
            <wire x2="1744" y1="256" y2="272" x1="1744" />
            <wire x2="1840" y1="256" y2="256" x1="1744" />
        </branch>
        <bustap x2="1680" y1="320" y2="320" x1="1584" />
        <bustap x2="1728" y1="272" y2="272" x1="1632" />
        <branch name="V5">
            <wire x2="832" y1="160" y2="176" x1="832" />
        </branch>
        <bustap x2="272" y1="576" y2="576" x1="176" />
        <instance x="768" y="160" name="VC" orien="R0" />
        <branch name="clkdiv(31:0)">
            <wire x2="1584" y1="400" y2="400" x1="1408" />
            <wire x2="1584" y1="400" y2="1360" x1="1584" />
            <wire x2="2960" y1="1360" y2="1360" x1="1584" />
            <wire x2="1600" y1="128" y2="128" x1="1584" />
            <wire x2="1584" y1="128" y2="320" x1="1584" />
            <wire x2="1584" y1="320" y2="400" x1="1584" />
        </branch>
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="976" y="448" type="branch" />
            <wire x2="1024" y1="448" y2="448" x1="976" />
        </branch>
        <branch name="clk_50mhz">
            <wire x2="928" y1="656" y2="656" x1="48" />
            <wire x2="2960" y1="656" y2="656" x1="928" />
            <wire x2="48" y1="656" y2="1968" x1="48" />
            <wire x2="928" y1="48" y2="48" x1="192" />
            <wire x2="928" y1="48" y2="144" x1="928" />
            <wire x2="1008" y1="144" y2="144" x1="928" />
            <wire x2="928" y1="144" y2="384" x1="928" />
            <wire x2="928" y1="384" y2="656" x1="928" />
            <wire x2="1024" y1="384" y2="384" x1="928" />
        </branch>
        <branch name="CPU_CLK">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1440" y="512" type="branch" />
            <wire x2="1440" y1="512" y2="512" x1="1408" />
            <wire x2="1456" y1="512" y2="512" x1="1440" />
        </branch>
        <instance x="1024" y="544" name="U8" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="112" y="-160" type="instance" />
        </instance>
        <branch name="SW_OK(7:0)">
            <wire x2="1456" y1="336" y2="336" x1="896" />
            <wire x2="896" y1="336" y2="512" x1="896" />
            <wire x2="1456" y1="272" y2="272" x1="1440" />
            <wire x2="1632" y1="272" y2="272" x1="1456" />
            <wire x2="1456" y1="272" y2="336" x1="1456" />
        </branch>
        <bustap x2="992" y1="512" y2="512" x1="896" />
        <branch name="SW_OK(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1008" y="512" type="branch" />
            <wire x2="1008" y1="512" y2="512" x1="992" />
            <wire x2="1024" y1="512" y2="512" x1="1008" />
        </branch>
        <branch name="V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5,V5">
            <wire x2="2960" y1="912" y2="912" x1="2528" />
        </branch>
        <branch name="XLXN_239(31:0)">
            <wire x2="960" y1="1216" y2="1216" x1="880" />
            <wire x2="1072" y1="1216" y2="1216" x1="960" />
            <wire x2="2528" y1="1056" y2="1056" x1="960" />
            <wire x2="2528" y1="1056" y2="1104" x1="2528" />
            <wire x2="2960" y1="1104" y2="1104" x1="2528" />
            <wire x2="960" y1="1056" y2="1216" x1="960" />
        </branch>
        <text style="fontsize:38;fontname:Arial;textcolor:rgb(255,0,0)" x="2560" y="1012">Ai BUS</text>
        <text style="fontsize:38;fontname:Arial;textcolor:rgb(255,0,0)" x="2556" y="948">blink BUS</text>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,SW(1),CPU_CLK,Cout,Zero,clkdiv(27:24)">
            <wire x2="2944" y1="1808" y2="1808" x1="2320" />
        </branch>
        <instance x="2944" y="1856" name="M6" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="144" y="-208" type="instance" />
        </instance>
        <text style="fontsize:38;fontname:Arial;textcolor:rgb(255,0,0)" x="2348" y="1780">LED BUS</text>
        <branch name="LED(7:0)">
            <wire x2="2960" y1="2176" y2="2304" x1="2960" />
            <wire x2="3344" y1="2304" y2="2304" x1="2960" />
            <wire x2="3488" y1="2176" y2="2176" x1="2960" />
            <wire x2="3488" y1="1632" y2="1632" x1="3392" />
            <wire x2="3488" y1="1632" y2="2176" x1="3488" />
        </branch>
        <branch name="N0">
            <wire x2="2912" y1="1872" y2="1984" x1="2912" />
        </branch>
        <instance x="2848" y="2112" name="XST_GND" orien="R0" />
        <text style="fontsize:38;fontname:Arial" x="2952" y="1884">N0</text>
        <branch name="SW(7:0)">
            <wire x2="176" y1="384" y2="384" x1="160" />
            <wire x2="784" y1="384" y2="384" x1="176" />
            <wire x2="176" y1="384" y2="576" x1="176" />
            <wire x2="176" y1="576" y2="1328" x1="176" />
            <wire x2="176" y1="1328" y2="1440" x1="176" />
            <wire x2="1008" y1="272" y2="272" x1="784" />
            <wire x2="784" y1="272" y2="384" x1="784" />
        </branch>
        <branch name="SW(7:5),SW(1:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1328" type="branch" />
            <wire x2="384" y1="1328" y2="1328" x1="272" />
            <wire x2="496" y1="1328" y2="1328" x1="384" />
        </branch>
        <branch name="push_out(2:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="400" y="1232" type="branch" />
            <wire x2="400" y1="1232" y2="1232" x1="304" />
            <wire x2="496" y1="1232" y2="1232" x1="400" />
        </branch>
        <branch name="SW(4:2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1024" y="1296" type="branch" />
            <wire x2="1024" y1="1440" y2="1440" x1="320" />
            <wire x2="1024" y1="1296" y2="1440" x1="1024" />
            <wire x2="1072" y1="1296" y2="1296" x1="1024" />
        </branch>
        <instance x="496" y="1392" name="M4" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="80" y="-208" type="instance" />
        </instance>
        <branch name="blink(3:0)">
            <wire x2="928" y1="1360" y2="1360" x1="880" />
        </branch>
        <bustap x2="320" y1="1440" y2="1440" x1="176" />
        <bustap x2="272" y1="1328" y2="1328" x1="176" />
        <bustap x2="304" y1="1232" y2="1232" x1="208" />
        <branch name="push_out(3:0)">
            <wire x2="832" y1="416" y2="416" x1="208" />
            <wire x2="208" y1="416" y2="1104" x1="208" />
            <wire x2="208" y1="1104" y2="1232" x1="208" />
            <wire x2="1504" y1="320" y2="320" x1="832" />
            <wire x2="832" y1="320" y2="416" x1="832" />
            <wire x2="1504" y1="144" y2="144" x1="1440" />
            <wire x2="1504" y1="144" y2="320" x1="1504" />
        </branch>
        <bustap x2="304" y1="1104" y2="1104" x1="208" />
        <text style="fontsize:38;fontname:Arial;textcolor:rgb(255,0,0)" x="816" y="200">V5</text>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,blink(3:0),blink(3:0)">
            <wire x2="2960" y1="976" y2="976" x1="2528" />
        </branch>
        <branch name="Cout">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="1296" type="branch" />
            <wire x2="1520" y1="1296" y2="1296" x1="1504" />
            <wire x2="1536" y1="1296" y2="1296" x1="1520" />
        </branch>
        <branch name="XLXN_279(31:0)">
            <wire x2="2960" y1="1232" y2="1232" x1="2432" />
        </branch>
        <branch name="ALU_out(31:0)">
            <wire x2="1680" y1="1168" y2="1168" x1="1504" />
            <wire x2="1872" y1="1168" y2="1168" x1="1680" />
            <wire x2="2960" y1="1168" y2="1168" x1="1872" />
            <wire x2="1872" y1="1168" y2="1296" x1="1872" />
            <wire x2="1680" y1="1168" y2="1472" x1="1680" />
            <wire x2="1696" y1="1472" y2="1472" x1="1680" />
        </branch>
        <bustap x2="1968" y1="1296" y2="1296" x1="1872" />
        <branch name="ALU_out(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1296" type="branch" />
            <wire x2="2080" y1="1296" y2="1296" x1="1968" />
            <wire x2="2256" y1="1296" y2="1296" x1="2080" />
        </branch>
        <instance x="2160" y="1296" name="Ext32" orien="R0">
        </instance>
        <branch name="push_out(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1040" y="1104" type="branch" />
            <wire x2="864" y1="1104" y2="1104" x1="304" />
            <wire x2="1040" y1="1104" y2="1104" x1="864" />
            <wire x2="1072" y1="1104" y2="1104" x1="1040" />
            <wire x2="864" y1="960" y2="1104" x1="864" />
            <wire x2="1040" y1="960" y2="960" x1="864" />
        </branch>
        <branch name="So(31:0)">
            <wire x2="2496" y1="960" y2="960" x1="1184" />
            <wire x2="2496" y1="960" y2="1296" x1="2496" />
            <wire x2="2960" y1="1296" y2="1296" x1="2496" />
        </branch>
        <instance x="976" y="992" name="Ext_Logic" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="80" y="-76" type="instance" />
        </instance>
        <branch name="Zero">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2032" y="1472" type="branch" />
            <wire x2="2032" y1="1472" y2="1472" x1="1968" />
            <wire x2="2048" y1="1472" y2="1472" x1="2032" />
        </branch>
        <text style="fontsize:38;fontname:Arial;textcolor:rgb(255,0,0)" x="2556" y="884">s_point BUS</text>
        <branch name="SW(7:5)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2608" y="848" type="branch" />
            <wire x2="2080" y1="576" y2="576" x1="272" />
            <wire x2="2080" y1="576" y2="848" x1="2080" />
            <wire x2="2608" y1="848" y2="848" x1="2080" />
            <wire x2="2960" y1="848" y2="848" x1="2608" />
        </branch>
        <instance x="400" y="1696" name="U2" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="256" y="120" type="instance" />
        </instance>
        <instance x="1664" y="1520" name="Zero_Result" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="96" y="-120" type="instance" />
        </instance>
        <text style="fontsize:38;fontname:Arial;textcolor:rgb(255,0,0)" x="2556" y="1076">Bi BUS</text>
        <text style="fontsize:38;fontname:Arial;textcolor:rgb(255,0,0)" x="2568" y="1396">ROM Data BUS</text>
        <text style="fontsize:38;fontname:Arial;textcolor:rgb(255,0,0)" x="2568" y="1460">RAM Data_out BUS</text>
        <instance x="48" y="2000" name="XLXI_4" orien="R0" />
        <instance x="1072" y="1328" name="M8" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="160" y="-224" type="instance" />
        </instance>
        <branch name="XLXN_286(31:0)">
            <wire x2="2224" y1="2256" y2="2256" x1="976" />
            <wire x2="2224" y1="1488" y2="2256" x1="2224" />
            <wire x2="2960" y1="1488" y2="1488" x1="2224" />
        </branch>
        <branch name="XLXN_292">
            <wire x2="288" y1="1968" y2="1968" x1="272" />
            <wire x2="400" y1="1968" y2="1968" x1="288" />
            <wire x2="288" y1="1968" y2="2384" x1="288" />
            <wire x2="400" y1="2384" y2="2384" x1="288" />
        </branch>
        <branch name="XLXN_283(31:0)">
            <wire x2="992" y1="2096" y2="2096" x1="368" />
            <wire x2="368" y1="2096" y2="2336" x1="368" />
            <wire x2="400" y1="2336" y2="2336" x1="368" />
            <wire x2="992" y1="1776" y2="1776" x1="976" />
            <wire x2="2192" y1="1776" y2="1776" x1="992" />
            <wire x2="992" y1="1776" y2="2096" x1="992" />
            <wire x2="2960" y1="1424" y2="1424" x1="2192" />
            <wire x2="2192" y1="1424" y2="1776" x1="2192" />
        </branch>
        <branch name="SW_OK(4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="208" y="2256" type="branch" />
            <wire x2="208" y1="2256" y2="2256" x1="192" />
            <wire x2="400" y1="2256" y2="2256" x1="208" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,SW(3),clkdiv(27:24)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="384" y="1664" type="branch" />
            <wire x2="384" y1="1664" y2="1664" x1="160" />
            <wire x2="384" y1="1664" y2="1776" x1="384" />
            <wire x2="400" y1="1776" y2="1776" x1="384" />
            <wire x2="384" y1="1776" y2="2192" x1="384" />
            <wire x2="400" y1="2192" y2="2192" x1="384" />
        </branch>
        <instance x="400" y="2112" name="U3" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="256" y="108" type="instance" />
        </instance>
        <branch name="N0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="704" type="branch" />
            <wire x2="2960" y1="704" y2="704" x1="2928" />
        </branch>
        <branch name="V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2928" y="752" type="branch" />
            <wire x2="2960" y1="752" y2="752" x1="2928" />
        </branch>
        <branch name="Disp_num(31:0)">
            <wire x2="1808" y1="192" y2="544" x1="1808" />
            <wire x2="3424" y1="544" y2="544" x1="1808" />
            <wire x2="3424" y1="544" y2="720" x1="3424" />
            <wire x2="1840" y1="192" y2="192" x1="1808" />
            <wire x2="3424" y1="720" y2="720" x1="3408" />
        </branch>
        <branch name="Ai(31:0)">
            <wire x2="928" y1="1152" y2="1152" x1="880" />
            <wire x2="1072" y1="1152" y2="1152" x1="928" />
            <wire x2="928" y1="1040" y2="1152" x1="928" />
            <wire x2="2960" y1="1040" y2="1040" x1="928" />
        </branch>
    </sheet>
</drawing>