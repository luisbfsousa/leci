library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity FullAdder is
	port(a, b, cin : in std_logic;
         s, cout   : out std_logic);
end FullAdder;

architecture Behavioral of FullAdder is
begin
	cout <= (a and b) or (cin and a) or (cin and b);
	s <= (a xor b) xor cin;
end Behavioral;