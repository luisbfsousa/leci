library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CntUp is
	port(clk, reset, enable : in std_logic;
		  cntVal             : out std_logic_vector(29 downto 0));
end CntUp;

architecture Behavioral of CntUp is
	signal s_cntVal : unsigned(29 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_cntVal <= (others => '0');
			elsif (enable = '1') then
				s_cntVal <= s_cntVal + 1;
			end if;
		end if;
	end process;
	cntVal <= std_logic_vector(s_cntVal);
end Behavioral;