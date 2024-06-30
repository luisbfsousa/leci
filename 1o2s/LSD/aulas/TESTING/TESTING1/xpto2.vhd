library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xpto2 is
	port (clk, reset, sIn : in std_logic;
			dataOut : out std_logic_vector(3 downto 0));
end xpto2;

architecture Behav of xpto2 is
	signal s_sreg : std_logic_vector(3 downto 0);
begin 
	process(clk, reset)
	begin
		if (reset = '1') then
			s_sreg <= (others => '0');
		elsif (rising_edge(clk)) then
				s_sreg <= sIn & s_sreg(3 downto 1);
		end if;
	end process;
	dataOut <= s_sreg;
end Behav;