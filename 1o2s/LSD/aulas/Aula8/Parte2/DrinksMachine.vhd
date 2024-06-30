library IEEE;
use IEEE.std_logic_1164.all;

entity DrinksMachine is

	port(	CLOCK_50	:	in std_logic;
			SW			:	in std_logic_vector(4 downto 0);
			KEY		:	in std_logic_vector(0 downto 0);
			LEDG		:	out std_logic_vector(0 downto 0));

end DrinksMachine;

architecture Shell of DrinksMachine is

	signal clk50Mhz, s_clk	:	std_logic;

begin

	clk50MHz <= CLOCK_50;

	sw_debounce : entity WORK.DebounceUnit(Behavioral)
		generic map(clkFrekHz => 50000,
						blindmSec => 100,
						inPol		 => '0',
						outPol	 => '1')
		port map(reset			 => SW(0),
					refClk		 => clk50MHz,
					dirtyIn		 => KEY(0),
					pulsedOut	 => s_clk);
					
	drink_core	:	entity work.DrinksFSM(Behavioral)
		port map(C		=>	SW(2),
					V		=>	SW(1),
					reset =>	SW(0),
					clk	=>	s_clk,
					drink	=>	LEDG(0));
	
	timer_core : entity work.TimerN(Behavioral)
		generic map(N => 50_000_000)
		port map(reset => SW(0),
					clk => s_clk,
					enable => SW(3),
					start => SW(4));

end Shell;