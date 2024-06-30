library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
port(sel : in std_logic;
		dataIn0 : in std_logic;
		dataIn1 : in std_logic;
		dataOut : out std_logic);
end Mux2_1;

architecture Equations of Mux2_1 is
	signal s_and0Out, s_and1Out : std_logic;
begin
	s_and0Out <= not sel and dataIn0;
	s_and1Out <= sel and dataIn1;
	dataOut <= s_and0Out or s_and1Out;
end Equations;