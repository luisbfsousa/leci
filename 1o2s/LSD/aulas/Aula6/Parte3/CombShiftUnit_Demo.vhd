library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CombShiftUnit_Demo is
	port(SW	: in std_logic_vector(10 downto 0);
		  KEY: in std_logic_vector(2 downto 0);
		  LEDR: out std_logic_vector(7 downto 0));
end CombShiftUnit_Demo;

architecture Structural of CombShiftUnit_Demo is
begin
	CombShiftUnit:	entity work.CombShiftUnit(Behavioral)
									port map(dataIn => SW(7 downto 0),
												rotate => KEY(0),
												dirLeft=> KEY(1),
												shArith=> Key(2),
												shAmount=>SW(10 downto 8),
												dataOut => LEDR(7 downto 0));
end Structural;