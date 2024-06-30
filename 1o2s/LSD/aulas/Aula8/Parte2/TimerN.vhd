library ieee;
use ieee.std_logic_1164.all;

entity TimerN is
	generic(N : positive := 50_000_000);
	port(clk, reset, enable, start : in std_logic;
		  timerOut : out std_logic);
end TimerN;

architecture Behavioral of TimerN is
	signal s_count : integer := 0;
begin
	assert(N >= 2);
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				timerOut <= '0';
				s_count <= 0;
			elsif (enable = '1') then
				if (s_count = 0) then
					if (start = '1') then
						timerOut <= '1';
						s_count <= s_count + 1;
					else
						timerOut <= '0';
					end if;
				else
					if (s_count = (N - 1)) then
						timerOut <= '0';
						s_count <= 0;
					else
						timerOut <= '1';
						s_count <= s_count + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
end Behavioral;