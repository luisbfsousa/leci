library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqShiftUnit is
	port(clk : in std_logic;
	     dataIn : in std_logic_vector(7 downto 0);
		  siLeft : in std_logic;
		  siRight : in std_logic;
		  loadEn : in std_logic;
		  rotate : in std_logic;
		  dirLeft : in std_logic;
		  shArith : in std_logic;
		  dataOut : out std_logic_vector(7 downto 0));
end SeqShiftUnit;

architecture Behavioral of SeqShiftUnit is
	signal s_shiftReg : std_logic_vector(7 downto 0);
begin
	process(clk)
	begin
		if (falling_edge(clk)) then
			if (loadEn = '1') then
				s_shiftReg <= dataIn;
			elsif (rotate = '1') then
				if (dirLeft = '1') then
					s_shiftReg <= s_shiftReg(6 downto 0) & s_shiftReg(7);
				else
					s_shiftReg <= s_shiftReg(0) & s_shiftReg(7 downto 1);
				end if;
			elsif (shArith = '1') then
				if(dirLeft='1') then
						s_shiftReg <= s_shiftReg(6 downto 0) & siLeft;
				else
					s_shiftReg <= s_shiftReg(7) & s_shiftReg(7 downto 1);
				end if;
			else -- logic shift
				if(dirLeft='1') then
					s_shiftReg <= s_shiftReg(6 downto 0) & siLeft;
				else
					s_shiftReg <= siRight & s_shiftReg(7 downto 1);
				end if;
			end if;
		end if;
	end process;
	dataOut <= s_shiftReg;
end Behavioral;