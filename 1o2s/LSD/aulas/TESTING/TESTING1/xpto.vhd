library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xpto is
	port (clk, reset, load    : in std_logic;
			dataIn : in std_logic_vector(3 downto 0);
			dataOut : out std_logic_vector(3 downto 0));
end xpto;

architecture Behav of xpto is
	signal s_sreg : std_logic_vector(3 downto 0 );
begin 
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_sreg <= (others => '0');
			elsif (load = '1') then
				s_sreg <= dataIn;
			else
				s_sreg <= s_sreg(2 downto 0) & s_sreg(3);
			end if;
		end if;
	end process;
	dataOut <= s_sreg;
end Behav;