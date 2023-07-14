library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;



entity Decoder2 is

	port(entradaC : in std_logic_vector (6 downto 0);
		 entradaD : in std_logic_vector (6 downto 0);
		  oHEX7 : out std_logic_vector (6 downto 0);
		  oHEX6 : out std_logic_vector (6 downto 0);
		  oHEX5 : out std_logic_vector (6 downto 0);
		  oHEX4 : out std_logic_vector (6 downto 0));
		  
end Decoder2;



architecture Behavioral of Decoder2 is

	signal dC, uC, dD, uD : unsigned (6 downto 0); --unidades
	
begin
	process (entradaC,entradaD, dC, uC, dD, uD)
	begin
        if (unsigned(entradaD) > 9) then
			dD <= (unsigned(entradaD)/(10));
			uD <= (unsigned(entradaD)rem(10));
		else
			dD <= "0000000";
			uD <= unsigned(entradaD);
		end if;

		if (unsigned(entradaC) > 9) then
			dC <= (unsigned(entradaC)/(10));
			uC <= (unsigned(entradaC) rem(10));
		else
			dC <= "0000000";
			uC <= unsigned(entradaC);
		end if;

		oHEX7 <= std_logic_vector(dC);
		oHEX6 <= std_logic_vector(uC);
		oHEX5 <= std_logic_vector(dD);
		oHEX4 <= std_logic_vector(uD);
	end process;
end Behavioral;