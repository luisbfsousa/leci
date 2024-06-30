library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShitUnit is
	port (DIN    : in std_logic_vector (7 downto 0);
			DIR    : in std_logic;
			AMOUNT : in std_logic_vector (2 downto 0);
			FILL   : in std_logic;
			DOUT   : out std_logic_vector (7 downto 0));
end CombShitUnit;

architecture Behavioral of CombShitUnit is
	signal s_Amount : natural;
	signal fill_v : std_logic_vector(7 downto 0);
begin
	fill_v <= (others => FILL);
	s_Amount <= to_integer(unsigned(AMOUNT));
	process(DIN, DIR, s_Amount, fill_v)
	begin
		if (DIR = '0') then
			DOUT <= (fill_v xor (std_logic_vector(SHIFT_LEFT(unsigned(DIN xor fill_v), s_Amount))));
		else
			DOUT <= (fill_v xor (std_logic_vector(SHIFT_RIGHT(unsigned(DIN xor fill_v), s_Amount))));
		end if;
	end process;
end Behavioral;