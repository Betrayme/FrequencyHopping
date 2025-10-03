// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Oct  3 18:58:53 2025
// Host        : DESKTOP-C49KPKO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/WORK_SPCAE/Vivado_Project/FrequencyHopping/FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ip/Frequency_Synthesizer_dds_compiler_0_0/Frequency_Synthesizer_dds_compiler_0_0_stub.v
// Design      : Frequency_Synthesizer_dds_compiler_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu47dr-ffve1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dds_compiler_v6_0_21,Vivado 2021.1" *)
module Frequency_Synthesizer_dds_compiler_0_0(aclk, s_axis_phase_tvalid, 
  s_axis_phase_tdata, m_axis_data_tvalid, m_axis_data_tdata, m_axis_phase_tvalid, 
  m_axis_phase_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_phase_tvalid,s_axis_phase_tdata[31:0],m_axis_data_tvalid,m_axis_data_tdata[15:0],m_axis_phase_tvalid,m_axis_phase_tdata[31:0]" */;
  input aclk;
  input s_axis_phase_tvalid;
  input [31:0]s_axis_phase_tdata;
  output m_axis_data_tvalid;
  output [15:0]m_axis_data_tdata;
  output m_axis_phase_tvalid;
  output [31:0]m_axis_phase_tdata;
endmodule
