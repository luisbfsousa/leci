library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
port(KEY : in std_logic_vector(1 downto 0);
		SW : in std_logic_vector(3 downto 0);
		LEDR : out std_logic_vector(0 downto 0));
end Mux4_1;

architecture Behavioral of Mux4_1 is
begin
	process (KEY, SW) is
	begin
		if (KEY = "00") then
			LEDR(0) <= SW(0);
		elsif (KEY = "01") then
			LEDR(0) <= SW(1);
		elsif (KEY = "10") then
			LEDR(0) <= SW(2);
		else
			LEDR(0) <= SW(3);
		end if;
	end process;
end Behavioral;