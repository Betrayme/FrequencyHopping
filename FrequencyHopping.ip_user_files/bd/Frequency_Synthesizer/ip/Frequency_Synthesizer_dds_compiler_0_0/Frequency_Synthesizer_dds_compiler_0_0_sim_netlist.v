// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Oct  3 18:56:16 2025
// Host        : DESKTOP-C49KPKO running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/WORK_SPCAE/Vivado_Project/FrequencyHopping/FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ip/Frequency_Synthesizer_dds_compiler_0_0/Frequency_Synthesizer_dds_compiler_0_0_sim_netlist.v
// Design      : Frequency_Synthesizer_dds_compiler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu47dr-ffve1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Frequency_Synthesizer_dds_compiler_0_0,dds_compiler_v6_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_21,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module Frequency_Synthesizer_dds_compiler_0_0
   (aclk,
    s_axis_phase_tvalid,
    s_axis_phase_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    m_axis_phase_tvalid,
    m_axis_phase_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Frequency_Synthesizer_SYSTEM_CLOCK_1MHZ, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_PHASE, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 1000000, PHASE 0.0, CLK_DOMAIN Frequency_Synthesizer_SYSTEM_CLOCK_1MHZ, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_PHASE TDATA" *) input [7:0]s_axis_phase_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 1000000, PHASE 0.0, CLK_DOMAIN Frequency_Synthesizer_SYSTEM_CLOCK_1MHZ, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 16} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_cosine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cosine} enabled {attribs {resolve_type generated dependency cosine_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency cosine_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency cosine_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} field_sine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value sine} enabled {attribs {resolve_type generated dependency sine_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency sine_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency sine_offset format long minimum {} maximum {}} value 8} real {fixed {fractwidth {attribs {resolve_type generated dependency sine_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}} TDATA_WIDTH 16 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [15:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_PHASE, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 1000000, PHASE 0.0, CLK_DOMAIN Frequency_Synthesizer_SYSTEM_CLOCK_1MHZ, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_phase_out {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value phase_out} enabled {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency phase_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency phase_fractwidth format long minimum {} maximum {}} value 8} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) output m_axis_phase_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_PHASE TDATA" *) output [7:0]m_axis_phase_tdata;

  wire aclk;
  wire [15:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [7:0]m_axis_phase_tdata;
  wire m_axis_phase_tvalid;
  wire [7:0]s_axis_phase_tdata;
  wire s_axis_phase_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [7:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [7:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [7:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "8" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "1" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "1" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "1" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "16" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "8" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "1" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "6" *) 
  (* C_PHASE_INCREMENT = "3" *) 
  (* C_PHASE_INCREMENT_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "8" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  Frequency_Synthesizer_dds_compiler_0_0_dds_compiler_v6_0_21 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[7:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[7:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[7:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(m_axis_phase_tdata),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(m_axis_phase_tvalid),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(s_axis_phase_tdata),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(s_axis_phase_tvalid));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
G48zqn+fi526JImrEhdGgMokv9H3k75JrpftaXiPFPxo68o5BYN+R3EZfCcWAjd19tBJh/ZeS2bh
AQtqoGy38GP3esZDipHr26C5g76y40KMomaj6iuJkjOUs28prNByiLbFL+IeDOE/9gB85G/pEP+w
0pEY4w0DFELH2ts4OLE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UFIOprsittmtW+qhCu+N1cM7qZbuO97UhVsyowEVVgxe1O5kSJyQ8j5sgZ3PK9qlFXRD7ESm4zDM
aMZfWBQe/4W1WNaXAjIMNtXM4F5adLHdu4b90L19J5iF903U8qoEVtrqj6qSAXK4Awir34jSY/W/
3oC3SzT77TLXjXaQTFI4z9GvxCcyaw1228fzT6BuNxA/FbYayaDfKB+0DDi7F1oHlFt6boRsXLvo
k0oxUH2InYSEMHpCrqDecOfTNqL3xU+DUpz6sXd3p8JWySwUqkoRIgkG/NuA5xXgBAGsTLoU9jfH
z7Bli5x8bq4CbQSuPGtEEWuM3HJYtNZIMT1pLw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
WsndkiURvFPgbSqLwOrCgjJL8j7bhd1TtewJj7BXRa9mAbjFm855lE/XV2RTnZ3KbSibaz+QeDso
JYDGHhq4y+jgZbEthOaFm+jJ8MoSilnKfNzWzFtg5psVgI3VsttdxfhX4lzLP7bFtKHE2eyjE3kJ
w4pxqiply+M1ja9vGDI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QNUmcqhTUypgyCGbFZjl6TDf3H5aAknvixYr0i9c++eVGmNjwDvCnj53XT+HeaQAZ72nwhYi0yoC
vVrwlKQCgmgbZ96nxPUQE3TQdoG89J6gM0CWov6RdrQI11/LUnkaYJEbbXpyG/MUqwqRJlEUIvrY
yqZeHDO+8BrH6FjpYGu2jrrB56rN8kEKkbcJaDHHEq6qVQGyLSOvMtZy1Kjzc7wzvYssBxUQpek5
a5xixNI8DaTNTqb/3FVNOsbW2Uf1bbT/aAQyn6b0cNI1Gy0vRrksg9x0MlTgJpD14kQFf2UqtzJZ
z23ljTkUCHiR2BMSbdx9DDZ/iuvm1za89fEO1w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
xmAGYmzL8V/3nI/CuvCwtE2Ppthi+kVh5Ox//PlyUTRogEOypoX3FxITsPlZk+z2TJFBOn+uC/L/
9HeHGFwV6flfTiuWgbVDHO+J0jZ0Cr3Rn7rEQC+IoohMGSnyLwoZYOxvvm79P7zVH+AioNYF03Ep
OH73DaNvMFxA1FXC4gByuGhNYs8b7fVkqsTq3Kiq8zCxVUwgdEB+Cc92LnEmsnjiVGu7Dif229iJ
x4L+8IMcY9cx9oU4+ST7UIMKv0aEpYyaZ4b+Qvve9yM6a4ivz45+2Eiodpas0qX3+T69/p9Ak1P5
E+6HryjtDIfSo/hU7T2Tw/BqzJqYaxoUO3kNuQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZjIVWLlNGk1BmXuX4sKezwy06d6C4zYl7uH7M9ia6ERz/Ww1FtiEGcXZc4hipNoF6AsRqiWUl1NY
7wDshv/SGlpZ8xEgfMosIIEjg8euYUoT4rSXSZ4lrPfmqmMgtTinNmWNUyGcW+9jpOhKQR02UyzT
dXWJkuf36HdE36yNg4VBEyMSImVtgMlQHXDihgIj4F4yo052kzM4e7dKd6/RbXuhwthr+3kztThS
BpZzWkF8W3YVvvC1sJD5BDjOxkt33gkNUC2Dm1ODZNKf4IRvKR0keeH6Twle6YpLxGfyuA2WttGo
BxHlEcPEpnSxT1+BKqXqQwihzQgnvcIrUShIQw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bk+ChxzwrD6gJWuOEUVQ5+b177Ad+QuIqgwK7ImLlQ1sI15MXhN4T6OZ4PzA+JFYa3C0Xw73MmTq
F8uKsxMaDMWN73PxGxiooPQSvmF5+X4H7puWfLrCvKBDSe5TeGgvDCEGcJ0wF6uC2Ik6cpEX+c2t
RDe8Us1GVIyR8WYiJdjWPN4uLeSlWDjY3ydv1bBr1Gf3PN8FUqOKszA/kOoRrUtfxzvTHo5IZ/6Q
nNiXKXGIbP4nacgT+pJF8RPrW7G0HcxV/j6V8W1FMBGQf5+Hp9fLn/UIQ7JMuXA4M0uRM5zxuyBk
v5qZwHyLGHq6matJdpEc2kD2Mn7WV7QzmGDL8Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
eHFGsOEoW1o8+YeVqkRD00DZxLsalWi8/WQGoOirU/XQniUxgbUn6GHYE5NZPd1G/YRFm0owyRM2
UBCCeqEplpsyCwbN6fdw8NL1AvYPBvjWREuqlBmiiz/qcPydi2eSnQd3BukpBHjFosNdhrSzEUmf
RM0O7vVIYEEL/T/VgEH2OtQn2AlY/7KsJIaeSM+0dzbrJYq9sBjNVSv+6cbhxHilV8EhFrqsLC6q
dg81kXUQ+FP8AEfVyphy+b56D5lSr76cmh+4t3BnW2BzWSMw71NXCr/3dJ1CFIhqSuxPWXYNGKWT
/G5Y2HIGmyDvXy5h98dAKrHTzyr9I+New0T/QJ2vn/D23bWHMlavcQiwgXDDd9W5LgBDDYzOPNIe
EbLlQvd3+g/1YXTh20CFlyUHr7QWIg3q8rJUPrDW02TF/yA58QmtqeNKcajU+ovz+MQs46A1Masf
lA8NSjgxnwjwF84KFhRAkbkQYKRj3A4qSoMWtkVBBOJptYUTdRxrqTSw

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lP6C+SA0ixtbv/72WU1aGMtCkbHPYfEkhd/yCt2JHMlc4/ktEqfOlQU6wmMCAgj1c8kT+kpuE+Pq
XyaVuy+WtLonN7GhgCezdiCzK7G3yrPOS0Y0Ql+oW0ImRLYFQlotUXc9kDQYqOQoy5+f7z5Qj9SP
a1llGKVyg4R9dCwq1koUuis7q1WWEu+VBwTi48/Hw69NnHc4EJHtgNqaOMhc/g3cv/hrlrIRP0OJ
NBABVMGq0yl64qml/SMnVaRAWFi8hlisJaLP+/Oqug2CijSaeSRXy3O6TOUoUaUDduLpMkF2XnZw
xCqP8DzrsN7tre8H4Q/tC3eihkwhBhPzXfs0Mg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
K5uYKKkuqVBiNyqGJOZbYfWPb5aDNu5ol7AL0NIdcsrmnLQzmPpSNwxw3Svid2faTBhpVcEJ38If
x9CIpOmsRsYXMrY3XcmTs5k5ZQmN6iSjwFncdV+OtpqwUfqf/ggP3ePEgjxAIEHd8Rzdz1tQy4cI
ZtI7h4YXvglZaADROaYoWAiwd2f2nvufNsrCkwU+oEltubsvVwuQmbidusBehCqL2fpyd+5yg8jE
SqwtCG3hr0JaFSIU+KFssR1DtwjLOspb6BA0acyH3ppqg7C5zVmIGYpQIRSrfe/+Ajk0vFg6GA9h
avhz+9dkt/GY+VWKMN/vhWqbmmyPJoUpOSL66w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
3jjzg1/78WsT9FgRedCXj5yxphOESsKEezoA2Eky6dA4E6c8rQvqXXHjESsqZMKGGB2z9IsrWv4w
QN++KozneThzd/5Clfkdwr2J1sOT0Giotpp03LkEaZaV/2n62CyKMEr4r60B3rGL07rSCML+KU2i
0j+P1gXqwLq06BFglwuRfPnLSbnbZIVQnyCPIRNDMdf3/ECyY59q1z/zyMTs9BNwitJIOHfU+k9g
UaFj8MTl0xF7jcuoYns2dfRBeFPLngdp6djwxOamYWj1hrCTAQoJVYayojh3R29G7EDd1+IZpkGq
wV5emAsaLh3geUM6SzZAXH5AsmJz/JtyVTPGkw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 62080)
`pragma protect data_block
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
1ZEXYUT0cg==
`pragma protect end_protected
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
