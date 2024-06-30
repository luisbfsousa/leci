library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AccN is
	generic(N: positive := 8);
	port(clk, enable, reset : in std_logic;
		  dataIn : in std_logic_vector((N-1) downto 0);
		  dataOut : out std_logic_vector((N-1) downto 0));
end AccN;

architecture Shell of AccN is
	signal s_regOut, s_adderOut : std_logic_vector((N-1) downto 0);
begin

	adder : entity WORK.AdderN(Behavioral)
		generic map(N => N)
		port map(operand0 => dataIn,
					operand1 => s_regOut,
					result => s_adderOut);
					
	reg : entity WORK.RegN(Behav)
		generic map(N => N)
		port map(dataIn => s_adderOut,
					dataOut => s_regOut,
					reset => reset,
					enable => enable,
					clk => clk);
					
	dataOut <= s_regOut;
end Shell;