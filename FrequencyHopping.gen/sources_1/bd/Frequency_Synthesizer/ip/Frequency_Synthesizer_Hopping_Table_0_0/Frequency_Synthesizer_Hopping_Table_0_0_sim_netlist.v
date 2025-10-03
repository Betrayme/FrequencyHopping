// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Oct  3 18:55:59 2025
// Host        : DESKTOP-C49KPKO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/WORK_SPCAE/Vivado_Project/FrequencyHopping/FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ip/Frequency_Synthesizer_Hopping_Table_0_0/Frequency_Synthesizer_Hopping_Table_0_0_sim_netlist.v
// Design      : Frequency_Synthesizer_Hopping_Table_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu47dr-ffve1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Frequency_Synthesizer_Hopping_Table_0_0,Hopping_Table,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Hopping_Table,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module Frequency_Synthesizer_Hopping_Table_0_0
   (hop_sequence,
    clk,
    rst_n,
    fcontrol_word);
  input [1:0]hop_sequence;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 180.0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output [31:0]fcontrol_word;

  wire \<const0> ;
  wire clk;
  wire [27:9]\^fcontrol_word ;
  wire [1:0]hop_sequence;
  wire rst_n;

  assign fcontrol_word[31] = \<const0> ;
  assign fcontrol_word[30] = \<const0> ;
  assign fcontrol_word[29] = \<const0> ;
  assign fcontrol_word[28] = \<const0> ;
  assign fcontrol_word[27] = \^fcontrol_word [27];
  assign fcontrol_word[26] = \^fcontrol_word [24];
  assign fcontrol_word[25] = \^fcontrol_word [21];
  assign fcontrol_word[24] = \^fcontrol_word [24];
  assign fcontrol_word[23] = \^fcontrol_word [22];
  assign fcontrol_word[22:21] = \^fcontrol_word [22:21];
  assign fcontrol_word[20] = \^fcontrol_word [24];
  assign fcontrol_word[19:18] = \^fcontrol_word [22:21];
  assign fcontrol_word[17] = \^fcontrol_word [24];
  assign fcontrol_word[16] = \^fcontrol_word [22];
  assign fcontrol_word[15] = \^fcontrol_word [15];
  assign fcontrol_word[14] = \^fcontrol_word [12];
  assign fcontrol_word[13] = \^fcontrol_word [9];
  assign fcontrol_word[12] = \^fcontrol_word [12];
  assign fcontrol_word[11] = \<const0> ;
  assign fcontrol_word[10] = \<const0> ;
  assign fcontrol_word[9] = \^fcontrol_word [9];
  assign fcontrol_word[8] = \^fcontrol_word [12];
  assign fcontrol_word[7] = \^fcontrol_word [9];
  assign fcontrol_word[6] = \^fcontrol_word [12];
  assign fcontrol_word[5] = \^fcontrol_word [9];
  assign fcontrol_word[4] = \^fcontrol_word [12];
  assign fcontrol_word[3] = \<const0> ;
  assign fcontrol_word[2] = \<const0> ;
  assign fcontrol_word[1] = \^fcontrol_word [9];
  assign fcontrol_word[0] = \^fcontrol_word [12];
  GND GND
       (.G(\<const0> ));
  Frequency_Synthesizer_Hopping_Table_0_0_Hopping_Table inst
       (.clk(clk),
        .fcontrol_word({\^fcontrol_word [27],\^fcontrol_word [24],\^fcontrol_word [21],\^fcontrol_word [22],\^fcontrol_word [15],\^fcontrol_word [12],\^fcontrol_word [9]}),
        .hop_sequence(hop_sequence),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "Hopping_Table" *) 
module Frequency_Synthesizer_Hopping_Table_0_0_Hopping_Table
   (fcontrol_word,
    hop_sequence,
    clk,
    rst_n);
  output [6:0]fcontrol_word;
  input [1:0]hop_sequence;
  input clk;
  input rst_n;

  wire clk;
  wire [6:0]fcontrol_word;
  wire \fcontrol_word[15]_i_1_n_0 ;
  wire \fcontrol_word[23]_i_1_n_0 ;
  wire \fcontrol_word[25]_i_1_n_0 ;
  wire \fcontrol_word[26]_i_1_n_0 ;
  wire \fcontrol_word[27]_i_1_n_0 ;
  wire \fcontrol_word[27]_i_2_n_0 ;
  wire [1:0]hop_sequence;
  wire rst_n;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fcontrol_word[15]_i_1 
       (.I0(hop_sequence[0]),
        .I1(hop_sequence[1]),
        .O(\fcontrol_word[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fcontrol_word[23]_i_1 
       (.I0(hop_sequence[1]),
        .I1(hop_sequence[0]),
        .O(\fcontrol_word[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \fcontrol_word[25]_i_1 
       (.I0(hop_sequence[0]),
        .I1(hop_sequence[1]),
        .O(\fcontrol_word[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \fcontrol_word[26]_i_1 
       (.I0(hop_sequence[1]),
        .I1(hop_sequence[0]),
        .O(\fcontrol_word[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \fcontrol_word[27]_i_1 
       (.I0(hop_sequence[0]),
        .I1(hop_sequence[1]),
        .O(\fcontrol_word[27]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \fcontrol_word[27]_i_2 
       (.I0(rst_n),
        .O(\fcontrol_word[27]_i_2_n_0 ));
  FDCE \fcontrol_word_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\fcontrol_word[27]_i_2_n_0 ),
        .D(hop_sequence[1]),
        .Q(fcontrol_word[0]));
  FDCE \fcontrol_word_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\fcontrol_word[27]_i_2_n_0 ),
        .D(hop_sequence[0]),
        .Q(fcontrol_word[1]));
  FDCE \fcontrol_word_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\fcontrol_word[27]_i_2_n_0 ),
        .D(\fcontrol_word[15]_i_1_n_0 ),
        .Q(fcontrol_word[2]));
  FDCE \fcontrol_word_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\fcontrol_word[27]_i_2_n_0 ),
        .D(\fcontrol_word[23]_i_1_n_0 ),
        .Q(fcontrol_word[3]));
  FDCE \fcontrol_word_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\fcontrol_word[27]_i_2_n_0 ),
        .D(\fcontrol_word[25]_i_1_n_0 ),
        .Q(fcontrol_word[4]));
  FDCE \fcontrol_word_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\fcontrol_word[27]_i_2_n_0 ),
        .D(\fcontrol_word[26]_i_1_n_0 ),
        .Q(fcontrol_word[5]));
  FDCE \fcontrol_word_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\fcontrol_word[27]_i_2_n_0 ),
        .D(\fcontrol_word[27]_i_1_n_0 ),
        .Q(fcontrol_word[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
