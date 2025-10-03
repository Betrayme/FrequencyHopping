-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Oct  3 18:55:59 2025
-- Host        : DESKTOP-C49KPKO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/WORK_SPCAE/Vivado_Project/FrequencyHopping/FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ip/Frequency_Synthesizer_Hopping_Table_0_0/Frequency_Synthesizer_Hopping_Table_0_0_stub.vhdl
-- Design      : Frequency_Synthesizer_Hopping_Table_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu47dr-ffve1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Frequency_Synthesizer_Hopping_Table_0_0 is
  Port ( 
    hop_sequence : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    fcontrol_word : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end Frequency_Synthesizer_Hopping_Table_0_0;

architecture stub of Frequency_Synthesizer_Hopping_Table_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "hop_sequence[1:0],clk,rst_n,fcontrol_word[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Hopping_Table,Vivado 2021.1";
begin
end;
