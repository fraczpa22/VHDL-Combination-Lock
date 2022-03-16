-------------------------------------------------------------------------------
--
-- Title       : Debouncer
-- Design      : combination_lock
-- Author      : IE
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\M_K_9_40\projekt\combination_lock_MK\combination_lock\src\Debouncer.vhd
-- Generated   : Wed Jan 26 13:46:01 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Debouncer} architecture {Debouncer}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity Debouncer is
	port(
		 CLK : in STD_LOGIC;	   -- clk 100...300Hz
		 CEI : in STD_LOGIC;	   -- clock enable input
		 PUSH : in STD_LOGIC;	   -- pushbutton entry
		 CLR : in STD_LOGIC;	   -- clear
		 PE : out STD_LOGIC        -- debounced output	
	     );
end Debouncer;

--}} End of automatically maintained section

architecture Debouncer of Debouncer is		

	signal DELAY : std_logic_vector(2 downto 0);		-- debounce register

begin	
	
	process(CLK, CLR)
	begin
		if CLR = '1' then
			DELAY <= (others => '0');
		elsif CLK'event and CLK = '1' then
			if CEI = '1' then
				DELAY <= DELAY(1 downto 0) & PUSH;	-- shift register
			end if;
		end if;
	end process;
	
PE <= '1' when DELAY = "011" and CEI = '1' else '0';
	 

end Debouncer;
