library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegisterN is
	generic (size : positive := 8);
	port(clk, sin : in std_logic;
		  dataOut :	out std_logic_vector(size - 1 downto 0));
end ShiftRegisterN;

architecture Behavioral of ShiftRegisterN is
	signal s_dataOut	:	std_logic_vector(size - 1 downto 0);
begin
	process(clk)
		begin
		if(rising_edge(clk)) then
				s_dataOut <= s_dataOut(size - 2 downto 0) & sin;
		end if;
	end process;
	dataOut 	<= s_dataOut(size - 1 downto 0);
end Behavioral;