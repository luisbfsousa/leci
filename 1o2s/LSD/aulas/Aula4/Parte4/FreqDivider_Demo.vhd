library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider_Demo is
	port(clock_50 : in std_logic;
		  SW : in std_logic_vector(0 downto 0);
		  LEDR : out std_logic_vector(0 downto 0));
end FreqDivider_Demo;

architecture Structural of FreqDivider_Demo is
begin
	divisor : entity work.FreqDivider(Behavioral)
		port map(clkIn => clock_50,
					reset => SW(0),
					clkOut => LEDR(0),
					k => x"017D7840");
end Structural;