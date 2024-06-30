library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PULSES_Curtos is
	generic (MAX : positive := 50_000_000);
	port (clk : in STD_LOGIC;
			reset : in STD_LOGIC;
			pulse : out STD_LOGIC);
end PULSES_Curtos;

architecture Behavioral of PULSES_Curtos is
	signal s_cnt : natural range 0 to MAX-1;
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			pulse <= '0';
			if (reset = '1') then
				s_cnt <= 0;
			else
				s_cnt <= s_cnt + 1;
				if (s_cnt = MAX-1) then
					s_cnt <= 0;
					pulse <= '1';
				end if;
			end if;
		end if;
	end process;
end Behavioral;