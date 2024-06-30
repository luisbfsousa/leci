library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity Tb_FreqDivider is
end Tb_FreqDivider;
 
architecture Stimulus of Tb_FreqDivider is
	signal s_clkIn : std_logic;
	signal s_reset : std_logic;
	signal s_clkOut : std_logic;
begin
 
	uut : entity work.FreqDivider(Behavioral)
		generic map(divFactor => 5)
		port map(reset => s_reset,
					clkIn => s_clkIn,
					clkOut => s_clkOut);
 
	clock_proc : process
	begin
	
		s_clkIn <= '0';
		wait for 2 ns;
		
		s_clkIn <= '1';
		wait for 2 ns;

	end process;
 
	stim_proc : process
	begin
	
		s_reset <= '1';
		wait for 200 ns;
		
		s_reset <= '0';
		wait for 800 ns;
		
	end process;
end Stimulus;