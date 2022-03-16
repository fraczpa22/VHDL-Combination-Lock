-------------------------------------------------------------------------------
--
-- Title       : keypad_controller
-- Design      : TutorVHDL
-- Author      : fraczpa@student.agh.edu.pl
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : D:\AGH\PSC\projekt\TutorVHDL\src\keypad_controller.vhd
-- Generated   : Wed Dec 29 00:49:31 2021
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
--{entity {keypad_controller} architecture {keypad_controller}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity keypad_controller is
	 port(
		 clk : in STD_LOGIC;
		 CLEAR : in STD_LOGIC;
		 CE : in STD_LOGIC;
		 ROW : in STD_LOGIC_VECTOR(0 to 3);
		 COLUMN : Buffer STD_LOGIC_VECTOR(0 to 3);
		 outkey : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end keypad_controller;

--}} End of automatically maintained section

architecture keypad_controller of keypad_controller is                     
begin  
	
	PROCESS(clk, CLEAR,ROW,COLUMN)
  	BEGIN
    IF(CLEAR = '1') THEN                  --reset
    	outkey <= (OTHERS => '1');             --release column outputs
    	COLUMN <= "1110";           --clear key press buffer
	else
		IF(clk'EVENT AND clk = '1') THEN
			if CE = '1' then
				CASE COLUMN is
					WHEN "1110" =>
						if ROW = "1110" then 
						   outkey<="0001";
						elsif ROW = "1101" then 
						   outkey<="0010";
						elsif ROW = "1011" then 
						   outkey<="0011";
						elsif ROW = "0111" then 
						   outkey<="1010"; 
						end if;   
						COLUMN<="1101";
		            WHEN "1101" =>
						if ROW = "1110" then 
						   outkey<="0100";
						elsif ROW = "1101" then 
						   outkey<="0101";
						elsif ROW = "1011" then 
						   outkey<="0110";
						elsif ROW = "0111" then 
						   outkey<="1011"; 
						end if;   
						COLUMN<="1011";
					WHEN "1011" =>
						if ROW = "1110" then 
						   outkey<="0111";
						elsif ROW = "1101" then 
						   outkey<="1000";
						elsif ROW = "1011" then 
						   outkey<="1001";
						elsif ROW = "0111" then 
						   outkey<="1100"; 
						end if;   
						COLUMN<="0111";
				    WHEN "0111" =>
						if ROW = "1110" then 
						   outkey<="0000";
						elsif ROW = "1101" then 
						   outkey<="1111";
						elsif ROW = "1011" then 
						   outkey<="1110";
						elsif ROW = "0111" then 
						   outkey<="1101"; 
						end if;   
						COLUMN<="1110";
				    WHEN OTHERS =>
	            		COLUMN <= "1110";	
					end case;
				end if;
		end if;
	end if;
	end process;
end keypad_controller;
