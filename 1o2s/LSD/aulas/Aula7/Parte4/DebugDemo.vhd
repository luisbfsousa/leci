library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DebugDemo is
	port(CLOCK_50 : in std_logic;
		  SW       : std_logic_vector(1 downto 0);
		  LEDR     : out std_logic_vector(17 downto 0));
end DebugDemo;

architecture Shell of DebugDemo is
begin
	system_core : entity work.CntUp(Behavioral)
				port map(clk						=> CLOCK_50,	
						   reset						=>SW(0),
						   enable	      		=> SW(1),
						   cntVal(29 downto 12) => 	LEDR);
end Shell;