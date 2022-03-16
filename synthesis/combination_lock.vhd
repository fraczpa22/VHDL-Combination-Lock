-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Feb 10 20:27:45 2022
-- Host        : LAPTOP-2MDBV9LF running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force combination_lock.vhd
-- Design      : combination_lock
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Debouncer is
  port (
    NET1311 : out STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    \eqOp__23\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Debouncer;

architecture STRUCTURE of Debouncer is
  signal DELAY : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\DELAY_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => DELAY(0)
    );
\DELAY_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => DELAY(0),
      Q => DELAY(1)
    );
\DELAY_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => DELAY(1),
      Q => DELAY(2)
    );
\FSM_onehot_stan_obecny[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => DELAY(1),
      I1 => DELAY(0),
      I2 => DELAY(2),
      I3 => CE_IBUF,
      I4 => \eqOp__23\,
      O => NET1311
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Debouncer_0 is
  port (
    \DELAY_reg[2]_0\ : out STD_LOGIC;
    NET1482 : out STD_LOGIC;
    \FSM_onehot_stan_obecny_reg[0]\ : in STD_LOGIC;
    \eqOp__23\ : in STD_LOGIC;
    CE_IBUF : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Debouncer_0 : entity is "Debouncer";
end Debouncer_0;

architecture STRUCTURE of Debouncer_0 is
  signal DELAY : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\DELAY_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => D(0),
      Q => DELAY(0)
    );
\DELAY_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => DELAY(0),
      Q => DELAY(1)
    );
\DELAY_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => DELAY(1),
      Q => DELAY(2)
    );
\FSM_onehot_stan_obecny[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => DELAY(1),
      I1 => DELAY(0),
      I2 => DELAY(2),
      I3 => CE_IBUF,
      I4 => \eqOp__23\,
      O => NET1482
    );
\FSM_onehot_stan_obecny[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_stan_obecny_reg[0]\,
      I1 => \eqOp__23\,
      I2 => CE_IBUF,
      I3 => DELAY(2),
      I4 => DELAY(0),
      I5 => DELAY(1),
      O => \DELAY_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Prescaler is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \eqOp__23\ : out STD_LOGIC;
    CE : out STD_LOGIC_VECTOR ( 0 to 0 );
    CE_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ROW_IBUF : in STD_LOGIC_VECTOR ( 0 to 3 )
  );
end Prescaler;

architecture STRUCTURE of Prescaler is
  signal \DIVIDER[0]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[0]_i_6_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[12]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[16]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[20]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[24]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[4]_i_5_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_2_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_3_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_4_n_0\ : STD_LOGIC;
  signal \DIVIDER[8]_i_5_n_0\ : STD_LOGIC;
  signal DIVIDER_reg : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal \DIVIDER_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \DIVIDER_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \FSM_onehot_stan_obecny[4]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stan_obecny[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stan_obecny[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stan_obecny[4]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stan_obecny[4]_i_9_n_0\ : STD_LOGIC;
  signal \^eqop__23\ : STD_LOGIC;
  signal \NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DIVIDER_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
begin
  \eqOp__23\ <= \^eqop__23\;
\DIVIDER[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \^eqop__23\,
      O => \DIVIDER[0]_i_2_n_0\
    );
\DIVIDER[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(3),
      I1 => \^eqop__23\,
      O => \DIVIDER[0]_i_3_n_0\
    );
\DIVIDER[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(2),
      I1 => \^eqop__23\,
      O => \DIVIDER[0]_i_4_n_0\
    );
\DIVIDER[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => \^eqop__23\,
      O => \DIVIDER[0]_i_5_n_0\
    );
\DIVIDER[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => DIVIDER_reg(0),
      I1 => \^eqop__23\,
      O => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(15),
      I1 => \^eqop__23\,
      O => \DIVIDER[12]_i_2_n_0\
    );
\DIVIDER[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(14),
      I1 => \^eqop__23\,
      O => \DIVIDER[12]_i_3_n_0\
    );
\DIVIDER[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => \^eqop__23\,
      O => \DIVIDER[12]_i_4_n_0\
    );
\DIVIDER[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(12),
      I1 => \^eqop__23\,
      O => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(19),
      I1 => \^eqop__23\,
      O => \DIVIDER[16]_i_2_n_0\
    );
\DIVIDER[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(18),
      I1 => \^eqop__23\,
      O => \DIVIDER[16]_i_3_n_0\
    );
\DIVIDER[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(17),
      I1 => \^eqop__23\,
      O => \DIVIDER[16]_i_4_n_0\
    );
\DIVIDER[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(16),
      I1 => \^eqop__23\,
      O => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(23),
      I1 => \^eqop__23\,
      O => \DIVIDER[20]_i_2_n_0\
    );
\DIVIDER[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(22),
      I1 => \^eqop__23\,
      O => \DIVIDER[20]_i_3_n_0\
    );
\DIVIDER[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(21),
      I1 => \^eqop__23\,
      O => \DIVIDER[20]_i_4_n_0\
    );
\DIVIDER[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(20),
      I1 => \^eqop__23\,
      O => \DIVIDER[20]_i_5_n_0\
    );
\DIVIDER[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(24),
      I1 => \^eqop__23\,
      O => \DIVIDER[24]_i_2_n_0\
    );
\DIVIDER[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(7),
      I1 => \^eqop__23\,
      O => \DIVIDER[4]_i_2_n_0\
    );
\DIVIDER[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(6),
      I1 => \^eqop__23\,
      O => \DIVIDER[4]_i_3_n_0\
    );
\DIVIDER[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(5),
      I1 => \^eqop__23\,
      O => \DIVIDER[4]_i_4_n_0\
    );
\DIVIDER[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(4),
      I1 => \^eqop__23\,
      O => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(11),
      I1 => \^eqop__23\,
      O => \DIVIDER[8]_i_2_n_0\
    );
\DIVIDER[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(10),
      I1 => \^eqop__23\,
      O => \DIVIDER[8]_i_3_n_0\
    );
\DIVIDER[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => \^eqop__23\,
      O => \DIVIDER[8]_i_4_n_0\
    );
\DIVIDER[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => \^eqop__23\,
      O => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_7\,
      Q => DIVIDER_reg(0)
    );
\DIVIDER_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \DIVIDER_reg[0]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[0]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[0]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \DIVIDER[0]_i_2_n_0\,
      O(3) => \DIVIDER_reg[0]_i_1_n_4\,
      O(2) => \DIVIDER_reg[0]_i_1_n_5\,
      O(1) => \DIVIDER_reg[0]_i_1_n_6\,
      O(0) => \DIVIDER_reg[0]_i_1_n_7\,
      S(3) => \DIVIDER[0]_i_3_n_0\,
      S(2) => \DIVIDER[0]_i_4_n_0\,
      S(1) => \DIVIDER[0]_i_5_n_0\,
      S(0) => \DIVIDER[0]_i_6_n_0\
    );
\DIVIDER_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_5\,
      Q => DIVIDER_reg(10)
    );
\DIVIDER_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_4\,
      Q => DIVIDER_reg(11)
    );
\DIVIDER_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_7\,
      Q => DIVIDER_reg(12)
    );
\DIVIDER_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[8]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[12]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[12]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[12]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[12]_i_1_n_4\,
      O(2) => \DIVIDER_reg[12]_i_1_n_5\,
      O(1) => \DIVIDER_reg[12]_i_1_n_6\,
      O(0) => \DIVIDER_reg[12]_i_1_n_7\,
      S(3) => \DIVIDER[12]_i_2_n_0\,
      S(2) => \DIVIDER[12]_i_3_n_0\,
      S(1) => \DIVIDER[12]_i_4_n_0\,
      S(0) => \DIVIDER[12]_i_5_n_0\
    );
\DIVIDER_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_6\,
      Q => DIVIDER_reg(13)
    );
\DIVIDER_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_5\,
      Q => DIVIDER_reg(14)
    );
\DIVIDER_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[12]_i_1_n_4\,
      Q => DIVIDER_reg(15)
    );
\DIVIDER_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_7\,
      Q => DIVIDER_reg(16)
    );
\DIVIDER_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[12]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[16]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[16]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[16]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[16]_i_1_n_4\,
      O(2) => \DIVIDER_reg[16]_i_1_n_5\,
      O(1) => \DIVIDER_reg[16]_i_1_n_6\,
      O(0) => \DIVIDER_reg[16]_i_1_n_7\,
      S(3) => \DIVIDER[16]_i_2_n_0\,
      S(2) => \DIVIDER[16]_i_3_n_0\,
      S(1) => \DIVIDER[16]_i_4_n_0\,
      S(0) => \DIVIDER[16]_i_5_n_0\
    );
\DIVIDER_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_6\,
      Q => DIVIDER_reg(17)
    );
\DIVIDER_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_5\,
      Q => DIVIDER_reg(18)
    );
\DIVIDER_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[16]_i_1_n_4\,
      Q => DIVIDER_reg(19)
    );
\DIVIDER_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_6\,
      Q => DIVIDER_reg(1)
    );
\DIVIDER_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_7\,
      Q => DIVIDER_reg(20)
    );
\DIVIDER_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[16]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[20]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[20]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[20]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[20]_i_1_n_4\,
      O(2) => \DIVIDER_reg[20]_i_1_n_5\,
      O(1) => \DIVIDER_reg[20]_i_1_n_6\,
      O(0) => \DIVIDER_reg[20]_i_1_n_7\,
      S(3) => \DIVIDER[20]_i_2_n_0\,
      S(2) => \DIVIDER[20]_i_3_n_0\,
      S(1) => \DIVIDER[20]_i_4_n_0\,
      S(0) => \DIVIDER[20]_i_5_n_0\
    );
\DIVIDER_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_6\,
      Q => DIVIDER_reg(21)
    );
\DIVIDER_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_5\,
      Q => DIVIDER_reg(22)
    );
\DIVIDER_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[20]_i_1_n_4\,
      Q => DIVIDER_reg(23)
    );
\DIVIDER_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[24]_i_1_n_7\,
      Q => DIVIDER_reg(24)
    );
\DIVIDER_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[20]_i_1_n_0\,
      CO(3 downto 0) => \NLW_DIVIDER_reg[24]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_DIVIDER_reg[24]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \DIVIDER_reg[24]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \DIVIDER[24]_i_2_n_0\
    );
\DIVIDER_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_5\,
      Q => DIVIDER_reg(2)
    );
\DIVIDER_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[0]_i_1_n_4\,
      Q => DIVIDER_reg(3)
    );
\DIVIDER_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_7\,
      Q => DIVIDER_reg(4)
    );
\DIVIDER_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[0]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[4]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[4]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[4]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[4]_i_1_n_4\,
      O(2) => \DIVIDER_reg[4]_i_1_n_5\,
      O(1) => \DIVIDER_reg[4]_i_1_n_6\,
      O(0) => \DIVIDER_reg[4]_i_1_n_7\,
      S(3) => \DIVIDER[4]_i_2_n_0\,
      S(2) => \DIVIDER[4]_i_3_n_0\,
      S(1) => \DIVIDER[4]_i_4_n_0\,
      S(0) => \DIVIDER[4]_i_5_n_0\
    );
\DIVIDER_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_6\,
      Q => DIVIDER_reg(5)
    );
\DIVIDER_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_5\,
      Q => DIVIDER_reg(6)
    );
\DIVIDER_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[4]_i_1_n_4\,
      Q => DIVIDER_reg(7)
    );
\DIVIDER_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_7\,
      Q => DIVIDER_reg(8)
    );
\DIVIDER_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \DIVIDER_reg[4]_i_1_n_0\,
      CO(3) => \DIVIDER_reg[8]_i_1_n_0\,
      CO(2) => \DIVIDER_reg[8]_i_1_n_1\,
      CO(1) => \DIVIDER_reg[8]_i_1_n_2\,
      CO(0) => \DIVIDER_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \DIVIDER_reg[8]_i_1_n_4\,
      O(2) => \DIVIDER_reg[8]_i_1_n_5\,
      O(1) => \DIVIDER_reg[8]_i_1_n_6\,
      O(0) => \DIVIDER_reg[8]_i_1_n_7\,
      S(3) => \DIVIDER[8]_i_2_n_0\,
      S(2) => \DIVIDER[8]_i_3_n_0\,
      S(1) => \DIVIDER[8]_i_4_n_0\,
      S(0) => \DIVIDER[8]_i_5_n_0\
    );
\DIVIDER_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => CE_IBUF,
      CLR => AR(0),
      D => \DIVIDER_reg[8]_i_1_n_6\,
      Q => DIVIDER_reg(9)
    );
\FSM_onehot_stan_obecny[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^eqop__23\,
      I1 => CE_IBUF,
      O => E(0)
    );
\FSM_onehot_stan_obecny[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => DIVIDER_reg(1),
      I1 => DIVIDER_reg(0),
      I2 => DIVIDER_reg(3),
      I3 => DIVIDER_reg(2),
      O => \FSM_onehot_stan_obecny[4]_i_10_n_0\
    );
\FSM_onehot_stan_obecny[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \FSM_onehot_stan_obecny[4]_i_6_n_0\,
      I1 => \FSM_onehot_stan_obecny[4]_i_7_n_0\,
      I2 => \FSM_onehot_stan_obecny[4]_i_8_n_0\,
      I3 => \FSM_onehot_stan_obecny[4]_i_9_n_0\,
      I4 => \FSM_onehot_stan_obecny[4]_i_10_n_0\,
      O => \^eqop__23\
    );
\FSM_onehot_stan_obecny[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => DIVIDER_reg(13),
      I1 => DIVIDER_reg(11),
      I2 => DIVIDER_reg(12),
      I3 => DIVIDER_reg(18),
      I4 => DIVIDER_reg(14),
      I5 => DIVIDER_reg(17),
      O => \FSM_onehot_stan_obecny[4]_i_6_n_0\
    );
\FSM_onehot_stan_obecny[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => DIVIDER_reg(23),
      I1 => DIVIDER_reg(22),
      I2 => DIVIDER_reg(24),
      I3 => DIVIDER_reg(19),
      I4 => DIVIDER_reg(20),
      I5 => DIVIDER_reg(21),
      O => \FSM_onehot_stan_obecny[4]_i_7_n_0\
    );
\FSM_onehot_stan_obecny[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => DIVIDER_reg(8),
      I1 => DIVIDER_reg(5),
      I2 => DIVIDER_reg(6),
      I3 => DIVIDER_reg(16),
      I4 => DIVIDER_reg(10),
      I5 => DIVIDER_reg(15),
      O => \FSM_onehot_stan_obecny[4]_i_8_n_0\
    );
\FSM_onehot_stan_obecny[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => DIVIDER_reg(9),
      I1 => DIVIDER_reg(7),
      I2 => DIVIDER_reg(4),
      O => \FSM_onehot_stan_obecny[4]_i_9_n_0\
    );
\outkey[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880800080000000"
    )
        port map (
      I0 => \^eqop__23\,
      I1 => CE_IBUF,
      I2 => ROW_IBUF(2),
      I3 => ROW_IBUF(3),
      I4 => ROW_IBUF(1),
      I5 => ROW_IBUF(0),
      O => CE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity keypad_controller is
  port (
    COLUMN_OBUF : out STD_LOGIC_VECTOR ( 0 to 3 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ROW_IBUF : in STD_LOGIC_VECTOR ( 0 to 3 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \outkey_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end keypad_controller;

architecture STRUCTURE of keypad_controller is
  signal \COLUMN__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \FSM_sequential_COLUMN[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_COLUMN[1]_i_1_n_0\ : STD_LOGIC;
  signal \outkey[0]_i_1_n_0\ : STD_LOGIC;
  signal \outkey[1]_i_1_n_0\ : STD_LOGIC;
  signal \outkey[2]_i_1_n_0\ : STD_LOGIC;
  signal \outkey[3]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COLUMN_OBUF[0]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \COLUMN_OBUF[1]_inst_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \COLUMN_OBUF[2]_inst_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \COLUMN_OBUF[3]_inst_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_COLUMN[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_COLUMN[1]_i_1\ : label is "soft_lutpair7";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_COLUMN_reg[0]\ : label is "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_COLUMN_reg[1]\ : label is "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11,";
begin
\COLUMN_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \COLUMN__0\(0),
      I1 => \COLUMN__0\(1),
      O => COLUMN_OBUF(0)
    );
\COLUMN_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \COLUMN__0\(0),
      I1 => \COLUMN__0\(1),
      O => COLUMN_OBUF(1)
    );
\COLUMN_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \COLUMN__0\(1),
      I1 => \COLUMN__0\(0),
      O => COLUMN_OBUF(2)
    );
\COLUMN_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \COLUMN__0\(0),
      I1 => \COLUMN__0\(1),
      O => COLUMN_OBUF(3)
    );
\FSM_sequential_COLUMN[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \COLUMN__0\(0),
      O => \FSM_sequential_COLUMN[0]_i_1_n_0\
    );
\FSM_sequential_COLUMN[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \COLUMN__0\(0),
      I1 => \COLUMN__0\(1),
      O => \FSM_sequential_COLUMN[1]_i_1_n_0\
    );
\FSM_sequential_COLUMN_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => \FSM_sequential_COLUMN[0]_i_1_n_0\,
      Q => \COLUMN__0\(0)
    );
\FSM_sequential_COLUMN_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => \FSM_sequential_COLUMN[1]_i_1_n_0\,
      Q => \COLUMN__0\(1)
    );
\outkey[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A66AAAAA"
    )
        port map (
      I0 => \COLUMN__0\(0),
      I1 => ROW_IBUF(2),
      I2 => ROW_IBUF(1),
      I3 => ROW_IBUF(3),
      I4 => ROW_IBUF(0),
      O => \outkey[0]_i_1_n_0\
    );
\outkey[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3343B33393333333"
    )
        port map (
      I0 => \COLUMN__0\(0),
      I1 => \COLUMN__0\(1),
      I2 => ROW_IBUF(0),
      I3 => ROW_IBUF(3),
      I4 => ROW_IBUF(1),
      I5 => ROW_IBUF(2),
      O => \outkey[1]_i_1_n_0\
    );
\outkey[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC6CACCCACCCCCCC"
    )
        port map (
      I0 => \COLUMN__0\(0),
      I1 => \COLUMN__0\(1),
      I2 => ROW_IBUF(0),
      I3 => ROW_IBUF(3),
      I4 => ROW_IBUF(1),
      I5 => ROW_IBUF(2),
      O => \outkey[2]_i_1_n_0\
    );
\outkey[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EB3FFFFF"
    )
        port map (
      I0 => \COLUMN__0\(1),
      I1 => ROW_IBUF(2),
      I2 => ROW_IBUF(1),
      I3 => ROW_IBUF(3),
      I4 => ROW_IBUF(0),
      O => \outkey[3]_i_2_n_0\
    );
\outkey_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => \outkey_reg[3]_0\(0),
      D => \outkey[0]_i_1_n_0\,
      PRE => AR(0),
      Q => Q(0)
    );
\outkey_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => \outkey_reg[3]_0\(0),
      D => \outkey[1]_i_1_n_0\,
      PRE => AR(0),
      Q => Q(1)
    );
\outkey_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => \outkey_reg[3]_0\(0),
      D => \outkey[2]_i_1_n_0\,
      PRE => AR(0),
      Q => Q(2)
    );
\outkey_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => CLK,
      CE => \outkey_reg[3]_0\(0),
      D => \outkey[3]_i_2_n_0\,
      PRE => AR(0),
      Q => Q(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity lock is
  port (
    OK_OBUF : out STD_LOGIC;
    WRONG_OBUF : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \outkey_reg[3]\ : out STD_LOGIC;
    LED_out_OBUF : out STD_LOGIC_VECTOR ( 6 downto 0 );
    NET1482 : in STD_LOGIC;
    NET1311 : in STD_LOGIC;
    \FSM_onehot_stan_obecny_reg[0]_0\ : in STD_LOGIC;
    \LED_out_OBUF[6]_inst_i_1_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    OK_temp_reg_i_6_0 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end lock;

architecture STRUCTURE of lock is
  signal BUS1860 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BUS1868 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BUS1876 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BUS1884 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \FSM_onehot_stan_obecny[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stan_obecny[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stan_obecny[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stan_obecny[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_stan_obecny[4]_i_2_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \LED_out_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal OK_temp : STD_LOGIC;
  signal OK_temp_reg_i_1_n_0 : STD_LOGIC;
  signal OK_temp_reg_i_4_n_0 : STD_LOGIC;
  signal OK_temp_reg_i_5_n_0 : STD_LOGIC;
  signal OK_temp_reg_i_7_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal WRONG_temp : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  signal \^outkey_reg[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_stan_obecny[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_stan_obecny[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_stan_obecny[4]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_stan_obecny_reg[0]\ : label is "s1:00010,s3:01000,s2:00100,s4:10000,s0:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stan_obecny_reg[1]\ : label is "s1:00010,s3:01000,s2:00100,s4:10000,s0:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stan_obecny_reg[2]\ : label is "s1:00010,s3:01000,s2:00100,s4:10000,s0:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stan_obecny_reg[3]\ : label is "s1:00010,s3:01000,s2:00100,s4:10000,s0:00001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_stan_obecny_reg[4]\ : label is "s1:00010,s3:01000,s2:00100,s4:10000,s0:00001";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OK_temp_reg : label is "LD";
  attribute SOFT_HLUTNM of OK_temp_reg_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of OK_temp_reg_i_2 : label is "soft_lutpair2";
  attribute XILINX_LEGACY_PRIM of \Q0_temp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q0_temp_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q0_temp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q0_temp_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q1_temp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q1_temp_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q1_temp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q1_temp_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q2_temp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q2_temp_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q2_temp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q2_temp_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q3_temp_reg[0]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q3_temp_reg[1]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q3_temp_reg[2]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \Q3_temp_reg[3]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of WRONG_temp_reg : label is "LD";
  attribute SOFT_HLUTNM of WRONG_temp_reg_i_1 : label is "soft_lutpair2";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
  \outkey_reg[3]\ <= \^outkey_reg[3]\;
\FSM_onehot_stan_obecny[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F800F8FFFF00F8"
    )
        port map (
      I0 => NET1482,
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => NET1311,
      I4 => \^q\(4),
      I5 => \FSM_onehot_stan_obecny_reg[0]_0\,
      O => \FSM_onehot_stan_obecny[0]_i_1_n_0\
    );
\FSM_onehot_stan_obecny[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0CACA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => NET1311,
      I3 => \^q\(2),
      I4 => NET1482,
      O => \FSM_onehot_stan_obecny[1]_i_1_n_0\
    );
\FSM_onehot_stan_obecny[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CFC0CACA"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => NET1311,
      I3 => \^q\(3),
      I4 => NET1482,
      O => \FSM_onehot_stan_obecny[2]_i_1_n_0\
    );
\FSM_onehot_stan_obecny[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8B88"
    )
        port map (
      I0 => \^q\(2),
      I1 => NET1311,
      I2 => NET1482,
      I3 => \^q\(3),
      O => \FSM_onehot_stan_obecny[3]_i_1_n_0\
    );
\FSM_onehot_stan_obecny[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => NET1311,
      I1 => \^q\(3),
      I2 => \FSM_onehot_stan_obecny_reg[0]_0\,
      I3 => \^q\(4),
      O => \FSM_onehot_stan_obecny[4]_i_2_n_0\
    );
\FSM_onehot_stan_obecny_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => \FSM_onehot_stan_obecny[0]_i_1_n_0\,
      PRE => AR(0),
      Q => \^q\(0)
    );
\FSM_onehot_stan_obecny_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => \FSM_onehot_stan_obecny[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\FSM_onehot_stan_obecny_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => \FSM_onehot_stan_obecny[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\FSM_onehot_stan_obecny_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => \FSM_onehot_stan_obecny[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\FSM_onehot_stan_obecny_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => \FSM_onehot_stan_obecny[4]_i_2_n_0\,
      Q => \^q\(4)
    );
\LED_out_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LED_out_OBUF[0]_inst_i_2_n_0\,
      I1 => \LED_out_OBUF[0]_inst_i_3_n_0\,
      I2 => \LED_out_OBUF[0]_inst_i_4_n_0\,
      I3 => \LED_out_OBUF[0]_inst_i_5_n_0\,
      O => LED_out_OBUF(0)
    );
\LED_out_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000049100000000"
    )
        port map (
      I0 => BUS1868(1),
      I1 => BUS1868(2),
      I2 => BUS1868(0),
      I3 => BUS1868(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[0]_inst_i_2_n_0\
    );
\LED_out_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000491"
    )
        port map (
      I0 => BUS1860(1),
      I1 => BUS1860(2),
      I2 => BUS1860(0),
      I3 => BUS1860(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[0]_inst_i_3_n_0\
    );
\LED_out_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0491000000000000"
    )
        port map (
      I0 => BUS1884(1),
      I1 => BUS1884(2),
      I2 => BUS1884(0),
      I3 => BUS1884(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[0]_inst_i_4_n_0\
    );
\LED_out_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000049100000000"
    )
        port map (
      I0 => BUS1876(1),
      I1 => BUS1876(2),
      I2 => BUS1876(0),
      I3 => BUS1876(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      O => \LED_out_OBUF[0]_inst_i_5_n_0\
    );
\LED_out_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LED_out_OBUF[1]_inst_i_2_n_0\,
      I1 => \LED_out_OBUF[1]_inst_i_3_n_0\,
      I2 => \LED_out_OBUF[1]_inst_i_4_n_0\,
      I3 => \LED_out_OBUF[1]_inst_i_5_n_0\,
      O => LED_out_OBUF(1)
    );
\LED_out_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000408E00000000"
    )
        port map (
      I0 => BUS1868(1),
      I1 => BUS1868(0),
      I2 => BUS1868(2),
      I3 => BUS1868(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[1]_inst_i_2_n_0\
    );
\LED_out_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000408E"
    )
        port map (
      I0 => BUS1860(1),
      I1 => BUS1860(0),
      I2 => BUS1860(2),
      I3 => BUS1860(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[1]_inst_i_3_n_0\
    );
\LED_out_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"408E000000000000"
    )
        port map (
      I0 => BUS1884(1),
      I1 => BUS1884(0),
      I2 => BUS1884(2),
      I3 => BUS1884(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[1]_inst_i_4_n_0\
    );
\LED_out_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000408E00000000"
    )
        port map (
      I0 => BUS1876(1),
      I1 => BUS1876(0),
      I2 => BUS1876(2),
      I3 => BUS1876(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      O => \LED_out_OBUF[1]_inst_i_5_n_0\
    );
\LED_out_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LED_out_OBUF[2]_inst_i_2_n_0\,
      I1 => \LED_out_OBUF[2]_inst_i_3_n_0\,
      I2 => \LED_out_OBUF[2]_inst_i_4_n_0\,
      I3 => \LED_out_OBUF[2]_inst_i_5_n_0\,
      O => LED_out_OBUF(2)
    );
\LED_out_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002AE00000000"
    )
        port map (
      I0 => BUS1868(0),
      I1 => BUS1868(2),
      I2 => BUS1868(1),
      I3 => BUS1868(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[2]_inst_i_2_n_0\
    );
\LED_out_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000002AE"
    )
        port map (
      I0 => BUS1860(0),
      I1 => BUS1860(2),
      I2 => BUS1860(1),
      I3 => BUS1860(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[2]_inst_i_3_n_0\
    );
\LED_out_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AE000000000000"
    )
        port map (
      I0 => BUS1884(0),
      I1 => BUS1884(2),
      I2 => BUS1884(1),
      I3 => BUS1884(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[2]_inst_i_4_n_0\
    );
\LED_out_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002AE00000000"
    )
        port map (
      I0 => BUS1876(0),
      I1 => BUS1876(2),
      I2 => BUS1876(1),
      I3 => BUS1876(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      O => \LED_out_OBUF[2]_inst_i_5_n_0\
    );
\LED_out_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LED_out_OBUF[3]_inst_i_2_n_0\,
      I1 => \LED_out_OBUF[3]_inst_i_3_n_0\,
      I2 => \LED_out_OBUF[3]_inst_i_4_n_0\,
      I3 => \LED_out_OBUF[3]_inst_i_5_n_0\,
      O => LED_out_OBUF(3)
    );
\LED_out_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000829400000000"
    )
        port map (
      I0 => BUS1868(1),
      I1 => BUS1868(0),
      I2 => BUS1868(2),
      I3 => BUS1868(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[3]_inst_i_2_n_0\
    );
\LED_out_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008294"
    )
        port map (
      I0 => BUS1860(1),
      I1 => BUS1860(0),
      I2 => BUS1860(2),
      I3 => BUS1860(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[3]_inst_i_3_n_0\
    );
\LED_out_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8294000000000000"
    )
        port map (
      I0 => BUS1884(1),
      I1 => BUS1884(0),
      I2 => BUS1884(2),
      I3 => BUS1884(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[3]_inst_i_4_n_0\
    );
\LED_out_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000829400000000"
    )
        port map (
      I0 => BUS1876(1),
      I1 => BUS1876(0),
      I2 => BUS1876(2),
      I3 => BUS1876(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      O => \LED_out_OBUF[3]_inst_i_5_n_0\
    );
\LED_out_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LED_out_OBUF[4]_inst_i_2_n_0\,
      I1 => \LED_out_OBUF[4]_inst_i_3_n_0\,
      I2 => \LED_out_OBUF[4]_inst_i_4_n_0\,
      I3 => \LED_out_OBUF[4]_inst_i_5_n_0\,
      O => LED_out_OBUF(4)
    );
\LED_out_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008A0400000000"
    )
        port map (
      I0 => BUS1868(2),
      I1 => BUS1868(1),
      I2 => BUS1868(0),
      I3 => BUS1868(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[4]_inst_i_2_n_0\
    );
\LED_out_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008A04"
    )
        port map (
      I0 => BUS1860(2),
      I1 => BUS1860(1),
      I2 => BUS1860(0),
      I3 => BUS1860(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[4]_inst_i_3_n_0\
    );
\LED_out_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A04000000000000"
    )
        port map (
      I0 => BUS1884(2),
      I1 => BUS1884(1),
      I2 => BUS1884(0),
      I3 => BUS1884(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[4]_inst_i_4_n_0\
    );
\LED_out_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008A0400000000"
    )
        port map (
      I0 => BUS1876(2),
      I1 => BUS1876(1),
      I2 => BUS1876(0),
      I3 => BUS1876(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      O => \LED_out_OBUF[4]_inst_i_5_n_0\
    );
\LED_out_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LED_out_OBUF[5]_inst_i_2_n_0\,
      I1 => \LED_out_OBUF[5]_inst_i_3_n_0\,
      I2 => \LED_out_OBUF[5]_inst_i_4_n_0\,
      I3 => \LED_out_OBUF[5]_inst_i_5_n_0\,
      O => LED_out_OBUF(5)
    );
\LED_out_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B86000000000"
    )
        port map (
      I0 => BUS1868(1),
      I1 => BUS1868(0),
      I2 => BUS1868(2),
      I3 => BUS1868(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[5]_inst_i_2_n_0\
    );
\LED_out_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000B860"
    )
        port map (
      I0 => BUS1860(1),
      I1 => BUS1860(0),
      I2 => BUS1860(2),
      I3 => BUS1860(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[5]_inst_i_3_n_0\
    );
\LED_out_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B860000000000000"
    )
        port map (
      I0 => BUS1884(1),
      I1 => BUS1884(0),
      I2 => BUS1884(2),
      I3 => BUS1884(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[5]_inst_i_4_n_0\
    );
\LED_out_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000B86000000000"
    )
        port map (
      I0 => BUS1876(1),
      I1 => BUS1876(0),
      I2 => BUS1876(2),
      I3 => BUS1876(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      O => \LED_out_OBUF[5]_inst_i_5_n_0\
    );
\LED_out_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \LED_out_OBUF[6]_inst_i_2_n_0\,
      I1 => \LED_out_OBUF[6]_inst_i_3_n_0\,
      I2 => \LED_out_OBUF[6]_inst_i_4_n_0\,
      I3 => \LED_out_OBUF[6]_inst_i_5_n_0\,
      O => LED_out_OBUF(6)
    );
\LED_out_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000481400000000"
    )
        port map (
      I0 => BUS1868(1),
      I1 => BUS1868(0),
      I2 => BUS1868(2),
      I3 => BUS1868(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[6]_inst_i_2_n_0\
    );
\LED_out_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004814"
    )
        port map (
      I0 => BUS1860(1),
      I1 => BUS1860(0),
      I2 => BUS1860(2),
      I3 => BUS1860(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[6]_inst_i_3_n_0\
    );
\LED_out_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4814000000000000"
    )
        port map (
      I0 => BUS1884(1),
      I1 => BUS1884(0),
      I2 => BUS1884(2),
      I3 => BUS1884(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      O => \LED_out_OBUF[6]_inst_i_4_n_0\
    );
\LED_out_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000481400000000"
    )
        port map (
      I0 => BUS1876(1),
      I1 => BUS1876(0),
      I2 => BUS1876(2),
      I3 => BUS1876(3),
      I4 => \LED_out_OBUF[6]_inst_i_1_0\(0),
      I5 => \LED_out_OBUF[6]_inst_i_1_0\(1),
      O => \LED_out_OBUF[6]_inst_i_5_n_0\
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
OK_temp_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^outkey_reg[3]\,
      O => OK_temp_reg_i_1_n_0
    );
OK_temp_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^outkey_reg[3]\,
      I2 => \^q\(0),
      O => OK_temp
    );
OK_temp_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => OK_temp_reg_i_4_n_0,
      I1 => BUS1860(3),
      I2 => BUS1860(2),
      I3 => OK_temp_reg_i_5_n_0,
      I4 => eqOp,
      I5 => OK_temp_reg_i_7_n_0,
      O => \^outkey_reg[3]\
    );
OK_temp_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => BUS1884(3),
      I1 => BUS1884(2),
      I2 => BUS1884(1),
      I3 => BUS1884(0),
      O => OK_temp_reg_i_4_n_0
    );
OK_temp_reg_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => BUS1860(1),
      I1 => BUS1860(0),
      O => OK_temp_reg_i_5_n_0
    );
OK_temp_reg_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => BUS1868(3),
      I1 => BUS1868(2),
      I2 => BUS1868(1),
      I3 => BUS1868(0),
      O => eqOp
    );
OK_temp_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => BUS1876(3),
      I1 => BUS1876(2),
      I2 => BUS1876(1),
      I3 => BUS1876(0),
      O => OK_temp_reg_i_7_n_0
    );
\Q0_temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(0),
      G => \^q\(0),
      GE => '1',
      Q => BUS1860(0)
    );
\Q0_temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(1),
      G => \^q\(0),
      GE => '1',
      Q => BUS1860(1)
    );
\Q0_temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(2),
      G => \^q\(0),
      GE => '1',
      Q => BUS1860(2)
    );
\Q0_temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(3),
      G => \^q\(0),
      GE => '1',
      Q => BUS1860(3)
    );
\Q1_temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(0),
      G => \^q\(1),
      GE => '1',
      Q => BUS1868(0)
    );
\Q1_temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(1),
      G => \^q\(1),
      GE => '1',
      Q => BUS1868(1)
    );
\Q1_temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(2),
      G => \^q\(1),
      GE => '1',
      Q => BUS1868(2)
    );
\Q1_temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(3),
      G => \^q\(1),
      GE => '1',
      Q => BUS1868(3)
    );
\Q2_temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(0),
      G => \^q\(2),
      GE => '1',
      Q => BUS1876(0)
    );
\Q2_temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(1),
      G => \^q\(2),
      GE => '1',
      Q => BUS1876(1)
    );
\Q2_temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(2),
      G => \^q\(2),
      GE => '1',
      Q => BUS1876(2)
    );
\Q2_temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(3),
      G => \^q\(2),
      GE => '1',
      Q => BUS1876(3)
    );
\Q3_temp_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(0),
      G => \^q\(3),
      GE => '1',
      Q => BUS1884(0)
    );
\Q3_temp_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(1),
      G => \^q\(3),
      GE => '1',
      Q => BUS1884(1)
    );
\Q3_temp_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(2),
      G => \^q\(3),
      GE => '1',
      Q => BUS1884(2)
    );
\Q3_temp_reg[3]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => OK_temp_reg_i_6_0(3),
      G => \^q\(3),
      GE => '1',
      Q => BUS1884(3)
    );
WRONG_temp_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \^q\(4),
      G => WRONG_temp,
      GE => '1',
      Q => WRONG_OBUF
    );
WRONG_temp_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^outkey_reg[3]\,
      I2 => \^q\(4),
      O => WRONG_temp
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity sev_seg is
  port (
    AN_OBUF : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end sev_seg;

architecture STRUCTURE of sev_seg is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal stan_nastepny : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \AN_OBUF[0]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \AN_OBUF[1]_inst_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \AN_OBUF[2]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \AN_OBUF[3]_inst_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_stan_obecny[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_stan_obecny[1]_i_1\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_stan_obecny_reg[0]\ : label is "pos1:00,pos2:01,pos3:10,pos4:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_stan_obecny_reg[1]\ : label is "pos1:00,pos2:01,pos3:10,pos4:11";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\AN_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => AN_OBUF(0)
    );
\AN_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => AN_OBUF(1)
    );
\AN_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => AN_OBUF(2)
    );
\AN_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => AN_OBUF(3)
    );
\FSM_sequential_stan_obecny[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => stan_nastepny(0)
    );
\FSM_sequential_stan_obecny[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => stan_nastepny(1)
    );
\FSM_sequential_stan_obecny_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => stan_nastepny(0),
      Q => \^q\(0)
    );
\FSM_sequential_stan_obecny_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => AR(0),
      D => stan_nastepny(1),
      Q => \^q\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity combination_lock is
  port (
    CLR : in STD_LOGIC;
    BACK : in STD_LOGIC;
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    PUSH : in STD_LOGIC;
    JAKI_STAN : out STD_LOGIC_VECTOR ( 4 downto 0 );
    LED_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    WRONG : out STD_LOGIC;
    OK : out STD_LOGIC;
    COLUMN : out STD_LOGIC_VECTOR ( 0 to 3 );
    ROW : in STD_LOGIC_VECTOR ( 0 to 3 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of combination_lock : entity is true;
end combination_lock;

architecture STRUCTURE of combination_lock is
  signal AN_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal BACK_IBUF : STD_LOGIC;
  signal BUS1981 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CE_IBUF : STD_LOGIC;
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal CLR_IBUF : STD_LOGIC;
  signal COLUMN_OBUF : STD_LOGIC_VECTOR ( 0 to 3 );
  signal JAKI_STAN_OBUF : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal LED_out_OBUF : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NET1311 : STD_LOGIC;
  signal NET1479 : STD_LOGIC;
  signal NET1482 : STD_LOGIC;
  signal OK_OBUF : STD_LOGIC;
  signal PUSH_IBUF : STD_LOGIC;
  signal ROW_IBUF : STD_LOGIC_VECTOR ( 0 to 3 );
  signal U1_n_7 : STD_LOGIC;
  signal U6_n_2 : STD_LOGIC;
  signal U9_n_0 : STD_LOGIC;
  signal WRONG_OBUF : STD_LOGIC;
  signal \eqOp__23\ : STD_LOGIC;
  signal stan_obecny : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
\AN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(0),
      O => AN(0)
    );
\AN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(1),
      O => AN(1)
    );
\AN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(2),
      O => AN(2)
    );
\AN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => AN_OBUF(3),
      O => AN(3)
    );
\AN_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(4)
    );
\AN_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(5)
    );
\AN_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(6)
    );
\AN_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '1',
      O => AN(7)
    );
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
\COLUMN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => COLUMN_OBUF(0),
      O => COLUMN(0)
    );
\COLUMN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => COLUMN_OBUF(1),
      O => COLUMN(1)
    );
\COLUMN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => COLUMN_OBUF(2),
      O => COLUMN(2)
    );
\COLUMN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => COLUMN_OBUF(3),
      O => COLUMN(3)
    );
\JAKI_STAN_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => JAKI_STAN_OBUF(0),
      O => JAKI_STAN(0)
    );
\JAKI_STAN_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => JAKI_STAN_OBUF(1),
      O => JAKI_STAN(1)
    );
\JAKI_STAN_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => JAKI_STAN_OBUF(2),
      O => JAKI_STAN(2)
    );
\JAKI_STAN_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => JAKI_STAN_OBUF(3),
      O => JAKI_STAN(3)
    );
\JAKI_STAN_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => JAKI_STAN_OBUF(4),
      O => JAKI_STAN(4)
    );
\LED_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(0),
      O => LED_out(0)
    );
\LED_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(1),
      O => LED_out(1)
    );
\LED_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(2),
      O => LED_out(2)
    );
\LED_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(3),
      O => LED_out(3)
    );
\LED_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(4),
      O => LED_out(4)
    );
\LED_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(5),
      O => LED_out(5)
    );
\LED_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => LED_out_OBUF(6),
      O => LED_out(6)
    );
OK_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => OK_OBUF,
      O => OK
    );
PUSH_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => PUSH,
      O => PUSH_IBUF
    );
\ROW_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ROW(0),
      O => ROW_IBUF(0)
    );
\ROW_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ROW(1),
      O => ROW_IBUF(1)
    );
\ROW_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ROW(2),
      O => ROW_IBUF(2)
    );
\ROW_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => ROW(3),
      O => ROW_IBUF(3)
    );
U1: entity work.lock
     port map (
      AR(0) => CLR_IBUF,
      CLK => CLK_IBUF_BUFG,
      E(0) => NET1479,
      \FSM_onehot_stan_obecny_reg[0]_0\ => U9_n_0,
      LED_out_OBUF(6 downto 0) => LED_out_OBUF(6 downto 0),
      \LED_out_OBUF[6]_inst_i_1_0\(1 downto 0) => stan_obecny(1 downto 0),
      NET1311 => NET1311,
      NET1482 => NET1482,
      OK_OBUF => OK_OBUF,
      OK_temp_reg_i_6_0(3 downto 0) => BUS1981(3 downto 0),
      Q(4 downto 0) => JAKI_STAN_OBUF(4 downto 0),
      WRONG_OBUF => WRONG_OBUF,
      \outkey_reg[3]\ => U1_n_7
    );
U3: entity work.sev_seg
     port map (
      AN_OBUF(3 downto 0) => AN_OBUF(3 downto 0),
      AR(0) => CLR_IBUF,
      CLK => CLK_IBUF_BUFG,
      E(0) => NET1479,
      Q(1 downto 0) => stan_obecny(1 downto 0)
    );
U4: entity work.keypad_controller
     port map (
      AR(0) => CLR_IBUF,
      CLK => CLK_IBUF_BUFG,
      COLUMN_OBUF(0 to 3) => COLUMN_OBUF(0 to 3),
      E(0) => NET1479,
      Q(3 downto 0) => BUS1981(3 downto 0),
      ROW_IBUF(0 to 3) => ROW_IBUF(0 to 3),
      \outkey_reg[3]_0\(0) => U6_n_2
    );
U6: entity work.Prescaler
     port map (
      AR(0) => CLR_IBUF,
      CE(0) => U6_n_2,
      CE_IBUF => CE_IBUF,
      CLK => CLK_IBUF_BUFG,
      E(0) => NET1479,
      ROW_IBUF(0 to 3) => ROW_IBUF(0 to 3),
      \eqOp__23\ => \eqOp__23\
    );
U7: entity work.Debouncer
     port map (
      AR(0) => CLR_IBUF,
      CE_IBUF => CE_IBUF,
      CLK => CLK_IBUF_BUFG,
      D(0) => PUSH_IBUF,
      E(0) => NET1479,
      NET1311 => NET1311,
      \eqOp__23\ => \eqOp__23\
    );
U9: entity work.Debouncer_0
     port map (
      AR(0) => CLR_IBUF,
      CE_IBUF => CE_IBUF,
      CLK => CLK_IBUF_BUFG,
      D(0) => BACK_IBUF,
      \DELAY_reg[2]_0\ => U9_n_0,
      E(0) => NET1479,
      \FSM_onehot_stan_obecny_reg[0]\ => U1_n_7,
      NET1482 => NET1482,
      \eqOp__23\ => \eqOp__23\
    );
WRONG_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => WRONG_OBUF,
      O => WRONG
    );
end STRUCTURE;
