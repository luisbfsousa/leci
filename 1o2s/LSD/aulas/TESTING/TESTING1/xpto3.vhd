library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xpto3 is
	port (clk, reset, sIn : in std_logic;
			dataOut : out std_logic_vector(3 downto 0));
end xpto3;

architecture Behav of xpto3 is
	signal s_sreg : std_logic_vector(3 downto 0);
begin 
	process(clk, reset)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_sreg <= (others => '0');
			else
				s_sreg <= s_sreg(2 downto 0) & sIn;
			end if;
		end if;
	end process;
	dataOut <= s_sreg;
end Behav;