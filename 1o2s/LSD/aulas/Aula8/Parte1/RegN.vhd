library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RegN is
	generic(size	 : positive := 8);
	port(asyncReset : in  std_logic;
		  clk			 : in  std_logic;
		  enable		 : in  std_logic;
		  syncReset	 : in  std_logic;
		  dataIn		 : in  std_logic_vector((size - 1) downto 0);
		  dataOut	 : out std_logic_vector((size - 1) downto 0));
end RegN;

architecture Behavioral of RegN is
begin
	reg_proc : process(asyncReset, clk)
	begin
		if (asyncReset = '1') then
			dataOut <= (others => '0');
		elsif (rising_edge(clk)) then
			if (enable = '1') then
				if (syncReset = '1') then
					dataOut <= (others => '0');
				else
					dataOut <= dataIn;
				end if;
			end if;
		end if;
	end process;
end Behavioral;
