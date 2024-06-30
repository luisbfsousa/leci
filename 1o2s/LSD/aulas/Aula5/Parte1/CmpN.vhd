library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CmpN is
	generic(N : positive := 8);
	port(input0 : in std_logic_vector((N-1) downto 0);
		  input1 : in std_logic_vector((N-1) downto 0);
		  equal : out std_logic;
		  notEqual : out std_logic;
	     ltSigned : out std_logic;
        ltUnsigned : out std_logic);
end CmpN;

architecture Behavioral of CmpN is
	begin
		equal <= '1' when (input0 = input1) else
		'0';
		notEqual <= '1' when (input0 /= input1) else
		'0';
		ltSigned <= '1' when (signed(input0) < signed(input1)) else
		'0';
		ltUnsigned <= '1' when (unsigned(input0) < unsigned(input1)) else
		'0';
end Behavioral; 