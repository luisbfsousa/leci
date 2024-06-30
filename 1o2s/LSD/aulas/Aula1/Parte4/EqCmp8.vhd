library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EqCmp8 is
port(input0 : in std_logic_vector(7 downto 0);
input1 : in std_logic_vector(7 downto 0);
cmpOut : out std_logic);
end EqCmp8;

architecture Behavioral of EqCmp8 is
begin
cmpOut <= '1' when (input0 = input1) else
'0';
end Behavioral;