<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Branch(1:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="N0" />
        <signal name="pc_next(31:0)" />
        <signal name="Imm_32(29:0),N0,N0" />
        <signal name="V5" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" />
        <signal name="pc_4(31:0)" />
        <signal name="branch_pc(31:0)" />
        <signal name="ALU_Control(2:0)" />
        <signal name="rdata_A(31:0)" />
        <signal name="ALUSrc_B" />
        <signal name="RegWrite" />
        <signal name="XLXN_31(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Imm_32(31:0)" />
        <signal name="XLXN_34(4:0)" />
        <signal name="inst_field(20:16)" />
        <signal name="inst_field(15:11)" />
        <signal name="inst_field(25:0)" />
        <signal name="RegDst" />
        <signal name="inst_field(15:0)" />
        <signal name="ALU_out(31:0)" />
        <signal name="zero" />
        <signal name="pc_4(31:28),inst_field(25:0),N0,N0" />
        <signal name="overflow" />
        <signal name="Jal" />
        <signal name="DatatoReg(1:0)" />
        <signal name="V5,V5,V5,V5,V5" />
        <signal name="XLXN_111(4:0)" />
        <signal name="inst_field(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" />
        <signal name="XLXN_119(31:0)" />
        <signal name="XLXN_127(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="Cp0Reg(31:0)" />
        <signal name="MemOrCp0Data" />
        <signal name="XLXN_139(31:0)" />
        <signal name="PC_out(31:0)" />
        <signal name="Cp0ToPc" />
        <signal name="Cp0Write" />
        <signal name="Pc4ToCp0" />
        <signal name="XLXN_151(31:0)" />
        <signal name="inst_field(4:0)" />
        <signal name="Cp0ReadEpc" />
        <signal name="N0,V5,V5,V5,N0" />
        <signal name="XLXN_179(31:0)" />
        <signal name="PcOrEpc" />
        <signal name="XLXN_198(4:0)" />
        <signal name="Cp0Interrupt(1:0)" />
        <signal name="XLXN_210(4:0)" />
        <signal name="Cp0WriteEpc" />
        <signal name="XLXN_217(31:0)" />
        <signal name="XLXN_218(31:0)" />
        <port polarity="Input" name="Branch(1:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="ALU_Control(2:0)" />
        <port polarity="Input" name="ALUSrc_B" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="inst_field(25:0)" />
        <port polarity="Input" name="RegDst" />
        <port polarity="Output" name="ALU_out(31:0)" />
        <port polarity="Output" name="zero" />
        <port polarity="Output" name="overflow" />
        <port polarity="Input" name="Jal" />
        <port polarity="Input" name="DatatoReg(1:0)" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="MemOrCp0Data" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Input" name="Cp0ToPc" />
        <port polarity="Input" name="Cp0Write" />
        <port polarity="Input" name="Pc4ToCp0" />
        <port polarity="Input" name="Cp0ReadEpc" />
        <port polarity="Input" name="PcOrEpc" />
        <port polarity="Input" name="Cp0Interrupt(1:0)" />
        <port polarity="Input" name="Cp0WriteEpc" />
        <blockdef name="Decode_pc_Int">
            <timestamp>2015-4-18T14:30:16</timestamp>
            <rect style="fillcolor:rgb(201,255,255);fillstyle:Solid" width="192" x="64" y="-320" height="268" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="256" y="-300" height="24" />
            <line x2="320" y1="-288" y2="-288" x1="256" />
            <line x2="0" y1="-256" y2="-256" x1="64" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="add_32">
            <timestamp>2015-4-18T14:30:17</timestamp>
            <rect width="20" x="44" y="-84" height="8" />
            <line x2="44" y1="-80" y2="-80" x1="64" />
            <rect width="20" x="44" y="-52" height="8" />
            <line x2="44" y1="-48" y2="-48" x1="64" />
            <line x2="128" y1="-28" y2="-48" x1="64" />
            <line x2="64" y1="-56" y2="-28" x1="64" />
            <line x2="76" y1="-56" y2="-64" x1="64" />
            <line x2="76" y1="-72" y2="-64" x1="64" />
            <line x2="64" y1="-72" y2="-100" x1="64" />
            <line x2="128" y1="-100" y2="-80" x1="64" />
            <line x2="128" y1="-80" y2="-48" x1="128" />
            <rect width="20" x="128" y="-68" height="8" />
            <line x2="148" y1="-64" y2="-64" x1="128" />
        </blockdef>
        <blockdef name="mux2to1_32">
            <timestamp>2015-4-18T14:30:16</timestamp>
            <rect width="28" x="64" y="-192" height="124" />
            <line x2="96" y1="-128" y2="-128" x1="92" />
            <line x2="80" y1="-188" y2="-196" x1="80" />
            <line x2="64" y1="-160" y2="-160" x1="60" />
            <line x2="64" y1="-96" y2="-96" x1="60" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2015-4-18T14:30:17</timestamp>
            <line x2="140" y1="-216" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="140" y1="-72" y2="-136" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="64" y1="-72" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="384" y1="-48" y2="-232" style="linewidth:W;linecolor:rgb(255,0,0)" x1="384" />
            <line x2="64" y1="-232" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="384" />
            <line x2="448" y1="-208" y2="-208" x1="384" />
            <rect width="64" x="384" y="-156" height="24" />
            <line x2="448" y1="-144" y2="-144" x1="384" />
            <line x2="448" y1="-80" y2="-80" x1="384" />
            <line x2="64" y1="-216" y2="-384" style="linewidth:W;linecolor:rgb(255,0,0)" x1="64" />
            <line x2="64" y1="-48" y2="96" style="linewidth:W;linecolor:rgb(255,0,0)" x1="384" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="4" height="24" />
            <line x2="0" y1="16" y2="16" x1="64" />
            <line x2="240" y1="-384" y2="-300" x1="240" />
            <rect width="16" x="232" y="-384" height="84" />
        </blockdef>
        <blockdef name="Regs">
            <timestamp>2015-4-18T14:30:15</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(254,180,229);fillstyle:Solid" width="352" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="240" y1="-496" y2="-448" x1="240" />
            <rect width="64" x="416" y="-396" height="24" />
            <line x2="480" y1="-384" y2="-384" x1="416" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <rect width="64" x="0" y="-60" height="24" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <rect width="64" x="416" y="-124" height="24" />
            <line x2="480" y1="-112" y2="-112" x1="416" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="Ext_32">
            <timestamp>2015-4-19T5:36:31</timestamp>
            <circle style="linewidth:W;linecolor:rgb(255,0,0);linestyle:Dash" r="69" cx="185" cy="-33" />
            <line x2="124" y1="0" y2="0" style="linewidth:W" x1="96" />
            <line x2="272" y1="-64" y2="-64" style="linewidth:W" x1="248" />
            <rect style="linecolor:rgb(255,255,255)" width="128" x="120" y="-80" height="88" />
        </blockdef>
        <blockdef name="mux2to1_5">
            <timestamp>2015-4-18T14:30:16</timestamp>
            <rect width="28" x="64" y="-172" height="84" />
            <line x2="80" y1="-176" y2="-168" x1="80" />
        </blockdef>
        <blockdef name="mux4to1_32">
            <timestamp>2015-6-20T9:35:3</timestamp>
            <rect width="28" x="64" y="-192" height="124" />
            <line x2="96" y1="-128" y2="-128" x1="92" />
            <line x2="80" y1="-188" y2="-196" x1="80" />
            <line x2="64" y1="-176" y2="-176" x1="60" />
            <line x2="64" y1="-144" y2="-144" x1="60" />
            <line x2="64" y1="-112" y2="-112" x1="60" />
            <line x2="64" y1="-80" y2="-80" x1="60" />
        </blockdef>
        <blockdef name="CP0">
            <timestamp>2015-6-27T4:14:2</timestamp>
            <rect width="432" x="64" y="-448" height="448" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-428" height="24" />
            <line x2="560" y1="-416" y2="-416" x1="496" />
            <rect width="64" x="496" y="-44" height="24" />
            <line x2="560" y1="-32" y2="-32" x1="496" />
        </blockdef>
        <block symbolname="Decode_pc_Int" name="U3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="PC_out(31:0)" name="pc(31:0)" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="N0" name="INT" />
            <blockpin signalname="N0" name="RFE" />
            <blockpin signalname="pc_next(31:0)" name="pc_next(31:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_2">
            <blockpin signalname="N0" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="add_32" name="XLXI_5">
            <blockpin signalname="PC_out(31:0)" name="a(31:0)" />
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0" name="b(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="c(31:0)" />
        </block>
        <block symbolname="add_32" name="XLXI_6">
            <blockpin signalname="pc_4(31:0)" name="a(31:0)" />
            <blockpin signalname="Imm_32(29:0),N0,N0" name="b(31:0)" />
            <blockpin signalname="branch_pc(31:0)" name="c(31:0)" />
        </block>
        <block symbolname="ALU" name="U1">
            <blockpin signalname="zero" name="zero" />
            <blockpin signalname="ALU_out(31:0)" name="res(31:0)" />
            <blockpin signalname="overflow" name="overflow" />
            <blockpin signalname="rdata_A(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_31(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_Control(2:0)" name="ALU_operation(2:0)" />
        </block>
        <block symbolname="Regs" name="U2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="rdata_A(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_119(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="inst_field(4:0)" name="R_addr_A(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_34(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="mux2to1_32" name="MUX4">
            <blockpin signalname="ALUSrc_B" name="sel" />
            <blockpin signalname="Imm_32(31:0)" name="a(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_31(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="Ext_32" name="XLXI_14">
            <blockpin signalname="inst_field(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="Imm_32(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="mux2to1_5" name="MUX2">
            <blockpin signalname="RegDst" name="sel" />
            <blockpin signalname="XLXN_34(4:0)" name="o(4:0)" />
            <blockpin signalname="XLXN_111(4:0)" name="b(4:0)" />
            <blockpin signalname="inst_field(15:11)" name="a(4:0)" />
        </block>
        <block symbolname="mux4to1_32" name="MUX5">
            <blockpin signalname="Branch(1:0)" name="sel(1:0)" />
            <blockpin signalname="pc_4(31:0)" name="x0(31:0)" />
            <blockpin signalname="branch_pc(31:0)" name="x1(31:0)" />
            <blockpin signalname="pc_4(31:28),inst_field(25:0),N0,N0" name="x2(31:0)" />
            <blockpin signalname="rdata_A(31:0)" name="x3(31:0)" />
            <blockpin signalname="XLXN_139(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="mux2to1_5" name="MUX1">
            <blockpin signalname="Jal" name="sel" />
            <blockpin signalname="XLXN_111(4:0)" name="o(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="b(4:0)" />
            <blockpin signalname="V5,V5,V5,V5,V5" name="a(4:0)" />
        </block>
        <block symbolname="mux4to1_32" name="MUX3">
            <blockpin signalname="DatatoReg(1:0)" name="sel(1:0)" />
            <blockpin signalname="ALU_out(31:0)" name="x0(31:0)" />
            <blockpin signalname="XLXN_127(31:0)" name="x1(31:0)" />
            <blockpin signalname="inst_field(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0" name="x2(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="x3(31:0)" />
            <blockpin signalname="XLXN_119(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="mux2to1_32" name="XLXI_15">
            <blockpin signalname="MemOrCp0Data" name="sel" />
            <blockpin signalname="Cp0Reg(31:0)" name="a(31:0)" />
            <blockpin signalname="Data_in(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_127(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="mux2to1_32" name="XLXI_16">
            <blockpin signalname="Cp0ToPc" name="sel" />
            <blockpin signalname="XLXN_218(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_139(31:0)" name="b(31:0)" />
            <blockpin signalname="pc_next(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="CP0" name="XLXI_17">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="Cp0Write" name="RegWrite" />
            <blockpin signalname="XLXN_198(4:0)" name="RegReadAddr(4:0)" />
            <blockpin signalname="XLXN_210(4:0)" name="RegWriteAddr(4:0)" />
            <blockpin signalname="XLXN_151(31:0)" name="RegWriteData(31:0)" />
            <blockpin signalname="Cp0Interrupt(1:0)" name="Interrupt(1:0)" />
            <blockpin signalname="Cp0Reg(31:0)" name="RegReadData(31:0)" />
            <blockpin signalname="XLXN_217(31:0)" name="InterruptPc(31:0)" />
        </block>
        <block symbolname="mux2to1_32" name="XLXI_18">
            <blockpin signalname="Pc4ToCp0" name="sel" />
            <blockpin signalname="pc_4(31:0)" name="a(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_151(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="mux2to1_32" name="XLXI_21">
            <blockpin signalname="PcOrEpc" name="sel" />
            <blockpin signalname="Cp0Reg(31:0)" name="a(31:0)" />
            <blockpin signalname="XLXN_217(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_218(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="mux2to1_5" name="XLXI_24">
            <blockpin signalname="Cp0ReadEpc" name="sel" />
            <blockpin signalname="XLXN_198(4:0)" name="o(4:0)" />
            <blockpin signalname="inst_field(4:0)" name="b(4:0)" />
            <blockpin signalname="N0,V5,V5,V5,N0" name="a(4:0)" />
        </block>
        <block symbolname="mux2to1_5" name="XLXI_25">
            <blockpin signalname="Cp0WriteEpc" name="sel" />
            <blockpin signalname="XLXN_210(4:0)" name="o(4:0)" />
            <blockpin signalname="inst_field(15:11)" name="b(4:0)" />
            <blockpin signalname="N0,V5,V5,V5,N0" name="a(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Branch(1:0)">
            <wire x2="1776" y1="64" y2="64" x1="192" />
            <wire x2="1776" y1="64" y2="256" x1="1776" />
        </branch>
        <instance x="576" y="496" name="U3" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="128" y="-212" type="instance" />
        </instance>
        <iomarker fontsize="28" x="80" y="160" name="clk" orien="R180" />
        <iomarker fontsize="28" x="80" y="240" name="rst" orien="R180" />
        <instance x="16" y="432" name="XLXI_2" orien="R0" />
        <branch name="N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="240" y="288" type="branch" />
            <wire x2="80" y1="288" y2="304" x1="80" />
            <wire x2="240" y1="288" y2="288" x1="80" />
            <wire x2="560" y1="288" y2="288" x1="240" />
            <wire x2="576" y1="288" y2="288" x1="560" />
            <wire x2="560" y1="288" y2="336" x1="560" />
            <wire x2="576" y1="336" y2="336" x1="560" />
        </branch>
        <bustap x2="976" y1="352" y2="352" x1="1072" />
        <branch name="V5">
            <wire x2="976" y1="352" y2="352" x1="928" />
        </branch>
        <branch name="Imm_32(29:0),N0,N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="208" y="544" type="branch" />
            <wire x2="208" y1="544" y2="544" x1="96" />
            <wire x2="1392" y1="544" y2="544" x1="208" />
            <wire x2="1440" y1="336" y2="336" x1="1392" />
            <wire x2="1392" y1="336" y2="544" x1="1392" />
        </branch>
        <branch name="ALU_Control(2:0)">
            <wire x2="1776" y1="608" y2="608" x1="272" />
            <wire x2="1776" y1="608" y2="736" x1="1776" />
        </branch>
        <instance x="1536" y="1120" name="U1" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial" attrname="InstName" x="176" y="-144" type="instance" />
        </instance>
        <branch name="rdata_A(31:0)">
            <wire x2="1472" y1="832" y2="832" x1="1248" />
            <wire x2="1536" y1="832" y2="832" x1="1472" />
            <wire x2="1760" y1="368" y2="368" x1="1472" />
            <wire x2="1472" y1="368" y2="832" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="272" y="608" name="ALU_Control(2:0)" orien="R180" />
        <branch name="ALUSrc_B">
            <wire x2="1424" y1="672" y2="672" x1="192" />
            <wire x2="1424" y1="672" y2="1072" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="192" y="672" name="ALUSrc_B" orien="R180" />
        <branch name="RegWrite">
            <wire x2="1008" y1="720" y2="720" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="720" name="RegWrite" orien="R180" />
        <instance x="1344" y="1264" name="MUX4" orien="R0">
            <attrtext style="alignment:VCENTER;fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="76" y="-127" type="instance" />
        </instance>
        <branch name="XLXN_31(31:0)">
            <wire x2="1536" y1="1136" y2="1136" x1="1440" />
        </branch>
        <branch name="Imm_32(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1280" type="branch" />
            <wire x2="1248" y1="1280" y2="1280" x1="1136" />
            <wire x2="1376" y1="1280" y2="1280" x1="1248" />
            <wire x2="1408" y1="1104" y2="1104" x1="1376" />
            <wire x2="1376" y1="1104" y2="1280" x1="1376" />
        </branch>
        <instance x="864" y="1344" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_34(4:0)">
            <wire x2="768" y1="1024" y2="1024" x1="736" />
        </branch>
        <bustap x2="480" y1="896" y2="896" x1="384" />
        <bustap x2="480" y1="944" y2="944" x1="384" />
        <bustap x2="480" y1="1008" y2="1008" x1="384" />
        <iomarker fontsize="28" x="240" y="896" name="inst_field(25:0)" orien="R180" />
        <iomarker fontsize="28" x="160" y="832" name="RegDst" orien="R180" />
        <branch name="inst_field(25:0)">
            <wire x2="336" y1="896" y2="896" x1="240" />
            <wire x2="384" y1="896" y2="896" x1="336" />
            <wire x2="336" y1="896" y2="944" x1="336" />
            <wire x2="384" y1="944" y2="944" x1="336" />
            <wire x2="336" y1="944" y2="1008" x1="336" />
            <wire x2="384" y1="1008" y2="1008" x1="336" />
            <wire x2="336" y1="1008" y2="1344" x1="336" />
            <wire x2="400" y1="1344" y2="1344" x1="336" />
        </branch>
        <bustap x2="496" y1="1344" y2="1344" x1="400" />
        <branch name="inst_field(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1344" type="branch" />
            <wire x2="560" y1="1344" y2="1344" x1="496" />
            <wire x2="960" y1="1344" y2="1344" x1="560" />
        </branch>
        <iomarker fontsize="28" x="2208" y="976" name="ALU_out(31:0)" orien="R0" />
        <branch name="zero">
            <wire x2="2336" y1="912" y2="912" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1472" name="Data_out(31:0)" orien="R0" />
        <branch name="pc_4(31:28),inst_field(25:0),N0,N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="336" y="112" type="branch" />
            <wire x2="336" y1="112" y2="112" x1="112" />
            <wire x2="1632" y1="112" y2="112" x1="336" />
            <wire x2="1632" y1="112" y2="336" x1="1632" />
            <wire x2="1760" y1="336" y2="336" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="192" y="64" name="Branch(1:0)" orien="R180" />
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,N0,N0">
            <attrtext style="alignment:SOFT-TCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="352" type="branch" />
            <wire x2="1088" y1="352" y2="352" x1="1072" />
            <wire x2="1184" y1="288" y2="288" x1="1088" />
            <wire x2="1088" y1="288" y2="352" x1="1088" />
        </branch>
        <instance x="1136" y="336" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1392" y="384" name="XLXI_6" orien="R0">
        </instance>
        <branch name="branch_pc(31:0)">
            <wire x2="1680" y1="320" y2="320" x1="1536" />
            <wire x2="1680" y1="304" y2="320" x1="1680" />
            <wire x2="1760" y1="304" y2="304" x1="1680" />
        </branch>
        <instance x="864" y="352" name="XLXI_3" orien="R0" />
        <instance x="1696" y="448" name="MUX5" orien="R0">
            <attrtext style="alignment:VCENTER;fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="76" y="-127" type="instance" />
        </instance>
        <iomarker fontsize="28" x="2336" y="912" name="zero" orien="R0" />
        <branch name="overflow">
            <wire x2="2288" y1="1040" y2="1040" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="2288" y="1040" name="overflow" orien="R0" />
        <iomarker fontsize="28" x="80" y="768" name="Jal" orien="R180" />
        <branch name="RegDst">
            <wire x2="720" y1="832" y2="832" x1="160" />
            <wire x2="720" y1="832" y2="976" x1="720" />
        </branch>
        <branch name="DatatoReg(1:0)">
            <wire x2="704" y1="1120" y2="1120" x1="240" />
            <wire x2="704" y1="1120" y2="1152" x1="704" />
        </branch>
        <branch name="inst_field(20:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="944" type="branch" />
            <wire x2="544" y1="944" y2="944" x1="480" />
            <wire x2="560" y1="944" y2="944" x1="544" />
            <wire x2="560" y1="944" y2="1088" x1="560" />
            <wire x2="592" y1="1088" y2="1088" x1="560" />
            <wire x2="768" y1="944" y2="944" x1="560" />
        </branch>
        <branch name="V5,V5,V5,V5,V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="496" y="1056" type="branch" />
            <wire x2="496" y1="1056" y2="1056" x1="480" />
            <wire x2="592" y1="1056" y2="1056" x1="496" />
        </branch>
        <branch name="Jal">
            <wire x2="608" y1="768" y2="768" x1="80" />
            <wire x2="608" y1="768" y2="1024" x1="608" />
        </branch>
        <instance x="528" y="1200" name="MUX1" orien="R0">
            <attrtext style="alignment:VCENTER;fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="80" y="-134" type="instance" />
        </instance>
        <instance x="640" y="1152" name="MUX2" orien="R0">
            <attrtext style="alignment:VCENTER;fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="80" y="-134" type="instance" />
        </instance>
        <instance x="768" y="1216" name="U2" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="160" y="-368" type="instance" />
        </instance>
        <branch name="XLXN_111(4:0)">
            <wire x2="672" y1="1072" y2="1072" x1="624" />
            <wire x2="672" y1="1040" y2="1072" x1="672" />
            <wire x2="704" y1="1040" y2="1040" x1="672" />
        </branch>
        <branch name="ALU_out(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1168" type="branch" />
            <wire x2="656" y1="1168" y2="1168" x1="592" />
            <wire x2="688" y1="1168" y2="1168" x1="656" />
            <wire x2="592" y1="1168" y2="1440" x1="592" />
            <wire x2="2048" y1="1440" y2="1440" x1="592" />
            <wire x2="2048" y1="976" y2="976" x1="1984" />
            <wire x2="2208" y1="976" y2="976" x1="2048" />
            <wire x2="2048" y1="976" y2="1440" x1="2048" />
        </branch>
        <instance x="624" y="1344" name="MUX3" orien="R0">
            <attrtext style="alignment:VCENTER;fontsize:28;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="76" y="-127" type="instance" />
        </instance>
        <iomarker fontsize="28" x="240" y="1120" name="DatatoReg(1:0)" orien="R180" />
        <branch name="inst_field(15:0),N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="128" y="1232" type="branch" />
            <wire x2="128" y1="1232" y2="1232" x1="32" />
            <wire x2="688" y1="1232" y2="1232" x1="128" />
        </branch>
        <branch name="XLXN_119(31:0)">
            <wire x2="752" y1="1216" y2="1216" x1="720" />
            <wire x2="752" y1="1168" y2="1216" x1="752" />
            <wire x2="768" y1="1168" y2="1168" x1="752" />
        </branch>
        <instance x="208" y="1568" name="XLXI_15" orien="R0">
        </instance>
        <branch name="XLXN_127(31:0)">
            <wire x2="480" y1="1440" y2="1440" x1="304" />
            <wire x2="688" y1="1200" y2="1200" x1="480" />
            <wire x2="480" y1="1200" y2="1440" x1="480" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="272" y1="1472" y2="1472" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="1472" name="Data_in(31:0)" orien="R180" />
        <branch name="MemOrCp0Data">
            <wire x2="288" y1="1280" y2="1280" x1="256" />
            <wire x2="288" y1="1280" y2="1376" x1="288" />
        </branch>
        <iomarker fontsize="28" x="256" y="1280" name="MemOrCp0Data" orien="R180" />
        <branch name="pc_next(31:0)">
            <wire x2="576" y1="416" y2="416" x1="528" />
            <wire x2="528" y1="416" y2="464" x1="528" />
            <wire x2="1920" y1="464" y2="464" x1="528" />
            <wire x2="1920" y1="288" y2="288" x1="1888" />
            <wire x2="1920" y1="288" y2="464" x1="1920" />
        </branch>
        <instance x="1792" y="416" name="XLXI_16" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2128" y="208" name="PC_out(31:0)" orien="R0" />
        <branch name="XLXN_139(31:0)">
            <wire x2="1856" y1="320" y2="320" x1="1792" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="1104" y1="208" y2="208" x1="896" />
            <wire x2="1104" y1="208" y2="256" x1="1104" />
            <wire x2="1184" y1="256" y2="256" x1="1104" />
            <wire x2="2128" y1="208" y2="208" x1="1104" />
        </branch>
        <branch name="Cp0ToPc">
            <wire x2="1872" y1="16" y2="16" x1="160" />
            <wire x2="1872" y1="16" y2="224" x1="1872" />
        </branch>
        <iomarker fontsize="28" x="160" y="16" name="Cp0ToPc" orien="R180" />
        <iomarker fontsize="28" x="176" y="1760" name="Pc4ToCp0" orien="R180" />
        <iomarker fontsize="28" x="160" y="1808" name="Cp0Write" orien="R180" />
        <branch name="clk">
            <wire x2="320" y1="160" y2="160" x1="80" />
            <wire x2="320" y1="160" y2="208" x1="320" />
            <wire x2="368" y1="208" y2="208" x1="320" />
            <wire x2="576" y1="208" y2="208" x1="368" />
            <wire x2="368" y1="208" y2="800" x1="368" />
            <wire x2="768" y1="800" y2="800" x1="368" />
            <wire x2="368" y1="800" y2="1744" x1="368" />
        </branch>
        <branch name="rst">
            <wire x2="320" y1="240" y2="240" x1="80" />
            <wire x2="576" y1="240" y2="240" x1="320" />
            <wire x2="320" y1="240" y2="848" x1="320" />
            <wire x2="768" y1="848" y2="848" x1="320" />
            <wire x2="320" y1="848" y2="1808" x1="320" />
            <wire x2="368" y1="1808" y2="1808" x1="320" />
        </branch>
        <branch name="Cp0Write">
            <wire x2="288" y1="1808" y2="1808" x1="160" />
            <wire x2="288" y1="1808" y2="1872" x1="288" />
            <wire x2="368" y1="1872" y2="1872" x1="288" />
        </branch>
        <instance x="368" y="2160" name="XLXI_17" orien="R0">
        </instance>
        <instance x="1408" y="1904" name="XLXI_21" orien="R0">
        </instance>
        <branch name="PcOrEpc">
            <wire x2="1488" y1="1648" y2="1648" x1="160" />
            <wire x2="1488" y1="1648" y2="1712" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="160" y="1648" name="PcOrEpc" orien="R180" />
        <branch name="Pc4ToCp0">
            <wire x2="256" y1="1760" y2="1760" x1="176" />
            <wire x2="256" y1="1760" y2="2000" x1="256" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="224" y1="2096" y2="2208" x1="224" />
            <wire x2="1344" y1="2208" y2="2208" x1="224" />
            <wire x2="240" y1="2096" y2="2096" x1="224" />
            <wire x2="1344" y1="1104" y2="1104" x1="1248" />
            <wire x2="1344" y1="1104" y2="1168" x1="1344" />
            <wire x2="1408" y1="1168" y2="1168" x1="1344" />
            <wire x2="1344" y1="1168" y2="1472" x1="1344" />
            <wire x2="2224" y1="1472" y2="1472" x1="1344" />
            <wire x2="1344" y1="1472" y2="2208" x1="1344" />
        </branch>
        <branch name="pc_4(31:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="656" y="1264" type="branch" />
            <wire x2="640" y1="1616" y2="1616" x1="224" />
            <wire x2="224" y1="1616" y2="2032" x1="224" />
            <wire x2="240" y1="2032" y2="2032" x1="224" />
            <wire x2="1344" y1="496" y2="496" x1="640" />
            <wire x2="640" y1="496" y2="1264" x1="640" />
            <wire x2="656" y1="1264" y2="1264" x1="640" />
            <wire x2="688" y1="1264" y2="1264" x1="656" />
            <wire x2="640" y1="1264" y2="1616" x1="640" />
            <wire x2="1344" y1="272" y2="272" x1="1280" />
            <wire x2="1760" y1="272" y2="272" x1="1344" />
            <wire x2="1344" y1="272" y2="304" x1="1344" />
            <wire x2="1440" y1="304" y2="304" x1="1344" />
            <wire x2="1344" y1="304" y2="496" x1="1344" />
        </branch>
        <instance x="176" y="2192" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_151(31:0)">
            <wire x2="368" y1="2064" y2="2064" x1="272" />
        </branch>
        <branch name="N0,V5,V5,V5,N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="112" y="1920" type="branch" />
            <wire x2="96" y1="1920" y2="1920" x1="48" />
            <wire x2="112" y1="1920" y2="1920" x1="96" />
            <wire x2="176" y1="1920" y2="1920" x1="112" />
            <wire x2="96" y1="1920" y2="1984" x1="96" />
            <wire x2="320" y1="1984" y2="1984" x1="96" />
        </branch>
        <branch name="Cp0ReadEpc">
            <wire x2="192" y1="1872" y2="1872" x1="176" />
            <wire x2="192" y1="1872" y2="1888" x1="192" />
        </branch>
        <branch name="inst_field(4:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="896" type="branch" />
            <wire x2="128" y1="1840" y2="1952" x1="128" />
            <wire x2="176" y1="1952" y2="1952" x1="128" />
            <wire x2="272" y1="1840" y2="1840" x1="128" />
            <wire x2="512" y1="1664" y2="1664" x1="272" />
            <wire x2="272" y1="1664" y2="1840" x1="272" />
            <wire x2="512" y1="896" y2="896" x1="480" />
            <wire x2="544" y1="896" y2="896" x1="512" />
            <wire x2="768" y1="896" y2="896" x1="544" />
            <wire x2="512" y1="896" y2="1664" x1="512" />
        </branch>
        <instance x="112" y="2064" name="XLXI_24" orien="R0">
        </instance>
        <iomarker fontsize="28" x="176" y="1872" name="Cp0ReadEpc" orien="R180" />
        <branch name="Cp0Interrupt(1:0)">
            <wire x2="368" y1="2128" y2="2128" x1="192" />
        </branch>
        <iomarker fontsize="28" x="192" y="2128" name="Cp0Interrupt(1:0)" orien="R180" />
        <branch name="XLXN_210(4:0)">
            <wire x2="368" y1="2000" y2="2000" x1="352" />
        </branch>
        <instance x="256" y="2128" name="XLXI_25" orien="R0">
        </instance>
        <branch name="XLXN_198(4:0)">
            <wire x2="368" y1="1936" y2="1936" x1="208" />
        </branch>
        <branch name="inst_field(15:11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1008" type="branch" />
            <wire x2="288" y1="1888" y2="2016" x1="288" />
            <wire x2="320" y1="2016" y2="2016" x1="288" />
            <wire x2="336" y1="1888" y2="1888" x1="288" />
            <wire x2="544" y1="1472" y2="1472" x1="336" />
            <wire x2="336" y1="1472" y2="1888" x1="336" />
            <wire x2="544" y1="1008" y2="1008" x1="480" />
            <wire x2="704" y1="1008" y2="1008" x1="544" />
            <wire x2="544" y1="1008" y2="1472" x1="544" />
        </branch>
        <branch name="Cp0WriteEpc">
            <wire x2="304" y1="2192" y2="2192" x1="176" />
            <wire x2="336" y1="1904" y2="1904" x1="304" />
            <wire x2="336" y1="1904" y2="1952" x1="336" />
            <wire x2="304" y1="1904" y2="2192" x1="304" />
        </branch>
        <iomarker fontsize="28" x="176" y="2192" name="Cp0WriteEpc" orien="R180" />
        <branch name="Cp0Reg(31:0)">
            <wire x2="272" y1="1408" y2="1408" x1="240" />
            <wire x2="240" y1="1408" y2="1584" x1="240" />
            <wire x2="960" y1="1584" y2="1584" x1="240" />
            <wire x2="960" y1="1584" y2="1744" x1="960" />
            <wire x2="1472" y1="1744" y2="1744" x1="960" />
            <wire x2="960" y1="1744" y2="1744" x1="928" />
        </branch>
        <branch name="XLXN_217(31:0)">
            <wire x2="1200" y1="2128" y2="2128" x1="928" />
            <wire x2="1200" y1="1808" y2="2128" x1="1200" />
            <wire x2="1472" y1="1808" y2="1808" x1="1200" />
        </branch>
        <branch name="XLXN_218(31:0)">
            <wire x2="2064" y1="1776" y2="1776" x1="1504" />
            <wire x2="1840" y1="256" y2="672" x1="1840" />
            <wire x2="2064" y1="672" y2="672" x1="1840" />
            <wire x2="2064" y1="672" y2="1776" x1="2064" />
            <wire x2="1856" y1="256" y2="256" x1="1840" />
        </branch>
    </sheet>
</drawing>