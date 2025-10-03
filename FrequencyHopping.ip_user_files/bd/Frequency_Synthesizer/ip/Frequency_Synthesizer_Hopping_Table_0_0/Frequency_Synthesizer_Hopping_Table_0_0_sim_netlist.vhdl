-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Oct  3 18:55:59 2025
-- Host        : DESKTOP-C49KPKO running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/WORK_SPCAE/Vivado_Project/FrequencyHopping/FrequencyHopping.gen/sources_1/bd/Frequency_Synthesizer/ip/Frequency_Synthesizer_Hopping_Table_0_0/Frequency_Synthesizer_Hopping_Table_0_0_sim_netlist.vhdl
-- Design      : Frequency_Synthesizer_Hopping_Table_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu47dr-ffve1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Frequency_Synthesizer_Hopping_Table_0_0_Hopping_Table is
  port (
    fcontrol_word : out STD_LOGIC_VECTOR ( 6 downto 0 );
    hop_sequence : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Frequency_Synthesizer_Hopping_Table_0_0_Hopping_Table : entity is "Hopping_Table";
end Frequency_Synthesizer_Hopping_Table_0_0_Hopping_Table;

architecture STRUCTURE of Frequency_Synthesizer_Hopping_Table_0_0_Hopping_Table is
  signal \fcontrol_word[15]_i_1_n_0\ : STD_LOGIC;
  signal \fcontrol_word[23]_i_1_n_0\ : STD_LOGIC;
  signal \fcontrol_word[25]_i_1_n_0\ : STD_LOGIC;
  signal \fcontrol_word[26]_i_1_n_0\ : STD_LOGIC;
  signal \fcontrol_word[27]_i_1_n_0\ : STD_LOGIC;
  signal \fcontrol_word[27]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fcontrol_word[15]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \fcontrol_word[23]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fcontrol_word[25]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \fcontrol_word[27]_i_1\ : label is "soft_lutpair0";
begin
\fcontrol_word[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hop_sequence(0),
      I1 => hop_sequence(1),
      O => \fcontrol_word[15]_i_1_n_0\
    );
\fcontrol_word[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => hop_sequence(1),
      I1 => hop_sequence(0),
      O => \fcontrol_word[23]_i_1_n_0\
    );
\fcontrol_word[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hop_sequence(0),
      I1 => hop_sequence(1),
      O => \fcontrol_word[25]_i_1_n_0\
    );
\fcontrol_word[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => hop_sequence(1),
      I1 => hop_sequence(0),
      O => \fcontrol_word[26]_i_1_n_0\
    );
\fcontrol_word[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => hop_sequence(0),
      I1 => hop_sequence(1),
      O => \fcontrol_word[27]_i_1_n_0\
    );
\fcontrol_word[27]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \fcontrol_word[27]_i_2_n_0\
    );
\fcontrol_word_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \fcontrol_word[27]_i_2_n_0\,
      D => hop_sequence(1),
      Q => fcontrol_word(0)
    );
\fcontrol_word_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \fcontrol_word[27]_i_2_n_0\,
      D => hop_sequence(0),
      Q => fcontrol_word(1)
    );
\fcontrol_word_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \fcontrol_word[27]_i_2_n_0\,
      D => \fcontrol_word[15]_i_1_n_0\,
      Q => fcontrol_word(2)
    );
\fcontrol_word_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \fcontrol_word[27]_i_2_n_0\,
      D => \fcontrol_word[23]_i_1_n_0\,
      Q => fcontrol_word(3)
    );
\fcontrol_word_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \fcontrol_word[27]_i_2_n_0\,
      D => \fcontrol_word[25]_i_1_n_0\,
      Q => fcontrol_word(4)
    );
\fcontrol_word_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \fcontrol_word[27]_i_2_n_0\,
      D => \fcontrol_word[26]_i_1_n_0\,
      Q => fcontrol_word(5)
    );
\fcontrol_word_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \fcontrol_word[27]_i_2_n_0\,
      D => \fcontrol_word[27]_i_1_n_0\,
      Q => fcontrol_word(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Frequency_Synthesizer_Hopping_Table_0_0 is
  port (
    hop_sequence : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    fcontrol_word : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Frequency_Synthesizer_Hopping_Table_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Frequency_Synthesizer_Hopping_Table_0_0 : entity is "Frequency_Synthesizer_Hopping_Table_0_0,Hopping_Table,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Frequency_Synthesizer_Hopping_Table_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Frequency_Synthesizer_Hopping_Table_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Frequency_Synthesizer_Hopping_Table_0_0 : entity is "Hopping_Table,Vivado 2021.1";
end Frequency_Synthesizer_Hopping_Table_0_0;

architecture STRUCTURE of Frequency_Synthesizer_Hopping_Table_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^fcontrol_word\ : STD_LOGIC_VECTOR ( 27 downto 9 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 180.0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  fcontrol_word(31) <= \<const0>\;
  fcontrol_word(30) <= \<const0>\;
  fcontrol_word(29) <= \<const0>\;
  fcontrol_word(28) <= \<const0>\;
  fcontrol_word(27) <= \^fcontrol_word\(27);
  fcontrol_word(26) <= \^fcontrol_word\(24);
  fcontrol_word(25) <= \^fcontrol_word\(21);
  fcontrol_word(24) <= \^fcontrol_word\(24);
  fcontrol_word(23) <= \^fcontrol_word\(22);
  fcontrol_word(22 downto 21) <= \^fcontrol_word\(22 downto 21);
  fcontrol_word(20) <= \^fcontrol_word\(24);
  fcontrol_word(19 downto 18) <= \^fcontrol_word\(22 downto 21);
  fcontrol_word(17) <= \^fcontrol_word\(24);
  fcontrol_word(16) <= \^fcontrol_word\(22);
  fcontrol_word(15) <= \^fcontrol_word\(15);
  fcontrol_word(14) <= \^fcontrol_word\(12);
  fcontrol_word(13) <= \^fcontrol_word\(9);
  fcontrol_word(12) <= \^fcontrol_word\(12);
  fcontrol_word(11) <= \<const0>\;
  fcontrol_word(10) <= \<const0>\;
  fcontrol_word(9) <= \^fcontrol_word\(9);
  fcontrol_word(8) <= \^fcontrol_word\(12);
  fcontrol_word(7) <= \^fcontrol_word\(9);
  fcontrol_word(6) <= \^fcontrol_word\(12);
  fcontrol_word(5) <= \^fcontrol_word\(9);
  fcontrol_word(4) <= \^fcontrol_word\(12);
  fcontrol_word(3) <= \<const0>\;
  fcontrol_word(2) <= \<const0>\;
  fcontrol_word(1) <= \^fcontrol_word\(9);
  fcontrol_word(0) <= \^fcontrol_word\(12);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Frequency_Synthesizer_Hopping_Table_0_0_Hopping_Table
     port map (
      clk => clk,
      fcontrol_word(6) => \^fcontrol_word\(27),
      fcontrol_word(5) => \^fcontrol_word\(24),
      fcontrol_word(4) => \^fcontrol_word\(21),
      fcontrol_word(3) => \^fcontrol_word\(22),
      fcontrol_word(2) => \^fcontrol_word\(15),
      fcontrol_word(1) => \^fcontrol_word\(12),
      fcontrol_word(0) => \^fcontrol_word\(9),
      hop_sequence(1 downto 0) => hop_sequence(1 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
