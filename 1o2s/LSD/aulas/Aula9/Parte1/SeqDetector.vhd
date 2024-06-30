library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetector is
	port(SW : in std_logic_vector(2 downto 0);
	     CLOCK_50 : in std_logic;
		  LEDR : out std_logic_vector(0 downto 0);
		  LEDG : out std_logic_vector(0 downto 0));
end SeqDetector;

architecture Behavioral  of SeqDetector is
	signal clock: std_logic;
begin

	divisor : entity work.ClkDividerN(Behavioral)
		generic map(divFactor => 100000000)
		port map(clkIn => CLOCK_50,
					clkOut => clock);
					
	system_core : entity work.SeqDetFSM(MealyArch)
		port map(reset    => SW(1),
					clk      => clock,
					xIn   => SW(0),
					zOut => LEDR(0));
					
	LEDG(0) <= clock;
	
end Behavioral;