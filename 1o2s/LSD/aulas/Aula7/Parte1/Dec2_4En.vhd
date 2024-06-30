library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Dec2_4En is
	port(enable  : in std_logic;
		  inputs  : in std_logic_vector(1 downto 0);
		  outputs : out std_logic_vector(3 downto 0));
end Dec2_4En;

architecture Behavioral of Dec2_4En is
begin
	process(enable, inputs)
	begin
		if (enable = '0') then
		outputs <= "0000";
		else
			if (inputs = "00") then
				outputs <= "0001";
			elsif (inputs = "01") then
				outputs <= "0010";
			elsif (inputs = "10") then
				outputs <= "0100";
			else
				outputs <= "1000";
			end if;
		end if;
	end process;
end Behavioral;