library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegN is
	generic(N: positive := 8);
	port(clk, enable, reset : in std_logic;
		  dataIn : in std_logic_vector((N-1) downto 0);
		  dataOut : out std_logic_vector((N-1) downto 0));
end RegN;

architecture Behav of RegN is
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
					dataOut <= (others => '0');
			elsif (enable = '1') then
				dataOut <= dataIn;
			end if;
		end if;
	end process;
end Behav;