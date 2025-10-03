//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Fri Oct  3 18:58:10 2025
//Host        : DESKTOP-C49KPKO running 64-bit major release  (build 9200)
//Command     : generate_target Frequency_Synthesizer.bd
//Design      : Frequency_Synthesizer
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Frequency_Synthesizer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Frequency_Synthesizer,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Frequency_Synthesizer.hwdef" *) 
module Frequency_Synthesizer
   (HOP_FREQUENCY_OUT,
    HOP_SEQUENCE,
    M_DATA_TVALID,
    M_PHASE_TVALID,
    PHASE_TDATA,
    RST_N,
    SYSTEM_CLOCK_1MHZ,
    S_PHASE_TVALID);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HOP_FREQUENCY_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HOP_FREQUENCY_OUT, LAYERED_METADATA undef" *) output [15:0]HOP_FREQUENCY_OUT;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HOP_SEQUENCE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HOP_SEQUENCE, LAYERED_METADATA undef" *) input [1:0]HOP_SEQUENCE;
  output M_DATA_TVALID;
  output M_PHASE_TVALID;
  output [31:0]PHASE_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input RST_N;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSTEM_CLOCK_1MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSTEM_CLOCK_1MHZ, CLK_DOMAIN Frequency_Synthesizer_SYSTEM_CLOCK_1MHZ, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input SYSTEM_CLOCK_1MHZ;
  input S_PHASE_TVALID;

  wire [1:0]HOP_SEQUENCE_1;
  wire [31:0]Hopping_Table_0_fcontrol_word;
  wire RST_N_1;
  wire SYSTEM_CLOCK_1MHZ_1;
  wire S_PHASE_TVALID_1;
  wire [15:0]dds_compiler_0_m_axis_data_tdata;
  wire dds_compiler_0_m_axis_data_tvalid;
  wire [31:0]dds_compiler_0_m_axis_phase_tdata;
  wire dds_compiler_0_m_axis_phase_tvalid;
  wire [0:0]util_vector_logic_0_Res;

  assign HOP_FREQUENCY_OUT[15:0] = dds_compiler_0_m_axis_data_tdata;
  assign HOP_SEQUENCE_1 = HOP_SEQUENCE[1:0];
  assign M_DATA_TVALID = dds_compiler_0_m_axis_data_tvalid;
  assign M_PHASE_TVALID = dds_compiler_0_m_axis_phase_tvalid;
  assign PHASE_TDATA[31:0] = dds_compiler_0_m_axis_phase_tdata;
  assign RST_N_1 = RST_N;
  assign SYSTEM_CLOCK_1MHZ_1 = SYSTEM_CLOCK_1MHZ;
  assign S_PHASE_TVALID_1 = S_PHASE_TVALID;
  Frequency_Synthesizer_Hopping_Table_0_0 Hopping_Table_0
       (.clk(util_vector_logic_0_Res),
        .fcontrol_word(Hopping_Table_0_fcontrol_word),
        .hop_sequence(HOP_SEQUENCE_1),
        .rst_n(RST_N_1));
  Frequency_Synthesizer_dds_compiler_0_0 dds_compiler_0
       (.aclk(SYSTEM_CLOCK_1MHZ_1),
        .m_axis_data_tdata(dds_compiler_0_m_axis_data_tdata),
        .m_axis_data_tvalid(dds_compiler_0_m_axis_data_tvalid),
        .m_axis_phase_tdata(dds_compiler_0_m_axis_phase_tdata),
        .m_axis_phase_tvalid(dds_compiler_0_m_axis_phase_tvalid),
        .s_axis_phase_tdata(Hopping_Table_0_fcontrol_word),
        .s_axis_phase_tvalid(S_PHASE_TVALID_1));
  Frequency_Synthesizer_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(1'b0),
        .Res(util_vector_logic_0_Res));
endmodule
