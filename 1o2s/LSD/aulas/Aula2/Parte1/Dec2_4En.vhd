library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Dec2_4En is
	port(enable : in std_logic;
		inputs : in std_logic_vector(1 downto 0);
		outputs : out std_logic_vector(3 downto 0));
end Dec2_4En;

architecture BehavAssign of Dec2_4En is
begin
outputs <= "0000" when (enable = '0') else
				"0001" when (inputs = "00") else
				"0010" when (inputs = "01") else
				"0100" when (inputs = "10") else
				"1000";
end BehavAssign;