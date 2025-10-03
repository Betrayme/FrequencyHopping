// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Oct  3 18:55:59 2025
// Host        : DESKTOP-C49KPKO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/WORK_SPCAE/Vivado_Project/FrequencyHopping/FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ip/Frequency_Synthesizer_Hopping_Table_0_0/Frequency_Synthesizer_Hopping_Table_0_0_stub.v
// Design      : Frequency_Synthesizer_Hopping_Table_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu47dr-ffve1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Hopping_Table,Vivado 2021.1" *)
module Frequency_Synthesizer_Hopping_Table_0_0(hop_sequence, clk, rst_n, fcontrol_word)
/* synthesis syn_black_box black_box_pad_pin="hop_sequence[1:0],clk,rst_n,fcontrol_word[31:0]" */;
  input [1:0]hop_sequence;
  input clk;
  input rst_n;
  output [31:0]fcontrol_word;
endmodule
