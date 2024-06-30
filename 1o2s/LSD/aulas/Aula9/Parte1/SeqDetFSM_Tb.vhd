library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

-- Entidade sem portos
entity SeqDetFSM_Tb is
end SeqDetFSM_Tb;

architecture Stimulus of SeqDetFSM is
	-- Sinais para ligar às entradas da uut
	signal s_reset, s_clk : std_logic;
	signal s_xIn : std_logic;
	-- Sinal para ligar às saídas da uut
	signal s_zOut : std_logic;
begin
	-- Instanciação da Unit Under Test (UUT)
	uut : entity work.SeqDetFSM(MealyArch)
		port map(reset    => s_reset,
					clk      => s_clk,
					xIn   => s_xIn,
					zOut => s_zOut);
	-- Process clock
	clock_proc : process
	begin
		s_clk <= '0';
		wait for 30 ns;
		s_clk <= '1';
		wait for 30 ns;
	end process;
	--Process stim
	stim_proc : process
	begin
		s_xIn <= '1';
		wait for 40 ns;
		s_xIn <= '0';
		wait for 40 ns;
		s_xIn <= '1';
		wait for 40 ns;
		s_xIn <= '0';
		wait for 40 ns;
		s_xIn <= '0';
		wait for 40 ns;
		s_xIn <= '1';
		wait for 40 ns;
		s_xIn <= '0';
		wait for 40 ns;
		s_xIn <= '1';
		wait for 40 ns;
		s_xIn <= '0';
		wait for 40 ns;
		s_xIn <= '1';
		wait for 40 ns;
		s_xIn <= '0';
		wait for 40 ns;
		s_xIn <= '0';
		wait for 40 ns;
		s_xIn <= '1';
		wait for 40 ns;
		s_xIn <= '0';
		wait for 40 ns;
	end process;
end Stimulus;