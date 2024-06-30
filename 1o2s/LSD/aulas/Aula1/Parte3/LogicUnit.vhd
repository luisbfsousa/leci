library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LogicUnit is
port(input0 : in std_logic;
input1 : in std_logic;
invOut : out std_logic;
andOut : out std_logic;
orOut : out std_logic;
xorOut : out std_logic;
nandOut : out std_logic;
norOut : out std_logic);
end LogicUnit;

architecture Behavioral of LogicUnit is
begin
invOut <= not input0;
andOut <= input0 and input1;
orOut <= input0 or input1;
xorOut <= input0 xor input1;
nandOut <= input0 nand input1;
norOut <= input0 nor input1;
end Behavioral;