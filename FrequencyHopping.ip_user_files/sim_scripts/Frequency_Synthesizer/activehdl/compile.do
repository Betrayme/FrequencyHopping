vlib work
vlib activehdl

vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_17
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/dds_compiler_v6_0_21
vlib activehdl/xil_defaultlib
vlib activehdl/util_vector_logic_v2_0_1

vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_17 activehdl/mult_gen_v12_0_17
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 activehdl/xbip_dsp48_multadd_v3_0_6
vmap dds_compiler_v6_0_21 activehdl/dds_compiler_v6_0_21
vmap xil_defaultlib activehdl/xil_defaultlib
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ipshared/b417/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_17 -93 \
"../../../../FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ipshared/dd36/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work dds_compiler_v6_0_21 -93 \
"../../../../FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ipshared/7e37/hdl/dds_compiler_v6_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Frequency_Synthesizer/ip/Frequency_Synthesizer_dds_compiler_0_0/sim/Frequency_Synthesizer_dds_compiler_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Frequency_Synthesizer/ip/Frequency_Synthesizer_Hopping_Table_0_0/sim/Frequency_Synthesizer_Hopping_Table_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/Frequency_Synthesizer/ip/Frequency_Synthesizer_util_vector_logic_0_0/sim/Frequency_Synthesizer_util_vector_logic_0_0.v" \
"../../../bd/Frequency_Synthesizer/sim/Frequency_Synthesizer.v" \

vlog -work xil_defaultlib \
"glbl.v"

