library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ClkDividerN is
	generic(divFactor : positive := 2);
	port(clkIn	: in  std_logic;
		  clkOut	: out std_logic);
end ClkDividerN;

architecture Behavioral of ClkDividerN is

	subtype TCounter is natural range 0 to (divFactor - 1);

	signal s_divCounter : TCounter;

begin
	assert(divFactor >= 2);

	count_proc : process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if (s_divCounter >= divFactor - 1) then
				s_divCounter <= 0;
			else
				s_divCounter <= s_divCounter + 1;
			end if;
		end if;
	end process;

	out_proc : process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if (s_divCounter >= (divFactor / 2 - 1)) then
				clkOut <= '1';
			else
				clkOut <= '0';
			end if;
		end if;
	end process;
end Behavioral;
