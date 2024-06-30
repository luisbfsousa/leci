library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegister4 is
	port(clk, sin :	in std_logic;
		  dataOut :	out std_logic_vector(3 downto 0));
end ShiftRegister4;

architecture Behavioral of ShiftRegister4 is
	signal s_dataOut : std_logic_vector(3 downto 0);
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			s_dataOut <= s_dataOut(2 downto 0) & sin;
		end if;
	end process;
	dataOut <= s_dataOut;
end Behavioral;