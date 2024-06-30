library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TrafficLightsTop is
	port(CLOCK_50	: in  std_logic;
		  KEY			: in  std_logic_vector(0 downto 0);
		  SW			: in  std_logic_vector(0 downto 0);
		  LEDR		: out std_logic_vector(17 downto 0));
end TrafficLightsTop;

architecture Shell of TrafficLightsTop is

	signal s_clk1Hz					: std_logic;
	signal s_newTime, s_timeExp	: std_logic;
	signal s_timeVal					: std_logic_vector(7 downto 0);
	signal s_yBlink					: std_logic;
	signal s_yellow1, s_yellow2	: std_logic;

begin
	clk_div_1hz : entity work.ClkDividerN(RTL)
		generic map(divFactor => 50000000)
		port map(clkIn			 => CLOCK_50,
					clkOut		 => s_clk1Hz);

	main_fsm : entity work.TrafficLightsFSM(Behavioral)
		port map(reset		=> not KEY(0),
					clk		=> s_clk1Hz,
					intermit	=> SW(0),
					newTime	=> s_newTime,
					timeVal	=> s_timeVal,
					timeExp	=> s_timeExp,
					yBlink	=> s_yBlink,
					red1		=> LEDR(15),
					yellow1	=> s_yellow1,
					green1	=> LEDR(17),
					red2		=> LEDR(2),
					yellow2	=> s_yellow2,
					green2	=> LEDR(0));

	LEDR(16) <= s_yellow1 and (not s_yBlink or s_clk1Hz);
	LEDR(1)  <= s_yellow2 and (not s_yBlink or s_clk1Hz);

	timer_fsm : entity work.TimerAuxFSM(Behavioral)
		port map(reset		=> not KEY(0),
					clk		=> not s_clk1Hz,
					newTime	=> s_newTime,
					timeVal	=> s_timeVal,
					timeExp	=> s_timeExp);

end Shell;
