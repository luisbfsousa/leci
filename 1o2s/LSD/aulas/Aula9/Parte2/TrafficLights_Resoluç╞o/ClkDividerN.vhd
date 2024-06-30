library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ClkDividerN is
	generic(divFactor : natural);
	port(clkIn	: in  std_logic;
		  clkOut	: out std_logic);
end ClkDividerN;

architecture RTL of ClkDividerN is

	signal s_divCounter : natural;

begin
	process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if (s_divCounter = divFactor - 1) then
				clkOut		 <= '0';
				s_divCounter <= 0;
			else
				if (s_divCounter = (divFactor / 2 - 1)) then
					clkOut	 <= '1';
				end if;
				s_divCounter <= s_divCounter + 1;
			end if;
		end if;
	end process;
end RTL;
