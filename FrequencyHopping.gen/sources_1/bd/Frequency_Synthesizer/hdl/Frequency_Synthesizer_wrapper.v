//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Fri Oct  3 18:58:10 2025
//Host        : DESKTOP-C49KPKO running 64-bit major release  (build 9200)
//Command     : generate_target Frequency_Synthesizer_wrapper.bd
//Design      : Frequency_Synthesizer_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Frequency_Synthesizer_wrapper
   (HOP_FREQUENCY_OUT,
    HOP_SEQUENCE,
    M_DATA_TVALID,
    M_PHASE_TVALID,
    PHASE_TDATA,
    RST_N,
    SYSTEM_CLOCK_1MHZ,
    S_PHASE_TVALID);
  output [15:0]HOP_FREQUENCY_OUT;
  input [1:0]HOP_SEQUENCE;
  output M_DATA_TVALID;
  output M_PHASE_TVALID;
  output [31:0]PHASE_TDATA;
  input RST_N;
  input SYSTEM_CLOCK_1MHZ;
  input S_PHASE_TVALID;

  wire [15:0]HOP_FREQUENCY_OUT;
  wire [1:0]HOP_SEQUENCE;
  wire M_DATA_TVALID;
  wire M_PHASE_TVALID;
  wire [31:0]PHASE_TDATA;
  wire RST_N;
  wire SYSTEM_CLOCK_1MHZ;
  wire S_PHASE_TVALID;

  Frequency_Synthesizer Frequency_Synthesizer_i
       (.HOP_FREQUENCY_OUT(HOP_FREQUENCY_OUT),
        .HOP_SEQUENCE(HOP_SEQUENCE),
        .M_DATA_TVALID(M_DATA_TVALID),
        .M_PHASE_TVALID(M_PHASE_TVALID),
        .PHASE_TDATA(PHASE_TDATA),
        .RST_N(RST_N),
        .SYSTEM_CLOCK_1MHZ(SYSTEM_CLOCK_1MHZ),
        .S_PHASE_TVALID(S_PHASE_TVALID));
endmodule
