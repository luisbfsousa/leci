library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Decoder is

	port(reset : in std_logic;
		  entradaA : in std_logic_vector (6 downto 0);
		  entradaB : in std_logic_vector (6 downto 0);
		  eHEX7 : in std_logic_vector (6 downto 0);
		  eHEX6 : in std_logic_vector (6 downto 0);
		  eHEX5 : in std_logic_vector (6 downto 0);
		  eHEX4 : in std_logic_vector (6 downto 0);
		  HEX4 : out std_logic_vector (6 downto 0);
		  HEX5 : out std_logic_vector (6 downto 0);
		  HEX6 : out std_logic_vector (6 downto 0);
		  HEX7 : out std_logic_vector (6 downto 0));
		  
end Decoder;



architecture Behavioral of Decoder is
begin

	HEX6 <= "1000000" when (reset = '1') else 	 -- 0
					  "1000000" when (entradaA = "0000000") else -- 0
					  "0010010" when (entradaA = "0000001") else -- 5
					  "1000000" when (entradaA = "0000010") else -- 0
					  "1000000" when (entradaA = "0000011") else -- 0
					  "0100001" when (entradaA = "0000100") else -- d
					  "0100001" when (entradaA = "0000110") else -- d
  					  "1111111" when (entradaA = "0000101") else -- empty
					  
					  "1000000" when (eHEX6 = "0000000") else -- 0
					  "1111001" when (eHEX6 = "0000001") else -- 1
					  "0100100" when (eHEX6 = "0000010") else -- 2
					  "0110000" when (eHEX6 = "0000011") else -- 3
					  "0011001" when (eHEX6 = "0000100") else -- 4
					  "0010010" when (eHEX6 = "0000101") else -- 5
					  "0000010" when (eHEX6 = "0000110") else -- 6
					  "1111000" when (eHEX6 = "0000111") else -- 7
					  "0000000" when (eHEX6 = "0001000") else -- 8
					  "0011000" when (eHEX6 = "0001001") else -- 9
					  "0111111"; 									 -- -
					  
					  
					  
	HEX7<= "1000000" when (reset = '1') else 		 -- 0
					  "1000000" when (entradaA = "0000000") else -- 0
					  "1111001" when (entradaA = "0000001") else -- 1
					  "0110000" when (entradaA = "0000010") else -- 3
					  "0011001" when (entradaA = "0000011") else -- 4
					  "1111111" when (entradaA = "0000100") else -- empty
					  "0001000" when (entradaA = "0000110") else -- A
  					  "1111111" when (entradaA = "0000101") else -- empty
					  
					  "1000000" when (eHEX7 = "0000000") else -- 0
					  "1111001" when (eHEX7 = "0000001") else -- 1
					  "0100100" when (eHEX7 = "0000010") else -- 2
					  "0110000" when (eHEX7 = "0000011") else -- 3
					  "0011001" when (eHEX7 = "0000100") else -- 4
					  "0010010" when (eHEX7 = "0000101") else -- 5
					  "0000010" when (eHEX7 = "0000110") else -- 6
					  "1111000" when (eHEX7 = "0000111") else -- 7
					  "0000000" when (eHEX7 = "0001000") else -- 8
					  "0011000" when (eHEX7 = "0001001") else -- 9
					  "0111111";									 -- -
					  
					  
					  
					  
	HEX4 <= 	"1000000" when (reset = '1') else 	  -- 0
						"1000000" when (entradaB = "0000000") else -- 0
						"0010010" when (entradaB = "0000001") else -- 5
						"1000000" when (entradaB = "0000010") else -- 0
						"1000000" when (entradaB = "0000011") else -- 0
						"0100001" when (entradaB = "0000100") else -- d
					   "1111111" when (entradaB = "0000110") else -- empty
  					   "0100001" when (entradaB = "0000101") else -- d						
						
						"1000000" when (eHEX4 = "0000000") else -- 0
					   "1111001" when (eHEX4 = "0000001") else -- 1
					   "0100100" when (eHEX4 = "0000010") else -- 2
					   "0110000" when (eHEX4 = "0000011") else -- 3
					   "0011001" when (eHEX4 = "0000100") else -- 4
					   "0010010" when (eHEX4 = "0000101") else -- 5
					   "0000010" when (eHEX4 = "0000110") else -- 6
					   "1111000" when (eHEX4 = "0000111") else -- 7
					   "0000000" when (eHEX4 = "0001000") else -- 8
					   "0011000" when (eHEX4 = "0001001") else -- 9
					   "0111111";									  -- - 
						
						
						
	
	HEX5 <= "1000000" when (reset = '1') else 	 -- 0
					  "1000000" when (entradaB = "0000000") else -- 0
					  "1111001" when (entradaB = "0000001") else -- 1
					  "0110000" when (entradaB = "0000010") else -- 3
					  "0011001" when (entradaB = "0000011") else -- 4
					  "1111111" when (entradaB = "0000100") else -- empty
					  "1111111" when (entradaB = "0000110") else -- empty
  					  "0001000" when (entradaB = "0000101") else -- A	
		
					  "1000000" when (eHEX5 = "0000000") else -- 0
					  "1111001" when (eHEX5 = "0000001") else -- 1
					  "0100100" when (eHEX5 = "0000010") else -- 2
					  "0110000" when (eHEX5 = "0000011") else -- 3
					  "0011001" when (eHEX5 = "0000100") else -- 4
					  "0010010" when (eHEX5 = "0000101") else -- 5
					  "0000010" when (eHEX5 = "0000110") else -- 6
					  "1111000" when (eHEX5 = "0000111") else -- 7
					  "0000000" when (eHEX5 = "0001000") else -- 8
					  "0011000" when (eHEX5 = "0001001") else -- 9
					  "0111111";				
end Behavioral; 