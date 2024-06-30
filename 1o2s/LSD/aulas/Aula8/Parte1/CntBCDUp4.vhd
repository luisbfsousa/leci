library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CntBCDUp4 is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  enable1	: in  std_logic;
		  enable2	: in  std_logic;
		  count		: out std_logic_vector(15 downto 0));
end CntBCDUp4;

architecture Behavioral of CntBCDUp4 is

	signal s_count : unsigned(15 downto 0);

begin
	count_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_count <= (others => '0');
			elsif ((enable1 = '1') and (enable2 = '1')) then
				if (s_count(3 downto 0) = X"9") then
					s_count(3 downto 0) <= X"0";
					if (s_count(7 downto 4) = X"9") then
						s_count(7 downto 4) <= X"0";
						if (s_count(11 downto 8) = X"9") then
							s_count(11 downto 8) <= X"0";
							if (s_count(15 downto 12) = X"9") then
								s_count(15 downto 12) <= X"0";
							else
								s_count(15 downto 12) <= s_count(15 downto 12) + 1;
							end if;
						else
							s_count(11 downto 8) <= s_count(11 downto 8) + 1;
						end if;
					else
						s_count(7 downto 4) <= s_count(7 downto 4) + 1;
					end if;
				else
					s_count(3 downto 0) <= s_count(3 downto 0) + 1;
				end if;
			end if;
		end if;
	end process;

	count <= std_logic_vector(s_count);
end Behavioral;
