library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xpto4 is
	port (clk, reset, load    : in std_logic;
			dataIn : in std_logic_vector(3 downto 0);
			dataOut : out std_logic_vector(3 downto 0));
end xpto4;

architecture Behav of xpto4 is
	signal s_sreg : std_logic_vector(3 downto 0 );
begin 
	process(clk)
	begin
		if (reset = '1') then
				s_sreg <= (others => '0');
		elsif (rising_edge(clk)) then
			if (load = '1') then
				s_sreg <= dataIn;
			else
				s_sreg <= s_sreg(0) & s_sreg(3 downto 1);
			end if;
		end if;
	end process;
	dataOut <= s_sreg;
end Behav;