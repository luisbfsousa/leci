library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_unsigned.all;


entity StateMachine is
    port(clk : in std_logic;
			enable: in std_logic;
			pontoA : in std_logic_vector(6 downto 0);
			pontoB : in std_logic_vector(6 downto 0);
			reset : in std_logic;
			restart : out std_logic;
			saidaA : out std_logic_vector (6 downto 0);
			saidaB : out std_logic_vector (6 downto 0);
			saidaC : out std_logic_vector (6 downto 0);
			saidaD : out std_logic_vector (6 downto 0);			
			vitoriaA	: out std_logic;
			vitoriaB	: out std_logic);
end StateMachine;

architecture Behavioral of StateMachine is
	type state is (inicial, count, Deuce, adF, Fad, TieBreak);
	signal inicio ,proximo : state;


begin	
	
	comb_proc : process (pontoA, pontoB, inicio , enable)
	begin
	
	saidaA <= pontoA;
	saidaB <= pontoB;
	saidaC <= pontoA;
	saidaD <= pontoB;	
	restart <= '0';
	vitoriaA <= '0';
	vitoriaB <= '0';
	
	--if (enable = '1') then
		--		proximo <= TieBreak;
			--end if;
		
	
	case inicio  is
		when inicial =>
			restart <= '1';		
			proximo <= count;
			
		when count =>
			restart <= '0';
			if (pontoA = "0000011" and pontoB = "0000011") then
				proximo <= Deuce; 
			elsif (pontoA = "0000100")  then 
				vitoriaA <= '1';
				proximo <= inicial;
			elsif (pontoB = "0000100") then	
				vitoriaB <= '1';
				proximo <= inicial;
			else
			saidaA <= pontoA;
			saidaB <= pontoB;
			proximo<=inicio ;
			end if;
			
		when Deuce =>
			saidaA <= "0000100";
			saidaB <= "0000100";
			if (pontoA > pontoB) then
				proximo <= adF;
			elsif (pontoB > pontoA) then
				proximo <= Fad;
			else
				proximo <= inicio ;
			end if;	
			
		when adF =>
			saidaA <= "0000110";
			saidaB <= "0000110";
			if (pontoA > (pontoB + 1)) then
				vitoriaA <= '1';
				proximo <= inicial;
			elsif (pontoA = pontoB) then		
				proximo <= Deuce;
			else	
				proximo <= inicio ;
			end if;
			
		when Fad =>
			saidaA <= "0000101";
			saidaB <= "0000101";
			if (pontoB > (pontoA + 1)) then
				vitoriaB <= '1';
				proximo <= inicial;
			elsif (pontoA = pontoB) then
				proximo <= Deuce;
			else	
				proximo <= inicio ;
			end if;
			
		when TieBreak =>
			saidaA <= "1110001";
			saidaB <= "1110001";
			saidaC <= pontoA;
			saidaD <= pontoB;
			if (pontoA > "0000101" and pontoB > "0000101") then
				if (pontoA > (pontoB + 1)) then
					vitoriaA <= '1';
					proximo <= inicial;
				elsif	(pontoB > (pontoA + 1)) then
					vitoriaB <= '1';
					proximo <= inicial;
				else
					proximo <= inicio ;
				end if;
			elsif (pontoA = "0000111") then
				vitoriaA <= '1';
				proximo <= inicial;
			elsif (pontoB = "0000111") then
				vitoriaB <= '1';
				proximo <= inicial;
			else
				proximo <= inicio ;
			end if;
	end case;
	end process;

    sync_proc : process(clk, reset)
	begin
		if (reset = '1') then 
			inicio <= inicial;
		elsif rising_edge(clk) then
			inicio <= proximo;
		end if;
	end process;

end Behavioral;