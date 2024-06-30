library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity PulseGeneratorN is
	generic(numberSteps	: positive := 8;
			  out0CompVal	: natural  := 2;
			  out1CompVal	: natural  := 4);
	port(clkIn		: in  std_logic;
		  pulseOut0	: out std_logic;
		  pulseOut1	: out std_logic);
end PulseGeneratorN;

architecture Behavioral of PulseGeneratorN is

	subtype TCounter is natural range 0 to (numberSteps - 1);

	signal s_counter : TCounter;

begin
	count_proc : process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if (s_counter >= (numberSteps - 1)) then
				s_counter <= 0;
			else
				s_counter <= s_counter + 1;
			end if;
		end if;
	end process;

	pulseOut0 <= '1' when ((s_counter rem out0CompVal) = 0) else
					 '0';

	pulseOut1 <= '1' when (s_counter < out1CompVal) else
					 '0';

end Behavioral;
