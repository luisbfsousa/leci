Library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ShiftRegister_Demo is
	port(SW : in std_logic_vector(0 downto 0);
		  LEDR :	out std_logic_vector(7 downto 0);
		  CLOCK_50 : in std_logic);
end ShiftRegister_Demo;

architecture Structural of ShiftRegister_Demo is
	signal s_clk : std_logic;
begin
	FreqDiv : entity work.FreqDivider(Behavioral)
		generic map(divFactor => 100000000)
		port map(clkIN => CLOCK_50,
					clkOUT => s_clk);
					
	ShiftRegister_8 : entity work.ShiftRegisterN(Behavioral)
		generic map(size => 8)
		port map(clk => s_clk,
					sin => SW(0),
					dataOUT => LEDR(7 downto 0));
end Structural;