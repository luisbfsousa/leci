library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterLoadUpDown4 is
	port(reset, clk, upDown, enable, load : in std_logic;
		  dataIn : in std_logic_vector(3 downto 0);
		  count : out std_logic_vector(3 downto 0));
end CounterLoadUpDown4;

architecture Behav of CounterLoadUpDown4 is
	signal cntValue : unsigned(3 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				cntValue <= (others => '0');
			elsif (enable = '1') then
				if (load = '1') then
					cntValue <= unsigned(dataIn);
				else
					if (upDown = '1') then
						cntValue <= cntValue + 1;
					else
						cntValue <= cntValue - 1;
					end if;
				end if;
			end if;
		end if;
	end process;
	count <= std_logic_vector(cntValue);
end Behav;