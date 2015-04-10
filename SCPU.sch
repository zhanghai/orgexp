<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="reset" />
        <signal name="clk" />
        <signal name="Data_in(31:0)" />
        <signal name="inst_in(31:0)" />
        <signal name="inst_in(31:26)" />
        <signal name="inst_in(5:0)" />
        <signal name="inst_in(25:0)" />
        <signal name="RegDst" />
        <signal name="ALUSrc_B" />
        <signal name="MemtoReg" />
        <signal name="Jump" />
        <signal name="Branch" />
        <signal name="RegWrite" />
        <signal name="ALU_Control(2:0)" />
        <signal name="MIO_ready" />
        <signal name="INT" />
        <signal name="PC_out(31:0)" />
        <signal name="Addr_out(31:0)" />
        <signal name="Data_out(31:0)" />
        <signal name="mem_w" />
        <signal name="CPU_MIO" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="Data_in(31:0)" />
        <port polarity="Input" name="inst_in(31:0)" />
        <port polarity="Input" name="MIO_ready" />
        <port polarity="Input" name="INT" />
        <port polarity="Output" name="PC_out(31:0)" />
        <port polarity="Output" name="Addr_out(31:0)" />
        <port polarity="Output" name="Data_out(31:0)" />
        <port polarity="Output" name="mem_w" />
        <port polarity="Output" name="CPU_MIO" />
        <blockdef name="Data_path">
            <timestamp>2015-4-10T5:41:52</timestamp>
            <rect style="linewidth:W;linecolor:rgb(0,0,255);fillcolor:rgb(0,255,255)" width="352" x="64" y="-888" height="792" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-700" height="24" />
            <line x2="0" y1="-688" y2="-688" x1="64" />
            <rect width="64" x="0" y="-636" height="24" />
            <line x2="0" y1="-624" y2="-624" x1="64" />
            <line x2="0" y1="-800" y2="-800" x1="64" />
            <line x2="0" y1="-736" y2="-736" x1="64" />
            <rect width="64" x="416" y="-700" height="24" />
            <line x2="480" y1="-688" y2="-688" x1="416" />
            <rect width="64" x="416" y="-540" height="24" />
            <line x2="480" y1="-528" y2="-528" x1="416" />
            <rect width="64" x="416" y="-412" height="24" />
            <line x2="480" y1="-400" y2="-400" x1="416" />
        </blockdef>
        <blockdef name="SCPU_ctrl">
            <timestamp>2015-4-10T5:41:47</timestamp>
            <rect style="linewidth:W;linecolor:rgb(255,0,0);fillcolor:rgb(255,170,255);fillstyle:Solid" width="336" x="64" y="-576" height="576" />
            <line x2="464" y1="-544" y2="-544" x1="400" />
            <line x2="464" y1="-480" y2="-480" x1="400" />
            <line x2="464" y1="-416" y2="-416" x1="400" />
            <line x2="464" y1="-352" y2="-352" x1="400" />
            <line x2="464" y1="-288" y2="-288" x1="400" />
            <line x2="464" y1="-224" y2="-224" x1="400" />
            <rect width="64" x="400" y="-172" height="24" />
            <line x2="464" y1="-160" y2="-160" x1="400" />
            <line x2="464" y1="-32" y2="-32" x1="400" />
            <line x2="464" y1="-96" y2="-96" x1="400" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <rect width="64" x="0" y="-444" height="24" />
            <line x2="0" y1="-432" y2="-432" x1="64" />
        </blockdef>
        <block symbolname="SCPU_ctrl" name="Controller">
            <blockpin signalname="RegDst" name="RegDst" />
            <blockpin signalname="ALUSrc_B" name="ALUSrc_B" />
            <blockpin signalname="MemtoReg" name="MemtoReg" />
            <blockpin signalname="Jump" name="Jump" />
            <blockpin signalname="Branch" name="Branch" />
            <blockpin signalname="RegWrite" name="RegWrite" />
            <blockpin signalname="ALU_Control(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="CPU_MIO" name="CPU_MIO" />
            <blockpin signalname="mem_w" name="mem_w" />
            <blockpin signalname="inst_in(5:0)" name="Fun(5:0)" />
            <blockpin signalname="MIO_ready" name="MIO_ready" />
            <blockpin signalname="inst_in(31:26)" name="OPcode(5:0)" />
        </block>
        <block symbolname="Data_path" name="DataPath">
            <blockpin signalname="RegDst" name="RegDst" />
            <blockpin signalname="ALUSrc_B" name="ALUSrc_B" />
            <blockpin signalname="MemtoReg" name="MemtoReg" />
            <blockpin signalname="Jump" name="Jump" />
            <blockpin signalname="Branch" name="Branch" />
            <blockpin signalname="RegWrite" name="RegWrite" />
            <blockpin signalname="ALU_Control(2:0)" name="ALU_Control(2:0)" />
            <blockpin signalname="Data_in(31:0)" name="Data_in(31:0)" />
            <blockpin signalname="inst_in(25:0)" name="inst_field(25:0)" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="reset" name="rst" />
            <blockpin signalname="PC_out(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="Addr_out(31:0)" name="ALU_out(31:0)" />
            <blockpin signalname="Data_out(31:0)" name="Data_out(31:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="reset">
            <wire x2="880" y1="320" y2="320" x1="112" />
        </branch>
        <branch name="clk">
            <wire x2="880" y1="256" y2="256" x1="96" />
        </branch>
        <branch name="Data_in(31:0)">
            <wire x2="880" y1="368" y2="368" x1="224" />
        </branch>
        <branch name="inst_in(31:0)">
            <wire x2="240" y1="432" y2="432" x1="208" />
            <wire x2="240" y1="432" y2="624" x1="240" />
            <wire x2="240" y1="624" y2="704" x1="240" />
            <wire x2="352" y1="432" y2="432" x1="240" />
        </branch>
        <branch name="inst_in(31:26)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="336" y="624" type="branch" />
            <wire x2="336" y1="624" y2="624" x1="304" />
            <wire x2="352" y1="624" y2="624" x1="336" />
        </branch>
        <branch name="inst_in(5:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="320" y="704" type="branch" />
            <wire x2="320" y1="704" y2="704" x1="304" />
            <wire x2="352" y1="704" y2="704" x1="320" />
        </branch>
        <instance x="352" y="1056" name="Controller" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial;textcolor:rgb(255,0,0)" attrname="InstName" x="80" y="-528" type="instance" />
        </instance>
        <bustap x2="448" y1="432" y2="432" x1="352" />
        <branch name="inst_in(25:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="496" y="432" type="branch" />
            <wire x2="496" y1="432" y2="432" x1="448" />
            <wire x2="880" y1="432" y2="432" x1="496" />
        </branch>
        <instance x="880" y="1056" name="DataPath" orien="R0">
            <attrtext style="fontsize:58;fontname:Arial" attrname="InstName" x="144" y="-816" type="instance" />
        </instance>
        <branch name="RegDst">
            <wire x2="880" y1="512" y2="512" x1="816" />
        </branch>
        <branch name="ALUSrc_B">
            <wire x2="880" y1="576" y2="576" x1="816" />
        </branch>
        <branch name="MemtoReg">
            <wire x2="880" y1="640" y2="640" x1="816" />
        </branch>
        <branch name="Jump">
            <wire x2="880" y1="704" y2="704" x1="816" />
        </branch>
        <branch name="Branch">
            <wire x2="880" y1="768" y2="768" x1="816" />
        </branch>
        <branch name="RegWrite">
            <wire x2="880" y1="832" y2="832" x1="816" />
        </branch>
        <branch name="ALU_Control(2:0)">
            <wire x2="880" y1="896" y2="896" x1="816" />
        </branch>
        <bustap x2="304" y1="624" y2="624" x1="240" />
        <bustap x2="304" y1="704" y2="704" x1="240" />
        <branch name="MIO_ready">
            <wire x2="336" y1="992" y2="992" x1="192" />
            <wire x2="352" y1="992" y2="992" x1="336" />
        </branch>
        <branch name="INT">
            <wire x2="352" y1="1232" y2="1232" x1="112" />
        </branch>
        <branch name="PC_out(31:0)">
            <wire x2="1456" y1="368" y2="368" x1="1360" />
        </branch>
        <branch name="Addr_out(31:0)">
            <wire x2="1440" y1="528" y2="528" x1="1360" />
        </branch>
        <branch name="Data_out(31:0)">
            <wire x2="1424" y1="656" y2="656" x1="1360" />
        </branch>
        <branch name="mem_w">
            <wire x2="864" y1="960" y2="960" x1="816" />
            <wire x2="864" y1="960" y2="1088" x1="864" />
            <wire x2="1536" y1="1088" y2="1088" x1="864" />
        </branch>
        <branch name="CPU_MIO">
            <wire x2="832" y1="1024" y2="1024" x1="816" />
            <wire x2="832" y1="1024" y2="1248" x1="832" />
            <wire x2="1504" y1="1248" y2="1248" x1="832" />
        </branch>
        <iomarker fontsize="28" x="112" y="320" name="reset" orien="R180" />
        <iomarker fontsize="28" x="96" y="256" name="clk" orien="R180" />
        <iomarker fontsize="28" x="224" y="368" name="Data_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="208" y="432" name="inst_in(31:0)" orien="R180" />
        <iomarker fontsize="28" x="192" y="992" name="MIO_ready" orien="R180" />
        <iomarker fontsize="28" x="112" y="1232" name="INT" orien="R180" />
        <iomarker fontsize="28" x="1456" y="368" name="PC_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1440" y="528" name="Addr_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1424" y="656" name="Data_out(31:0)" orien="R0" />
        <iomarker fontsize="28" x="1536" y="1088" name="mem_w" orien="R0" />
        <iomarker fontsize="28" x="1504" y="1248" name="CPU_MIO" orien="R0" />
    </sheet>
</drawing>