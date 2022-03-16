-------------------------------------------------------------------------------
--
-- Title       : lock
-- Design      : combination_lock
-- Author      : Michalina Kopciñska
-- Company     : Akademia Górniczo-Hutnicza
--
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity lock is
	port(
		CLR : in STD_LOGIC;		--	 czyszczenie wszystkiego
		BACK : in STD_LOGIC;   -- czyszczenie poprzedniej cyfry  // powrócenie do stanu poprzedniego  // mo¿na u¿yæ jako block
		CLK : in STD_LOGIC;
		CE : in STD_LOGIC;
		DATA: in STD_LOGIC_VECTOR(3 downto 0);
		PUSH: in STD_LOGIC;	  
		
		OK: out STD_LOGIC; 			--wyjœcie jako reakcja na kod [podpi¹æ odpowiednie diody RGB]
		WRONG: out STD_LOGIC;		 --bardzo Ÿle, opisane w notatkach
		
		JAKI_STAN: out STD_LOGIC_VECTOR(4 downto 0);
		ILE_PROB: out STD_LOGIC_VECTOR(2 downto 0);
		
		Q0: out STD_LOGIC_VECTOR(3 downto 0);
		Q1: out STD_LOGIC_VECTOR(3 downto 0);
		Q2: out STD_LOGIC_VECTOR(3 downto 0);
		Q3: out STD_LOGIC_VECTOR(3 downto 0)
		
		
		);	   
end lock;

--}} End of automatically maintained section

architecture lock of lock is
	
	-- signal Q_INT	   w
	signal PASSCODE: STD_LOGIC_VECTOR(15 downto 0):= (others => '0'); --0000	  
	
	signal OK_temp: STD_LOGIC:='0';
	signal WRONG_temp: STD_LOGIC:='0';
	signal Bylo: STD_LOGIC:='0';
	signal ILE_PROB_temp: STD_LOGIC_VECTOR(2 downto 0):= "001";		
	
	type stan is (s0, s1, s2, s3, s4);
	signal stan_obecny, stan_nastepny: stan; 
	
	
begin	
	process (CLR, CLK)				    	
	begin	
		
		if CLR = '1' then		   --reset ca³ego programu Qtemp,ILEPROB	 
			stan_obecny <= s0;

		elsif CLK'event and CLK = '1' then
			if CE ='1' then 
				stan_obecny <= stan_nastepny;
			end if;
		end if;
		
	end process;
	
	
	
	process(CLK, stan_obecny, PUSH, BACK, DATA)			 --logika komb.
	
		variable Q0_temp: STD_LOGIC_VECTOR(3 downto 0):= (others =>'0'); --
		variable Q1_temp: STD_LOGIC_VECTOR(3 downto 0):= (others =>'0'); 
		variable Q2_temp: STD_LOGIC_VECTOR(3 downto 0):= (others =>'0'); 
		variable Q3_temp: STD_LOGIC_VECTOR(3 downto 0):= (others =>'0');

		
	begin  
		
		case stan_obecny is
			when s0 => 
				
				-----GASZENIE------		 
				OK_temp<='0';
				WRONG_temp <= '0'; 
				Bylo<='0';
				-------------------
				JAKI_STAN <= "00001";	 
				
				Q0_temp:= DATA(3 downto 0);
				if PUSH = '1' then
					stan_nastepny <=  s1;
				else
					stan_nastepny <=  s0;
				end if;			 
			
			when s1 =>	
				JAKI_STAN <= "00010";
				
				Q1_temp := DATA(3 downto 0);
				
				if PUSH = '1' then
					stan_nastepny <=  s2;
					
				elsif BACK = '1' then 
					stan_nastepny <=  s0;
				else
					stan_nastepny <=  s1;
				end if;
				
			
			when s2 =>
				JAKI_STAN <= "00100";
				Q2_temp := DATA(3 downto 0); 
				
				if PUSH = '1' then  
					stan_nastepny <=  s3;		
				elsif BACK = '1' then 	
					stan_nastepny <=  s1;
				else
					stan_nastepny <=  s2;
				end if;	
			
			when s3 =>
				JAKI_STAN <= "01000"; 
																	
				Q3_temp := DATA(3 downto 0);	
				
				if PUSH = '1' then 
					stan_nastepny <=  s4;
				elsif BACK = '1' then
					stan_nastepny <=  s2;
				else
					stan_nastepny <=  s3;
				end if;
			
			when s4 => 
				JAKI_STAN <= "10000";
				
				if Q0_temp = PASSCODE(3 downto 0) and Q1_temp = PASSCODE(7 downto 4) and Q2_temp = PASSCODE(11 downto 8) and Q3_temp = PASSCODE(15 downto 12)  then
					
					OK_temp<='1';		--œwiate³ka na zielono [ for now zamiast œwiate³ek jakiœ sygna³ OK i NOT_OK  :) ]  
					stan_nastepny <= s4;
				else 
					WRONG_temp<='1';
					if BACK = '1' then 	
						if ILE_PROB_temp = "001" and Bylo = '0' then
							ILE_PROB_temp<="011"; 
							Bylo<='1';
						elsif ILE_PROB_temp = "011"	and Bylo='0' then
							Bylo<='1';
							ILE_PROB_temp<="111";
						end if;
						stan_nastepny <= s0;
						
					else 
						stan_nastepny <= s4;
					end if;
						
				end if;	
		end case;
		Q0<=Q0_temp;
		Q1<=Q1_temp;
		Q2<=Q2_temp;
		Q3<=Q3_temp;
		ILE_PROB <= ILE_PROB_temp;
	end process;
	
	OK <= OK_temp;
	WRONG <= WRONG_temp;
	
	
end lock;
