library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider is
	generic(divFactor : positive := 100);
	port(clkIn, reset : in std_logic;
		  clkOut       : out std_logic);
end FreqDivider;

architecture Behavioral of FreqDivider is
	subtype TCounter is natural range 0 to divFactor - 1;
	signal s_divCounter : TCounter := 0;
begin
	assert(divFactor >= 2);
	process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if (reset = '1') then
				clkOut <= '0';
				s_divCounter <= 0;
			elsif (s_divCounter >= (divFactor - 1)) then
				clkOut <= '0';
				s_divCounter <= 0;
			else
				if (s_divCounter = (divFactor / 2 - 1)) then
					clkOut <= '1';
				end if;
				s_divCounter <= s_divCounter + 1;
			end if;
		end if;
	end process;
end Behavioral;