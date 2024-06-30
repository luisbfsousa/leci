library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter4Bits is
	generic(MAX		: natural := 9);
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  enable1	: in  std_logic;
		  enable2	: in  std_logic;
		  valOut		: out std_logic_vector(3 downto 0);
		  termCnt	: out std_logic);
end Counter4Bits;

architecture RTL of Counter4Bits is

	signal s_value : unsigned(3 downto 0);

begin
	process(reset, clk)
	begin	
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_value <= (others => '0');
				termCnt <= '0';
			elsif ((enable1 = '1') and (enable2 = '1')) then
				if (to_integer(s_value) = MAX) then
					s_value <= (others => '0');
					termCnt <= '0';
				else
					s_value <= s_value + 1;
					if (to_integer(s_value) = MAX - 1) then
						termCnt <= '1';
					else
						termCnt <= '0';
					end if;
				end if;
			end if;
		end if;
	end process;

	valOut <= std_logic_vector(s_value);
end RTL;
