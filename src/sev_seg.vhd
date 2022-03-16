-------------------------------------------------------------------------------
--
-- Title       : sev_seg
-- Design      : combination_lock
-- Author      : IE
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- File        : C:\My_Designs\M_K_9_40\projekt\combination_lock_MK\combination_lock\src\sev_seg.vhd
-- Generated   : Wed Jan 26 10:59:26 2022
-- From        : interface description file
-- By          : Itf2Vhdl ver. 1.22
--
-------------------------------------------------------------------------------

 
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

-----------------------------------
--sterowanie wyœwietlaczem siedmiosegmentowym
-----------------------------------

entity sev_seg is 
	port(	
		CLR : in STD_LOGIC;
		CLK : in STD_LOGIC;
		CE : in STD_LOGIC;	 
		
		Q0: in STD_LOGIC_VECTOR(3 downto 0);
		Q1: in STD_LOGIC_VECTOR(3 downto 0);
		Q2: in STD_LOGIC_VECTOR(3 downto 0);
		Q3: in STD_LOGIC_VECTOR(3 downto 0);
		
		AN: out STD_LOGIC_VECTOR(7 downto 0):= (others => '1'); --anode activate, 4 anode signals
		LED_out: out STD_LOGIC_VECTOR(6 downto 0) --catchode patterns // 7 bitów 	  
		
		
		);	
end sev_seg;


architecture sev_seg of sev_seg is	  

	type stan is (pos1,pos2 ,pos3 ,pos4 );
	signal stan_obecny, stan_nastepny: stan;

begin

	process(CLK, CLR)
	begin 
		if CLR = '1' then
			stan_obecny <= pos1;
		elsif CLK'event and CLK = '1' then
			if CE = '1' then 
				stan_obecny <= stan_nastepny;
			end if;
		end if;
		
	end process;
	
	
	process(Q0 ,Q1 ,Q2, Q3 ,stan_obecny)
	begin	   
		case stan_obecny is
			when pos1 =>
				AN <= "11111110";
				
				case Q0 is
					when "0000" => LED_out <= "0000001"; -- "0"     
				    when "0001" => LED_out <= "1001111"; -- "1" 
				    when "0010" => LED_out <= "0010010"; -- "2" 
				    when "0011" => LED_out <= "0000110"; -- "3" 
				    when "0100" => LED_out <= "1001100"; -- "4" 
				    when "0101" => LED_out <= "0100100"; -- "5" 
				    when "0110" => LED_out <= "0100000"; -- "6" 
				    when "0111" => LED_out <= "0001111"; -- "7" 
				    when "1000" => LED_out <= "0000000"; -- "8"     
				    when "1001" => LED_out <= "0000100"; -- "9" 
				    when "1010" => LED_out <= "0001000"; -- A
				    when "1011" => LED_out <= "1100000"; -- b
				    when "1100" => LED_out <= "0110001"; -- C
				    when "1101" => LED_out <= "1000010"; -- d
				    when "1110" => LED_out <= "0110000"; -- E
				    when "1111" => LED_out <= "0111000"; -- F
					when others => LED_out <= "0000000"; 	 
					
				end case;	
				
				stan_nastepny <= pos2;
				
			when pos2 =>   
				AN <= "11111101";
			
				case Q1 is
					when "0000" => LED_out <= "0000001"; -- "0"     
				    when "0001" => LED_out <= "1001111"; -- "1" 
				    when "0010" => LED_out <= "0010010"; -- "2" 
				    when "0011" => LED_out <= "0000110"; -- "3" 
				    when "0100" => LED_out <= "1001100"; -- "4" 
				    when "0101" => LED_out <= "0100100"; -- "5" 
				    when "0110" => LED_out <= "0100000"; -- "6" 
				    when "0111" => LED_out <= "0001111"; -- "7" 
				    when "1000" => LED_out <= "0000000"; -- "8"     
				    when "1001" => LED_out <= "0000100"; -- "9" 
				    when "1010" => LED_out <= "0001000"; -- A
				    when "1011" => LED_out <= "1100000"; -- b
				    when "1100" => LED_out <= "0110001"; -- C
				    when "1101" => LED_out <= "1000010"; -- d
				    when "1110" => LED_out <= "0110000"; -- E
				    when "1111" => LED_out <= "0111000"; -- F
					when others => LED_out <= "0000000";
				end case; 
				
				stan_nastepny <= pos3;
				
			when pos3 =>
				AN <= "11111011";
			
				case Q2 is
					when "0000" => LED_out <= "0000001"; -- "0"     
				    when "0001" => LED_out <= "1001111"; -- "1" 
				    when "0010" => LED_out <= "0010010"; -- "2" 
				    when "0011" => LED_out <= "0000110"; -- "3" 
				    when "0100" => LED_out <= "1001100"; -- "4" 
				    when "0101" => LED_out <= "0100100"; -- "5" 
				    when "0110" => LED_out <= "0100000"; -- "6" 
				    when "0111" => LED_out <= "0001111"; -- "7" 
				    when "1000" => LED_out <= "0000000"; -- "8"     
				    when "1001" => LED_out <= "0000100"; -- "9" 
				    when "1010" => LED_out <= "0001000"; -- A
				    when "1011" => LED_out <= "1100000"; -- b
				    when "1100" => LED_out <= "0110001"; -- C
				    when "1101" => LED_out <= "1000010"; -- d
				    when "1110" => LED_out <= "0110000"; -- E
				    when "1111" => LED_out <= "0111000"; -- F
					when others => LED_out <= "0000000";
				end case; 
				
				stan_nastepny <= pos4;
				
			when pos4 =>   
				AN <= "11110111";
			
				case Q3 is
					when "0000" => LED_out <= "0000001"; -- "0"     
				    when "0001" => LED_out <= "1001111"; -- "1" 
				    when "0010" => LED_out <= "0010010"; -- "2" 
				    when "0011" => LED_out <= "0000110"; -- "3" 
				    when "0100" => LED_out <= "1001100"; -- "4" 
				    when "0101" => LED_out <= "0100100"; -- "5" 
				    when "0110" => LED_out <= "0100000"; -- "6" 
				    when "0111" => LED_out <= "0001111"; -- "7" 
				    when "1000" => LED_out <= "0000000"; -- "8"     
				    when "1001" => LED_out <= "0000100"; -- "9" 
				    when "1010" => LED_out <= "0001000"; -- A
				    when "1011" => LED_out <= "1100000"; -- b
				    when "1100" => LED_out <= "0110001"; -- C
				    when "1101" => LED_out <= "1000010"; -- d
				    when "1110" => LED_out <= "0110000"; -- E
				    when "1111" => LED_out <= "0111000"; -- F
					when others => LED_out <= "0000000";
				end case;
		
				stan_nastepny <= pos1;	
		end case;	
	end process;

end sev_seg;
