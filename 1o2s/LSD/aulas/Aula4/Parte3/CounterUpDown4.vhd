library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterUpDown4 is
	port(reset, clk, upDown: in std_logic;
		  count : out std_logic_vector(3 downto 0));
end CounterUpDown4;

architecture Behav of CounterUpDown4 is
	signal cntValue : unsigned(3 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				cntValue <= (others => '0');
			else
				if (upDown = '1') then
					cntValue <= cntValue + 1;
				else
					cntValue <= cntValue - 1;
				end if;
			end if;
		end if;
	end process;
	count <= std_logic_vector(cntValue);
end Behav;