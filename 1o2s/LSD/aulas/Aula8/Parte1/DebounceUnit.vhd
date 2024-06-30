library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity DebounceUnit is
	generic(kHzClkFreq		: positive := 50000;
			  mSecMinInWidth	: positive := 100;
			  inPolarity		: std_logic := '1';
			  outPolarity		: std_logic := '1');
	port(refClk			: in  std_logic;
		  dirtyIn		: in  std_logic;
		  pulsedOut		: out std_logic);
end DebounceUnit; 
 
architecture Behavioral of DebounceUnit is

	constant MIN_IN_WIDTH_CYCLES : positive := mSecMinInWidth * kHzClkFreq;
	subtype TCounter is natural range 0 to MIN_IN_WIDTH_CYCLES;

	signal s_debounceCnt : TCounter := 0;
	signal s_dirtyIn, s_previousIn, s_pulsedOut : std_logic;

begin 
	in_sync_proc : process(refClk) 
	begin
		if (rising_edge(refClk)) then
			if (inPolarity = '1') then
				s_dirtyIn <= dirtyIn;
			else
				s_dirtyIn <= not dirtyIn;
			end if;
			s_previousIn <= s_dirtyIn;
		end if;
	end process;

	count_proc : process(refClk) 
	begin 
		if (rising_edge(refClk)) then
			if ((s_dirtyIn = '0') or
				 (s_debounceCnt > MIN_IN_WIDTH_CYCLES)) then
				s_debounceCnt <= 0;
				s_pulsedOut   <= '0';

			elsif (s_dirtyIn = '1') then
				if (s_previousIn = '0') then
					s_debounceCnt <= MIN_IN_WIDTH_CYCLES;
					s_pulsedOut   <= '0';
				else
					if (s_debounceCnt >= 1) then
						s_debounceCnt <= s_debounceCnt - 1;
					end if;
					if (s_debounceCnt = 1) then
						s_pulsedOut <= '1';
					else
						s_pulsedOut <= '0';
					end if;
			   end if;
			end if;
		end if;
	end process;

	pulsedOut <= s_pulsedOut when (outPolarity = '1') else
					 not s_pulsedOut;
end Behavioral;
