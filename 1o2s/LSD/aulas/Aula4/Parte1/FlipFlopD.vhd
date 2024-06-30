library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FlipFlopD is
	port(clk, d, set, reset : in std_logic;
		  q : out std_logic);
end FlipFlopD;

architecture Behavioral of FlipFlopD is
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				q <= '0';
			elsif (set = '1') then
				q <= d;
			end if;
		end if;
	end process;
end Behavioral;