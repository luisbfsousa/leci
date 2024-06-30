library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Latch1_Demo is
	port(enable : in std_logic;
		  dataIn : in std_logic;
		  dataOut : out std_logic);
end Latch1_Demo;

architecture Behav of Latch1_Demo is
begin
	process(enable, dataIn)
	begin
	if (enable = '1') then
		dataOut <= dataIn;
	end if;
end process;
end Behav;