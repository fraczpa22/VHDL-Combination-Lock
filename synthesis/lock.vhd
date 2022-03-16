-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Jan 26 11:09:32 2022
-- Host        : Lab401-12 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force lock.vhd
-- Design      : lock
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lock is
  port (
    CLR : in STD_LOGIC;
    BACK : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    DATA : in STD_LOGIC_VECTOR ( 3 downto 0 );
    PUSH : in STD_LOGIC;
    OK : out STD_LOGIC;
    NOT_OK : out STD_LOGIC;
    WRONG : out STD_LOGIC;
    JAKI_STAN : out STD_LOGIC_VECTOR ( 4 downto 0 );
    ILE_PROB : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of lock : entity is true;
end lock;

architecture STRUCTURE of lock is
  signal BACK_IBUF : STD_LOGIC;
  signal CE_IBUF : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal DATA_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FSM_sequential_stan_nastepny_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stan_nastepny_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stan_nastepny_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stan_nastepny_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stan_nastepny_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stan_nastepny_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stan_nastepny_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stan_nastepny_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stan_nastepny_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_stan_nastepny_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal ILE_PROB_OBUF : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ILE_PROB_temp : STD_LOGIC;
  signal \ILE_PROB_temp_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ILE_PROB_temp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \ILE_PROB_temp_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal JAKI_STAN_OBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NOT_OK_OBUF : STD_LOGIC;
  signal NOT_OK_temp : STD_LOGIC;
  signal NOT_OK_temp_reg_i_2_n_0 : STD_LOGIC;
  signal OK_OBUF : STD_LOGIC;
  signal OK_temp : STD_LOGIC;
  signal OK_temp_reg_i_1_n_0 : STD_LOGIC;
  signal PUSH_IBUF : STD_LOGIC;
  signal Q_temp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \Q_temp_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \Q_temp_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal WRONG_OBUF : STD_LOGIC;
  signal WRONG_temp : STD_LOGIC;
  signal WRONG_temp_reg_i_1_n_0 : STD_LOGIC;
  signal stan_nastepny : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal stan_obecny : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_stan_nastepny_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_stan_nastepny_reg[0]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_stan_nastepny_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_stan_nastepny_reg[1]_i_1\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_stan_nastepny_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \FSM_sequential_stan_nastepny_reg[2]_i_3\ : label is "soft_lutpair14";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stan_obecny_reg[0]\ : label is "s1:001,s3:011,s2:010,s0:000,s4:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stan_obecny_reg[1]\ : label is "s1:001,s3:011,s2:010,s0:000,s4:100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stan_obecny_reg[2]\ : label is "s1:001,s3:011,s2:010,s0:000,s4:100";
  attribute XILINX_LEGACY_PRIM of \ILE_PROB_temp_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \ILE_PROB_temp_reg[0]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \ILE_PROB_temp_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \ILE_PROB_temp_reg[1]_i_1\ : label is "soft_lutpair15";
  attribute XILINX_LEGACY_PRIM of \ILE_PROB_temp_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \ILE_PROB_temp_reg[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \JAKI_STAN_OBUF[0]_inst_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \JAKI_STAN_OBUF[1]_inst_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \JAKI_STAN_OBUF[2]_inst_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \JAKI_STAN_OBUF[3]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \JAKI_STAN_OBUF[4]_inst_i_1\ : label is "soft_lutpair6";
  attribute XILINX_LEGACY_PRIM of NOT_OK_temp_reg : label is "LD";
  attribute SOFT_HLUTNM of NOT_OK_temp_reg_i_2 : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of OK_temp_reg : label is "LD";
  attribute SOFT_HLUTNM of OK_temp_reg_i_1 : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[0]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[0]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[10]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Q_temp_reg[11]_i_2\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[12]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[12]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[13]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[13]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[14]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[14]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[15]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[15]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Q_temp_reg[15]_i_2\ : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[1]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[1]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[2]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[2]_i_1\ : label is "soft_lutpair4";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[3]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[3]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[4]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[4]_i_1\ : label is "soft_lutpair13";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[5]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[5]_i_1\ : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[6]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[6]_i_1\ : label is "soft_lutpair9";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[7]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Q_temp_reg[7]_i_2\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[8]_i_1\ : label is "soft_lutpair7";
  attribute XILINX_LEGACY_PRIM of \Q_temp_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \Q_temp_reg[9]_i_1\ : label is "soft_lutpair8";
  attribute XILINX_LEGACY_PRIM of WRONG_temp_reg : label is "LD";
begin
BACK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => BACK,
      O => BACK_IBUF
    );
CE_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CE,
      O => CE_IBUF
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
CLR_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLR,
      O => CLR_IBUF
    );
\DATA_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(0),
      O => DATA_IBUF(0)
    );
\DATA_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(1),
      O => DATA_IBUF(1)
    );
\DATA_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(2),
      O => DATA_IBUF(2)
    );
\DATA_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(3),
      O => DATA_IBUF(3)
    );
\FSM_sequential_stan_nastepny_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_stan_nastepny_reg[0]_i_1_n_0\,
      G => \FSM_sequential_stan_nastepny_reg[2]_i_2_n_0\,
      GE => '1',
      Q => stan_nastepny(0)
    );
\FSM_sequential_stan_nastepny_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000E5A"
    )
        port map (
      I0 => PUSH_IBUF,
      I1 => stan_obecny(1),
      I2 => stan_obecny(0),
      I3 => BACK_IBUF,
      I4 => stan_obecny(2),
      O => \FSM_sequential_stan_nastepny_reg[0]_i_1_n_0\
    );
\FSM_sequential_stan_nastepny_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_stan_nastepny_reg[1]_i_1_n_0\,
      G => \FSM_sequential_stan_nastepny_reg[2]_i_2_n_0\,
      GE => '1',
      Q => stan_nastepny(1)
    );
\FSM_sequential_stan_nastepny_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00003CC4"
    )
        port map (
      I0 => BACK_IBUF,
      I1 => stan_obecny(1),
      I2 => stan_obecny(0),
      I3 => PUSH_IBUF,
      I4 => stan_obecny(2),
      O => \FSM_sequential_stan_nastepny_reg[1]_i_1_n_0\
    );
\FSM_sequential_stan_nastepny_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \FSM_sequential_stan_nastepny_reg[2]_i_1_n_0\,
      G => \FSM_sequential_stan_nastepny_reg[2]_i_2_n_0\,
      GE => '1',
      Q => stan_nastepny(2)
    );
\FSM_sequential_stan_nastepny_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFFFF80808080"
    )
        port map (
      I0 => PUSH_IBUF,
      I1 => stan_obecny(1),
      I2 => stan_obecny(0),
      I3 => \FSM_sequential_stan_nastepny_reg[2]_i_3_n_0\,
      I4 => \FSM_sequential_stan_nastepny_reg[2]_i_4_n_0\,
      I5 => stan_obecny(2),
      O => \FSM_sequential_stan_nastepny_reg[2]_i_1_n_0\
    );
\FSM_sequential_stan_nastepny_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F0F0F0F0FDFFF"
    )
        port map (
      I0 => \FSM_sequential_stan_nastepny_reg[2]_i_3_n_0\,
      I1 => BACK_IBUF,
      I2 => stan_obecny(2),
      I3 => \FSM_sequential_stan_nastepny_reg[2]_i_4_n_0\,
      I4 => stan_obecny(0),
      I5 => stan_obecny(1),
      O => \FSM_sequential_stan_nastepny_reg[2]_i_2_n_0\
    );
\FSM_sequential_stan_nastepny_reg[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => ILE_PROB_OBUF(2),
      I1 => ILE_PROB_OBUF(1),
      I2 => ILE_PROB_OBUF(0),
      O => \FSM_sequential_stan_nastepny_reg[2]_i_3_n_0\
    );
\FSM_sequential_stan_nastepny_reg[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_stan_nastepny_reg[2]_i_5_n_0\,
      I1 => \FSM_sequential_stan_nastepny_reg[2]_i_6_n_0\,
      I2 => \FSM_sequential_stan_nastepny_reg[2]_i_7_n_0\,
      I3 => \FSM_sequential_stan_nastepny_reg[2]_i_8_n_0\,
      O => \FSM_sequential_stan_nastepny_reg[2]_i_4_n_0\
    );
\FSM_sequential_stan_nastepny_reg[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q_temp(5),
      I1 => Q_temp(4),
      I2 => Q_temp(7),
      I3 => Q_temp(6),
      O => \FSM_sequential_stan_nastepny_reg[2]_i_5_n_0\
    );
\FSM_sequential_stan_nastepny_reg[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q_temp(1),
      I1 => Q_temp(0),
      I2 => Q_temp(3),
      I3 => Q_temp(2),
      O => \FSM_sequential_stan_nastepny_reg[2]_i_6_n_0\
    );
\FSM_sequential_stan_nastepny_reg[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q_temp(13),
      I1 => Q_temp(12),
      I2 => Q_temp(15),
      I3 => Q_temp(14),
      O => \FSM_sequential_stan_nastepny_reg[2]_i_7_n_0\
    );
\FSM_sequential_stan_nastepny_reg[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q_temp(9),
      I1 => Q_temp(8),
      I2 => Q_temp(11),
      I3 => Q_temp(10),
      O => \FSM_sequential_stan_nastepny_reg[2]_i_8_n_0\
    );
\FSM_sequential_stan_obecny_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => stan_nastepny(0),
      Q => stan_obecny(0)
    );
\FSM_sequential_stan_obecny_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => stan_nastepny(1),
      Q => stan_obecny(1)
    );
\FSM_sequential_stan_obecny_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK_IBUF_BUFG,
      CE => CE_IBUF,
      CLR => CLR_IBUF,
      D => stan_nastepny(2),
      Q => stan_obecny(2)
    );
\ILE_PROB_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ILE_PROB_OBUF(0),
      O => ILE_PROB(0)
    );
\ILE_PROB_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ILE_PROB_OBUF(1),
      O => ILE_PROB(1)
    );
\ILE_PROB_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => ILE_PROB_OBUF(2),
      O => ILE_PROB(2)
    );
\ILE_PROB_temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ILE_PROB_temp_reg[0]_i_1_n_0\,
      G => ILE_PROB_temp,
      GE => '1',
      Q => ILE_PROB_OBUF(0)
    );
\ILE_PROB_temp_reg[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ILE_PROB_OBUF(2),
      I1 => ILE_PROB_OBUF(1),
      I2 => ILE_PROB_OBUF(0),
      O => \ILE_PROB_temp_reg[0]_i_1_n_0\
    );
\ILE_PROB_temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ILE_PROB_temp_reg[1]_i_1_n_0\,
      G => ILE_PROB_temp,
      GE => '1',
      Q => ILE_PROB_OBUF(1)
    );
\ILE_PROB_temp_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => ILE_PROB_OBUF(0),
      I1 => ILE_PROB_OBUF(2),
      O => \ILE_PROB_temp_reg[1]_i_1_n_0\
    );
\ILE_PROB_temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \ILE_PROB_temp_reg[2]_i_1_n_0\,
      G => ILE_PROB_temp,
      GE => '1',
      Q => ILE_PROB_OBUF(2)
    );
\ILE_PROB_temp_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => ILE_PROB_OBUF(1),
      I1 => ILE_PROB_OBUF(2),
      I2 => ILE_PROB_OBUF(0),
      O => \ILE_PROB_temp_reg[2]_i_1_n_0\
    );
\ILE_PROB_temp_reg[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A2000000000000"
    )
        port map (
      I0 => \FSM_sequential_stan_nastepny_reg[2]_i_4_n_0\,
      I1 => ILE_PROB_OBUF(1),
      I2 => ILE_PROB_OBUF(2),
      I3 => ILE_PROB_OBUF(0),
      I4 => JAKI_STAN_OBUF(4),
      I5 => BACK_IBUF,
      O => ILE_PROB_temp
    );
\JAKI_STAN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => JAKI_STAN_OBUF(0),
      O => JAKI_STAN(0)
    );
\JAKI_STAN_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => stan_obecny(2),
      O => JAKI_STAN_OBUF(0)
    );
\JAKI_STAN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => JAKI_STAN_OBUF(1),
      O => JAKI_STAN(1)
    );
\JAKI_STAN_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => stan_obecny(2),
      O => JAKI_STAN_OBUF(1)
    );
\JAKI_STAN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => JAKI_STAN_OBUF(2),
      O => JAKI_STAN(2)
    );
\JAKI_STAN_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => stan_obecny(0),
      I1 => stan_obecny(1),
      I2 => stan_obecny(2),
      O => JAKI_STAN_OBUF(2)
    );
\JAKI_STAN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => JAKI_STAN_OBUF(3),
      O => JAKI_STAN(3)
    );
\JAKI_STAN_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => stan_obecny(2),
      O => JAKI_STAN_OBUF(3)
    );
\JAKI_STAN_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => JAKI_STAN_OBUF(4),
      O => JAKI_STAN(4)
    );
\JAKI_STAN_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => stan_obecny(2),
      O => JAKI_STAN_OBUF(4)
    );
NOT_OK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => NOT_OK_OBUF,
      O => NOT_OK
    );
NOT_OK_temp_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => JAKI_STAN_OBUF(4),
      G => NOT_OK_temp,
      GE => '1',
      Q => NOT_OK_OBUF
    );
NOT_OK_temp_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F8F000F0000"
    )
        port map (
      I0 => \FSM_sequential_stan_nastepny_reg[2]_i_3_n_0\,
      I1 => \FSM_sequential_stan_nastepny_reg[2]_i_4_n_0\,
      I2 => stan_obecny(2),
      I3 => PUSH_IBUF,
      I4 => BACK_IBUF,
      I5 => NOT_OK_temp_reg_i_2_n_0,
      O => NOT_OK_temp
    );
NOT_OK_temp_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => stan_obecny(0),
      I1 => stan_obecny(1),
      O => NOT_OK_temp_reg_i_2_n_0
    );
OK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => OK_OBUF,
      O => OK
    );
OK_temp_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_1_n_0,
      G => OK_temp,
      GE => '1',
      Q => OK_OBUF
    );
OK_temp_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => stan_obecny(2),
      I1 => stan_obecny(0),
      I2 => stan_obecny(1),
      I3 => \FSM_sequential_stan_nastepny_reg[2]_i_4_n_0\,
      O => OK_temp_reg_i_1_n_0
    );
OK_temp_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300030003007777"
    )
        port map (
      I0 => \FSM_sequential_stan_nastepny_reg[2]_i_4_n_0\,
      I1 => stan_obecny(2),
      I2 => PUSH_IBUF,
      I3 => BACK_IBUF,
      I4 => stan_obecny(1),
      I5 => stan_obecny(0),
      O => OK_temp
    );
PUSH_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PUSH,
      O => PUSH_IBUF
    );
\Q_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(0),
      T => '1'
    );
\Q_OBUF[10]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(10),
      T => '1'
    );
\Q_OBUF[11]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(11),
      T => '1'
    );
\Q_OBUF[12]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(12),
      T => '1'
    );
\Q_OBUF[13]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(13),
      T => '1'
    );
\Q_OBUF[14]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(14),
      T => '1'
    );
\Q_OBUF[15]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(15),
      T => '1'
    );
\Q_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(1),
      T => '1'
    );
\Q_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(2),
      T => '1'
    );
\Q_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(3),
      T => '1'
    );
\Q_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(4),
      T => '1'
    );
\Q_OBUF[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(5),
      T => '1'
    );
\Q_OBUF[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(6),
      T => '1'
    );
\Q_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(7),
      T => '1'
    );
\Q_OBUF[8]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(8),
      T => '1'
    );
\Q_OBUF[9]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => Q(9),
      T => '1'
    );
\Q_temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[0]_i_1_n_0\,
      G => JAKI_STAN_OBUF(0),
      GE => '1',
      Q => Q_temp(0)
    );
\Q_temp_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => PUSH_IBUF,
      I1 => stan_obecny(0),
      I2 => stan_obecny(1),
      I3 => DATA_IBUF(0),
      O => \Q_temp_reg[0]_i_1_n_0\
    );
\Q_temp_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[10]_i_1_n_0\,
      G => \Q_temp_reg[11]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(10)
    );
\Q_temp_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stan_obecny(0),
      I1 => stan_obecny(1),
      I2 => DATA_IBUF(2),
      O => \Q_temp_reg[10]_i_1_n_0\
    );
\Q_temp_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[11]_i_1_n_0\,
      G => \Q_temp_reg[11]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(11)
    );
\Q_temp_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stan_obecny(0),
      I1 => stan_obecny(1),
      I2 => DATA_IBUF(3),
      O => \Q_temp_reg[11]_i_1_n_0\
    );
\Q_temp_reg[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0203"
    )
        port map (
      I0 => PUSH_IBUF,
      I1 => stan_obecny(2),
      I2 => stan_obecny(0),
      I3 => stan_obecny(1),
      O => \Q_temp_reg[11]_i_2_n_0\
    );
\Q_temp_reg[12]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[12]_i_1_n_0\,
      G => \Q_temp_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(12)
    );
\Q_temp_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => DATA_IBUF(0),
      O => \Q_temp_reg[12]_i_1_n_0\
    );
\Q_temp_reg[13]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[13]_i_1_n_0\,
      G => \Q_temp_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(13)
    );
\Q_temp_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => DATA_IBUF(1),
      O => \Q_temp_reg[13]_i_1_n_0\
    );
\Q_temp_reg[14]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[14]_i_1_n_0\,
      G => \Q_temp_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(14)
    );
\Q_temp_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => DATA_IBUF(2),
      O => \Q_temp_reg[14]_i_1_n_0\
    );
\Q_temp_reg[15]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[15]_i_1_n_0\,
      G => \Q_temp_reg[15]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(15)
    );
\Q_temp_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => DATA_IBUF(3),
      O => \Q_temp_reg[15]_i_1_n_0\
    );
\Q_temp_reg[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2003"
    )
        port map (
      I0 => PUSH_IBUF,
      I1 => stan_obecny(2),
      I2 => stan_obecny(0),
      I3 => stan_obecny(1),
      O => \Q_temp_reg[15]_i_2_n_0\
    );
\Q_temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[1]_i_1_n_0\,
      G => JAKI_STAN_OBUF(0),
      GE => '1',
      Q => Q_temp(1)
    );
\Q_temp_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => PUSH_IBUF,
      I1 => stan_obecny(0),
      I2 => stan_obecny(1),
      I3 => DATA_IBUF(1),
      O => \Q_temp_reg[1]_i_1_n_0\
    );
\Q_temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[2]_i_1_n_0\,
      G => JAKI_STAN_OBUF(0),
      GE => '1',
      Q => Q_temp(2)
    );
\Q_temp_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => PUSH_IBUF,
      I1 => stan_obecny(0),
      I2 => stan_obecny(1),
      I3 => DATA_IBUF(2),
      O => \Q_temp_reg[2]_i_1_n_0\
    );
\Q_temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[3]_i_1_n_0\,
      G => JAKI_STAN_OBUF(0),
      GE => '1',
      Q => Q_temp(3)
    );
\Q_temp_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => PUSH_IBUF,
      I1 => stan_obecny(0),
      I2 => stan_obecny(1),
      I3 => DATA_IBUF(3),
      O => \Q_temp_reg[3]_i_1_n_0\
    );
\Q_temp_reg[4]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[4]_i_1_n_0\,
      G => \Q_temp_reg[7]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(4)
    );
\Q_temp_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => DATA_IBUF(0),
      O => \Q_temp_reg[4]_i_1_n_0\
    );
\Q_temp_reg[5]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[5]_i_1_n_0\,
      G => \Q_temp_reg[7]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(5)
    );
\Q_temp_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => DATA_IBUF(1),
      O => \Q_temp_reg[5]_i_1_n_0\
    );
\Q_temp_reg[6]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[6]_i_1_n_0\,
      G => \Q_temp_reg[7]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(6)
    );
\Q_temp_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => DATA_IBUF(2),
      O => \Q_temp_reg[6]_i_1_n_0\
    );
\Q_temp_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[7]_i_1_n_0\,
      G => \Q_temp_reg[7]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(7)
    );
\Q_temp_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stan_obecny(1),
      I1 => stan_obecny(0),
      I2 => DATA_IBUF(3),
      O => \Q_temp_reg[7]_i_1_n_0\
    );
\Q_temp_reg[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0023"
    )
        port map (
      I0 => PUSH_IBUF,
      I1 => stan_obecny(2),
      I2 => stan_obecny(0),
      I3 => stan_obecny(1),
      O => \Q_temp_reg[7]_i_2_n_0\
    );
\Q_temp_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[8]_i_1_n_0\,
      G => \Q_temp_reg[11]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(8)
    );
\Q_temp_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stan_obecny(0),
      I1 => stan_obecny(1),
      I2 => DATA_IBUF(0),
      O => \Q_temp_reg[8]_i_1_n_0\
    );
\Q_temp_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \Q_temp_reg[9]_i_1_n_0\,
      G => \Q_temp_reg[11]_i_2_n_0\,
      GE => '1',
      Q => Q_temp(9)
    );
\Q_temp_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => stan_obecny(0),
      I1 => stan_obecny(1),
      I2 => DATA_IBUF(1),
      O => \Q_temp_reg[9]_i_1_n_0\
    );
WRONG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => WRONG_OBUF,
      O => WRONG
    );
WRONG_temp_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => WRONG_temp_reg_i_1_n_0,
      G => WRONG_temp,
      GE => '1',
      Q => WRONG_OBUF
    );
WRONG_temp_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => stan_obecny(2),
      I1 => stan_obecny(0),
      I2 => stan_obecny(1),
      I3 => ILE_PROB_OBUF(0),
      I4 => ILE_PROB_OBUF(1),
      I5 => ILE_PROB_OBUF(2),
      O => WRONG_temp_reg_i_1_n_0
    );
WRONG_temp_reg_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4F000F0000"
    )
        port map (
      I0 => \FSM_sequential_stan_nastepny_reg[2]_i_3_n_0\,
      I1 => \FSM_sequential_stan_nastepny_reg[2]_i_4_n_0\,
      I2 => stan_obecny(2),
      I3 => PUSH_IBUF,
      I4 => BACK_IBUF,
      I5 => NOT_OK_temp_reg_i_2_n_0,
      O => WRONG_temp
    );
end STRUCTURE;
