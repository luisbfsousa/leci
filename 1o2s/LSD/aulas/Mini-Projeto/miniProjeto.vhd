library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity miniProjeto is
	port(CLOCK_50 : in std_logic;
	     KEY : in std_logic_vector(1 downto 0);
		  SW : in std_logic_vector(1 downto 0);
		  HEX0 : out std_logic_vector(6 downto 0));
end miniProjeto;

architecture Structural of miniProjeto is
	signal s_clk : std_logic;
	signal s_count : std_logic_vector(3 downto 0);
	
begin
	
	pulseGenerator : entity work.GenPulses(Behav)
		generic map(K => 25000000)
		port map(clk => CLOCK_50,
					reset => SW(1),
					pulse => s_clk);
					
	counter : entity work.CounterDown16(Behavioral)
		port map(enable => SW(0),
					clk => s_clk,
					count => s_count);
					
	
					
					
	
	decoder : entity work.Bin7SegDecoder(Behavioral)
		port map(binInput => s_count,
					enable => SW(0),
					decOut_n => HEX0);
					
					

					
					
					
					
					
end Structural;
