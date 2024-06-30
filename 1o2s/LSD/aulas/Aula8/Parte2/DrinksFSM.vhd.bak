library IEEE;
use IEEE.std_logic_1164.all;

entity DrinksFSM is

	port(	C		:	in std_logic;
			V		:	in std_logic;
			reset	:	in std_logic;
			clk	:	in std_logic;
			drink	:	out std_logic);

end DrinksFSM;

architecture Behavioral of DrinksFSM is

	type Tstate is (S0,S1,S2,S3,S4,S5);
	signal pState, nState	:	Tstate;

begin

	clk_proc: process(clk, reset)
	begin
		if(reset = '1') then
			pState <= S0;
		elsif(rising_edge(clk)) then
			pState <= nState;
		end if;
	end process;

	comb_process: process(pState, C, V)
	begin
		drink <= '0';
		case pState is
		
			when S0 =>
				if(C='1') then
					nState <= S3;
				elsif(V='1') then
					nState <= S1;
				else
					nState <= S0;
				end if;
			
			when S1 =>
				if(C='1') then
					nState <= S4;
				elsif(V='1') then
					nState <= S2;
				else
					nState <= S1;
				end if;
				
			when S2 =>
				if(C='1') then
					nState <= S5;
				elsif(V='1') then
					nState <= S3;
				else
					nState <= S2;
				end if;
			
			when S3 =>
				if(C='1') then
					nState <= S5;
				elsif(V='1') then
					nState <= S4;
				else
					nState <= S3;
				end if;
			
			when S4 =>
				if(C='1' or V='1') then
					nState <= S5;
				else
					nState <= S4;
				end if;
			
			when S5 =>
				drink <= '1';
				
			when others =>
				nState <= S0;
			
			end case;
	end process;

end Behavioral;