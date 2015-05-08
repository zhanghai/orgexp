<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Jump" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="N0" />
        <signal name="pc_next(31:0)" />
        <signal name="Imm_32(29:0),N0,N0" />
        <signal name="PC_out(31:0)" />
        <signal name="V5" />
        <signal name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,V5" />
        <signal name="pc_4(31:0)" />
        <signal name="Branch_pc(31:0)" />
        <signal name="XLXN_19(31:0)" />
        <signal name="XLXN_20" />
        <signal name="Branch" />
        <signal name="ALU_Control(2:0)" />
        <signal name="XLXN_26(31:0)" />
        <signal name="ALUSrc_B" />
        <signal name="RegWrite" />
        <signal name="XLXN_31(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="Imm_32(31:0)" />
        <signal name="XLXN_34(4:0)" />
        <signal name="XLXN_35(31:0)" />
        <signal name="MemtoReg" />
        <signal name="inst_field(25:21)" />
        <signal name="inst_field(20:16)" />
        <signal name="inst_field(15:11)" />
        <signal name="inst_field(31:0)" />
        <signal name="Data_in(31:0)" />
        <signal name="RegDst" />
        <signal name="inst_field(15:0)" />
        <signal name="ALU_out(31:0)" />
        <signal name="XLXN_49" />
        <signal name="pc_4(31:28),inst_field(25:0),N0,N0" />
        <port polarity="Input" name="Jump" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Input" name="Branch" />
        <port polarity="Input" name="ALU_Control(2:0)" />
        <port polarity="Input" name="ALUSrc_B" />
        <port polarity="Input" name="RegWrite" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Input" name="MemtoReg" />
        <port polarity="Input" name="inst_field(31:0)" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="RegDst" />
        <port polarity="Output" name="ALU_out(31:0)" />
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
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="alu">
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
        <block symbolname="Decode_pc_Int" name="XLXI_1">
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
            <blockpin signalname="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,V5" name="b(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="c(31:0)" />
        </block>
        <block symbolname="add_32" name="XLXI_6">
            <blockpin signalname="pc_4(31:0)" name="a(31:0)" />
            <blockpin signalname="Imm_32(29:0),N0,N0" name="b(31:0)" />
            <blockpin signalname="Branch_pc(31:0)" name="c(31:0)" />
        </block>
        <block symbolname="mux2to1_32" name="mux7">
            <blockpin signalname="XLXN_20" name="sel" />
            <blockpin signalname="Branch_pc(31:0)" name="a(31:0)" />
            <blockpin signalname="pc_4(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_19(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="mux2to1_32" name="mux8">
            <blockpin signalname="Jump" name="sel" />
            <blockpin signalname="pc_4(31:28),inst_field(25:0),N0,N0" name="a(31:0)" />
            <blockpin signalname="XLXN_19(31:0)" name="b(31:0)" />
            <blockpin signalname="pc_next(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="XLXN_49" name="I0" />
            <blockpin signalname="Branch" name="I1" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
        <block symbolname="alu" name="U1">
            <blockpin signalname="XLXN_49" name="zero" />
            <blockpin signalname="ALU_out(31:0)" name="res(31:0)" />
            <blockpin name="overflow" />
            <blockpin signalname="XLXN_26(31:0)" name="A(31:0)" />
            <blockpin signalname="XLXN_31(31:0)" name="B(31:0)" />
            <blockpin signalname="ALU_Control(2:0)" name="ALU_operation(2:0)" />
        </block>
        <block symbolname="Regs" name="U2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="RegWrite" name="L_S" />
            <blockpin signalname="XLXN_26(31:0)" name="rdata_A(31:0)" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_35(31:0)" name="Wt_data(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="rdata_B(31:0)" />
            <blockpin signalname="inst_field(25:21)" name="R_addr_A(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="R_addr_B(4:0)" />
            <blockpin signalname="XLXN_34(4:0)" name="Wt_addr(4:0)" />
        </block>
        <block symbolname="mux2to1_32" name="XLXI_13">
            <blockpin signalname="ALUSrc_B" name="sel" />
            <blockpin signalname="Imm_32(31:0)" name="a(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_31(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="Ext_32" name="XLXI_14">
            <blockpin signalname="inst_field(15:0)" name="imm_16(15:0)" />
            <blockpin signalname="Imm_32(31:0)" name="Imm_32(31:0)" />
        </block>
        <block symbolname="mux2to1_32" name="mux5">
            <blockpin signalname="MemtoReg" name="sel" />
            <blockpin signalname="Data_in(31:0)" name="a(31:0)" />
            <blockpin signalname="ALU_out(31:0)" name="b(31:0)" />
            <blockpin signalname="XLXN_35(31:0)" name="o(31:0)" />
        </block>
        <block symbolname="mux2to1_5" name="mux2">
            <blockpin signalname="RegDst" name="sel" />
            <blockpin signalname="XLXN_34(4:0)" name="o(4:0)" />
            <blockpin signalname="inst_field(20:16)" name="b(4:0)" />
            <blockpin signalname="inst_field(15:11)" name="a(4:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="Jump">
            <wire x2="1792" y1="64" y2="64" x1="112" />
            <wire x2="1792" y1="64" y2="256" x1="1792" />
        </branch>
        <iomarker fontsize="28" x="112" y="64" name="Jump" orien="R180" />
        <branch name="clk">
            <wire x2="320" y1="160" y2="160" x1="80" />
            <wire x2="320" y1="160" y2="208" x1="320" />
            <wire x2="368" y1="208" y2="208" x1="320" />
            <wire x2="576" y1="208" y2="208" x1="368" />
            <wire x2="368" y1="208" y2="800" x1="368" />
            <wire x2="832" y1="800" y2="800" x1="368" />
        </branch>
        <instance x="576" y="496" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="80" y="160" name="clk" orien="R180" />
        <iomarker fontsize="28" x="80" y="240" name="rst" orien="R180" />
        <instance x="16" y="432" name="XLXI_2" orien="R0" />
        <branch name="N0">
            <wire x2="80" y1="288" y2="304" x1="80" />
            <wire x2="560" y1="288" y2="288" x1="80" />
            <wire x2="576" y1="288" y2="288" x1="560" />
            <wire x2="560" y1="288" y2="336" x1="560" />
            <wire x2="576" y1="336" y2="336" x1="560" />
        </branch>
        <branch name="rst">
            <wire x2="320" y1="240" y2="240" x1="80" />
            <wire x2="576" y1="240" y2="240" x1="320" />
            <wire x2="320" y1="240" y2="848" x1="320" />
            <wire x2="832" y1="848" y2="848" x1="320" />
        </branch>
        <branch name="pc_next(31:0)">
            <wire x2="576" y1="416" y2="416" x1="528" />
            <wire x2="528" y1="416" y2="512" x1="528" />
            <wire x2="1824" y1="512" y2="512" x1="528" />
            <wire x2="1824" y1="320" y2="320" x1="1808" />
            <wire x2="1824" y1="320" y2="512" x1="1824" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="1104" y1="208" y2="208" x1="896" />
            <wire x2="1104" y1="208" y2="320" x1="1104" />
            <wire x2="1168" y1="320" y2="320" x1="1104" />
            <wire x2="2208" y1="208" y2="208" x1="1104" />
        </branch>
        <instance x="960" y="416" name="XLXI_3" orien="R270" />
        <bustap x2="976" y1="352" y2="352" x1="1072" />
        <branch name="V5">
            <wire x2="976" y1="352" y2="352" x1="960" />
        </branch>
        <branch name="N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,N0,V5,V5">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="352" type="branch" />
            <wire x2="1120" y1="352" y2="352" x1="1072" />
            <wire x2="1168" y1="352" y2="352" x1="1120" />
        </branch>
        <instance x="1120" y="400" name="XLXI_5" orien="R0">
        </instance>
        <branch name="Imm_32(29:0),N0,N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="208" y="480" type="branch" />
            <wire x2="208" y1="480" y2="480" x1="96" />
            <wire x2="1104" y1="480" y2="480" x1="208" />
            <wire x2="1440" y1="416" y2="416" x1="1104" />
            <wire x2="1104" y1="416" y2="448" x1="1104" />
            <wire x2="1104" y1="448" y2="480" x1="1104" />
        </branch>
        <branch name="pc_4(31:0)">
            <wire x2="1408" y1="336" y2="336" x1="1264" />
            <wire x2="1408" y1="336" y2="384" x1="1408" />
            <wire x2="1440" y1="384" y2="384" x1="1408" />
            <wire x2="1680" y1="336" y2="336" x1="1408" />
        </branch>
        <instance x="1392" y="464" name="XLXI_6" orien="R0">
        </instance>
        <branch name="Branch_pc(31:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1609" y="400" type="branch" />
            <wire x2="1680" y1="400" y2="400" x1="1536" />
        </branch>
        <instance x="1616" y="240" name="mux7" orien="M180">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="60" y="-196" type="instance" />
        </instance>
        <branch name="XLXN_19(31:0)">
            <wire x2="1744" y1="368" y2="368" x1="1712" />
            <wire x2="1744" y1="352" y2="368" x1="1744" />
            <wire x2="1776" y1="352" y2="352" x1="1744" />
        </branch>
        <instance x="1712" y="448" name="mux8" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="60" y="-63" type="instance" />
        </instance>
        <iomarker fontsize="28" x="2208" y="208" name="PC_out(31:0)" orien="R0" />
        <instance x="2064" y="704" name="XLXI_10" orien="R270" />
        <branch name="Branch">
            <wire x2="1824" y1="544" y2="544" x1="144" />
            <wire x2="1824" y1="544" y2="704" x1="1824" />
            <wire x2="1936" y1="704" y2="704" x1="1824" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="1696" y1="432" y2="448" x1="1696" />
            <wire x2="1968" y1="448" y2="448" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="144" y="544" name="Branch" orien="R180" />
        <branch name="ALU_Control(2:0)">
            <wire x2="1776" y1="608" y2="608" x1="272" />
            <wire x2="1776" y1="608" y2="736" x1="1776" />
        </branch>
        <instance x="1536" y="1120" name="U1" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial" attrname="InstName" x="176" y="-144" type="instance" />
        </instance>
        <branch name="XLXN_26(31:0)">
            <wire x2="1536" y1="832" y2="832" x1="1312" />
        </branch>
        <instance x="832" y="1216" name="U2" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="160" y="-368" type="instance" />
        </instance>
        <iomarker fontsize="28" x="272" y="608" name="ALU_Control(2:0)" orien="R180" />
        <branch name="ALUSrc_B">
            <wire x2="1424" y1="672" y2="672" x1="192" />
            <wire x2="1424" y1="672" y2="1072" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="192" y="672" name="ALUSrc_B" orien="R180" />
        <branch name="RegWrite">
            <wire x2="1072" y1="720" y2="720" x1="176" />
        </branch>
        <iomarker fontsize="28" x="176" y="720" name="RegWrite" orien="R180" />
        <instance x="1344" y="1264" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_31(31:0)">
            <wire x2="1536" y1="1136" y2="1136" x1="1440" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="1344" y1="1104" y2="1104" x1="1312" />
            <wire x2="1344" y1="1104" y2="1168" x1="1344" />
            <wire x2="1408" y1="1168" y2="1168" x1="1344" />
            <wire x2="1344" y1="1168" y2="1472" x1="1344" />
            <wire x2="2208" y1="1472" y2="1472" x1="1344" />
            <wire x2="2224" y1="1472" y2="1472" x1="2208" />
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
            <wire x2="832" y1="1024" y2="1024" x1="768" />
        </branch>
        <instance x="672" y="1296" name="mux5" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="60" y="-63" type="instance" />
        </instance>
        <instance x="672" y="1152" name="mux2" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial" attrname="InstName" x="64" y="-86" type="instance" />
        </instance>
        <branch name="XLXN_35(31:0)">
            <wire x2="832" y1="1168" y2="1168" x1="768" />
        </branch>
        <branch name="MemtoReg">
            <wire x2="400" y1="1088" y2="1088" x1="192" />
            <wire x2="576" y1="1088" y2="1088" x1="400" />
            <wire x2="752" y1="1088" y2="1088" x1="576" />
            <wire x2="752" y1="1088" y2="1104" x1="752" />
        </branch>
        <branch name="inst_field(25:21)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="896" type="branch" />
            <wire x2="544" y1="896" y2="896" x1="480" />
            <wire x2="560" y1="896" y2="896" x1="544" />
            <wire x2="640" y1="896" y2="896" x1="560" />
            <wire x2="832" y1="896" y2="896" x1="640" />
        </branch>
        <branch name="inst_field(20:16)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="944" type="branch" />
            <wire x2="544" y1="944" y2="944" x1="480" />
            <wire x2="576" y1="944" y2="944" x1="544" />
            <wire x2="608" y1="944" y2="944" x1="576" />
            <wire x2="688" y1="944" y2="944" x1="608" />
            <wire x2="832" y1="944" y2="944" x1="688" />
            <wire x2="688" y1="944" y2="1040" x1="688" />
            <wire x2="736" y1="1040" y2="1040" x1="688" />
        </branch>
        <branch name="inst_field(15:11)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="544" y="1008" type="branch" />
            <wire x2="544" y1="1008" y2="1008" x1="480" />
            <wire x2="736" y1="1008" y2="1008" x1="544" />
        </branch>
        <bustap x2="480" y1="896" y2="896" x1="384" />
        <bustap x2="480" y1="944" y2="944" x1="384" />
        <bustap x2="480" y1="1008" y2="1008" x1="384" />
        <iomarker fontsize="28" x="240" y="896" name="inst_field(31:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="1088" name="MemtoReg" orien="R180" />
        <branch name="Data_in(31:0)">
            <wire x2="736" y1="1136" y2="1136" x1="224" />
        </branch>
        <iomarker fontsize="28" x="224" y="1136" name="Data_in(31:0)" orien="R180" />
        <branch name="RegDst">
            <wire x2="752" y1="832" y2="832" x1="160" />
            <wire x2="752" y1="832" y2="976" x1="752" />
        </branch>
        <iomarker fontsize="28" x="160" y="832" name="RegDst" orien="R180" />
        <branch name="inst_field(31:0)">
            <wire x2="304" y1="896" y2="896" x1="240" />
            <wire x2="336" y1="896" y2="896" x1="304" />
            <wire x2="384" y1="896" y2="896" x1="336" />
            <wire x2="336" y1="896" y2="944" x1="336" />
            <wire x2="384" y1="944" y2="944" x1="336" />
            <wire x2="336" y1="944" y2="1008" x1="336" />
            <wire x2="336" y1="1008" y2="1264" x1="336" />
            <wire x2="336" y1="1264" y2="1344" x1="336" />
            <wire x2="400" y1="1344" y2="1344" x1="336" />
            <wire x2="384" y1="1008" y2="1008" x1="336" />
        </branch>
        <bustap x2="496" y1="1344" y2="1344" x1="400" />
        <branch name="inst_field(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1344" type="branch" />
            <wire x2="560" y1="1344" y2="1344" x1="496" />
            <wire x2="960" y1="1344" y2="1344" x1="560" />
        </branch>
        <branch name="ALU_out(31:0)">
            <wire x2="736" y1="1200" y2="1200" x1="672" />
            <wire x2="672" y1="1200" y2="1408" x1="672" />
            <wire x2="1456" y1="1408" y2="1408" x1="672" />
            <wire x2="2048" y1="1408" y2="1408" x1="1456" />
            <wire x2="2048" y1="976" y2="976" x1="1984" />
            <wire x2="2048" y1="976" y2="1408" x1="2048" />
            <wire x2="2208" y1="976" y2="976" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2208" y="976" name="ALU_out(31:0)" orien="R0" />
        <branch name="XLXN_49">
            <wire x2="2000" y1="912" y2="912" x1="1984" />
            <wire x2="2000" y1="704" y2="912" x1="2000" />
        </branch>
        <iomarker fontsize="28" x="2224" y="1472" name="Data_out(31:0)" orien="R0" />
        <branch name="pc_4(31:28),inst_field(25:0),N0,N0">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="336" y="112" type="branch" />
            <wire x2="336" y1="112" y2="112" x1="112" />
            <wire x2="1728" y1="112" y2="112" x1="336" />
            <wire x2="1728" y1="112" y2="288" x1="1728" />
            <wire x2="1776" y1="288" y2="288" x1="1728" />
        </branch>
    </sheet>
</drawing>