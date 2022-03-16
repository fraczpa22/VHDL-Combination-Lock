-------------------------------------------------------------------------------
--
-- Title       : 
-- Design      : combination_lock
-- Author      : 
-- Company     : 
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\combination_lock\compile\combination_lock.vhd
-- Generated   : Thu Feb 10 18:10:02 2022
-- From        : C:/My_Designs/combination_lock/src/combination_lock.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_signed.all;
use IEEE.std_logic_unsigned.all;

entity combination_lock is
  port(
       CLR : in STD_LOGIC;
       BACK : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CE : in STD_LOGIC;
       PUSH : in STD_LOGIC;
       JAKI_STAN : out STD_LOGIC_VECTOR(4 downto 0);
       LED_out : out STD_LOGIC_VECTOR(6 downto 0);
       AN : out STD_LOGIC_VECTOR(7 downto 0);
       WRONG : out STD_LOGIC;
       OK : out STD_LOGIC;
       COLUMN : out STD_LOGIC_VECTOR(0 to 3);
       ROW : in STD_LOGIC_VECTOR(0 to 3)
  );
end combination_lock;

architecture combination_lock of combination_lock is

---- Component declarations -----

component Debouncer
  port(
       CLK : in STD_LOGIC;
       CEI : in STD_LOGIC;
       PUSH : in STD_LOGIC;
       CLR : in STD_LOGIC;
       PE : out STD_LOGIC
  );
end component;
component keypad_controller
  port(
       clk : in STD_LOGIC;
       CLEAR : in STD_LOGIC;
       CE : in STD_LOGIC;
       ROW : in STD_LOGIC_VECTOR(0 to 3);
       COLUMN : buffer STD_LOGIC_VECTOR(0 to 3);
       outkey : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;
component lock
  port(
       CLR : in STD_LOGIC;
       BACK : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CE : in STD_LOGIC;
       DATA : in STD_LOGIC_VECTOR(3 downto 0);
       PUSH : in STD_LOGIC;
       OK : out STD_LOGIC;
       WRONG : out STD_LOGIC;
       JAKI_STAN : out STD_LOGIC_VECTOR(4 downto 0);
       Q0 : out STD_LOGIC_VECTOR(3 downto 0);
       Q1 : out STD_LOGIC_VECTOR(3 downto 0);
       Q2 : out STD_LOGIC_VECTOR(3 downto 0);
       Q3 : out STD_LOGIC_VECTOR(3 downto 0)
  );
end component;
component Prescaler
  port(
       CLK : in STD_LOGIC;
       CE : in STD_LOGIC;
       CLR : in STD_LOGIC;
       CEO : out STD_LOGIC
  );
end component;
component sev_seg
  port(
       CLR : in STD_LOGIC;
       CLK : in STD_LOGIC;
       CE : in STD_LOGIC;
       Q0 : in STD_LOGIC_VECTOR(3 downto 0);
       Q1 : in STD_LOGIC_VECTOR(3 downto 0);
       Q2 : in STD_LOGIC_VECTOR(3 downto 0);
       Q3 : in STD_LOGIC_VECTOR(3 downto 0);
       AN : out STD_LOGIC_VECTOR(7 downto 0) := (others=>'1');
       LED_out : out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal NET1311 : STD_LOGIC;
signal NET137711 : STD_LOGIC;
signal NET1479 : STD_LOGIC;
signal NET1482 : STD_LOGIC;
signal BUS1860 : STD_LOGIC_VECTOR(3 downto 0);
signal BUS1868 : STD_LOGIC_VECTOR(3 downto 0);
signal BUS1876 : STD_LOGIC_VECTOR(3 downto 0);
signal BUS1884 : STD_LOGIC_VECTOR(3 downto 0);
signal BUS1981 : STD_LOGIC_VECTOR(3 downto 0);

begin

----  Component instantiations  ----

U1 : lock
  port map(
       CLR => NET137711,
       BACK => NET1482,
       CLK => CLK,
       CE => NET1479,
       DATA => BUS1981,
       PUSH => NET1311,
       OK => OK,
       WRONG => WRONG,
       JAKI_STAN => JAKI_STAN,
       Q0 => BUS1860,
       Q1 => BUS1868,
       Q2 => BUS1876,
       Q3 => BUS1884
  );

U3 : sev_seg
  port map(
       CLR => NET137711,
       CLK => CLK,
       CE => NET1479,
       Q0 => BUS1860,
       Q1 => BUS1868,
       Q2 => BUS1876,
       Q3 => BUS1884,
       AN => AN,
       LED_out => LED_out
  );

U4 : keypad_controller
  port map(
       clk => CLK,
       CLEAR => NET137711,
       CE => NET1479,
       ROW => ROW,
       COLUMN => COLUMN,
       outkey => BUS1981
  );

U6 : Prescaler
  port map(
       CLK => CLK,
       CE => CE,
       CLR => NET137711,
       CEO => NET1479
  );

U7 : Debouncer
  port map(
       CLK => CLK,
       CEI => NET1479,
       PUSH => PUSH,
       CLR => NET137711,
       PE => NET1311
  );

U9 : Debouncer
  port map(
       CLK => CLK,
       CEI => NET1479,
       PUSH => BACK,
       CLR => NET137711,
       PE => NET1482
  );


---- Terminal assignment ----

    -- Inputs terminals
	NET137711 <= CLR;


end combination_lock;
