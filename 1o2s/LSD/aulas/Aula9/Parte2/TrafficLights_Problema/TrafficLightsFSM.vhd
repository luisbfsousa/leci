library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TrafficLightsFSM is
	port(reset		: in  std_logic;
		  clk			: in  std_logic;
		  intermit	: in  std_logic;
		  newTime	: out std_logic;
		  timeVal	: out std_logic_vector(7 downto 0);
		  timeExp	: in  std_logic;
		  yBlink		: out std_logic;
		  red1		: out std_logic;
		  yellow1	: out std_logic;
		  green1		: out std_logic;
		  red2		: out std_logic;
		  yellow2	: out std_logic;
		  green2		: out std_logic);
end TrafficLightsFSM;

architecture Behavioral of TrafficLightsFSM is

	constant RED_TIME				: std_logic_vector(7 downto 0) := "00000100"; -- 4 s
	constant YELLOW_TIME			: std_logic_vector(7 downto 0) := "00000011"; -- 3 s
	constant GREEN1_TIME			: std_logic_vector(7 downto 0) := "00001110"; -- 14 s
	constant GREEN2_TIME			: std_logic_vector(7 downto 0) := "00001100"; -- 10 s
	constant INTERMIT_MIN_TIME	: std_logic_vector(7 downto 0) := "00000110"; -- 6 s

	type TState is (TInit, TIntermit,
						 TRed1, TYellow1, TGreen1,
						 TRed2, TYellow2, TGreen2);
	signal s_currentState, s_nextState	: TState := TInit;

	signal s_stateChanged : std_logic := '1';

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= TInit;
				s_stateChanged <= '1';
			else
				if (s_currentState /= s_nextState) then
					s_stateChanged <= '1';
				else
					s_stateChanged <= '0';
				end if;
				s_currentState	<= s_nextState;
			end if;
		end if;
	end process;

	newTime <= s_stateChanged;

	comb_proc : process(s_currentState, intermit, timeExp)
	begin
		case (s_currentState) is
		when TInit =>
			red1		<= '0';
			yellow1	<= '0';
			green1	<= '0';
			red2		<= '0';
			yellow2	<= '0';
			green2	<= '0';
			yBlink	<= '0';
			timeVal	<= (others => '-');
			s_nextState <= TIntermit;

		when TIntermit =>
			red1		<= '0';
			yellow1	<= '1';
			green1	<= '0';
			red2		<= '0';
			yellow2	<= '1';
			green2	<= '0';
			yBlink	<= '1';
			timeVal	<= INTERMIT_MIN_TIME;

			if ((intermit = '0') and (timeExp = '1')) then
				s_nextState <= TRed1;
			else
				s_nextState <= TIntermit;
			end if;

		when TRed1 =>
			red1		<= '1';
			yellow1	<= '0';
			green1	<= '0';
			red2		<= '1';
			yellow2	<= '0';
			green2	<= '0';
			yBlink	<= '0';
			timeVal	<= RED_TIME;

			if (timeExp = '1') then
				if (intermit = '1') then
					s_nextState <= TIntermit;
				else
					s_nextState <= TGreen2;
				end if;
			else
				s_nextState <= TRed1;
			end if;

		when TYellow1 =>
			red1		<= '0';
			yellow1	<= '1';
			green1	<= '0';
			red2		<= '1';
			yellow2	<= '0';
			green2	<= '0';
			yBlink	<= '0';
			timeVal	<= YELLOW_TIME;

			if (timeExp = '1') then
				s_nextState <= TRed1;
			else
				s_nextState <= TYellow1;
			end if;

		when TGreen1 =>
			red1		<= '0';
			yellow1	<= '0';
			green1	<= '1';
			red2		<= '1';
			yellow2	<= '0';
			green2	<= '0';
			yBlink	<= '0';
			timeVal	<= GREEN1_TIME;

			if (intermit = '1') or (timeExp = '1') then
				s_nextState <= TYellow1;
			else
				s_nextState <= TGreen1;
			end if;

		when TRed2 =>
			red1		<= '1';
			yellow1	<= '0';
			green1	<= '0';
			red2		<= '1';
			yellow2	<= '0';
			green2	<= '0';
			yBlink	<= '0';
			timeVal	<= RED_TIME;

			if (timeExp = '1') then
				if (intermit = '1') then
					s_nextState <= TIntermit;
				else
					s_nextState <= TGreen1;
				end if;
			else
				s_nextState <= TRed2;
			end if;

		when TYellow2 =>
			red1		<= '1';
			yellow1	<= '0';
			green1	<= '0';
			red2		<= '0';
			yellow2	<= '1';
			green2	<= '0';
			yBlink	<= '0';
			timeVal	<= YELLOW_TIME;

			if (timeExp = '1') then
				s_nextState <= TRed2;
			else
				s_nextState <= TYellow2;
			end if;

		when TGreen2 =>
			red1		<= '1';
			yellow1	<= '0';
			green1	<= '0';
			red2		<= '0';
			yellow2	<= '0';
			green2	<= '1';
			yBlink	<= '0';
			timeVal	<= GREEN2_TIME;

			if (intermit = '1') or (timeExp = '1') then
				s_nextState <= TYellow2;
			else
				s_nextState <= TGreen2;
			end if;
		end case;
	end process;
end Behavioral;
