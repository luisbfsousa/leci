library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ALU16 is
	port(op  : in std_logic_vector(2 downto 0);
		  op0 : in std_logic_vector(15 downto 0);
		  op1 : in std_logic_vector(15 downto 0);
		  res : out std_logic_vector(15 downto 0);
		  mHi : out std_logic_vector(15 downto 0));
end ALU16;

architecture Behavioral of ALU16 is
	signal s_mRes : std_logic_vector(31 downto 0);
begin
	s_mRes <= std_logic_vector(unsigned(op0) * unsigned(op1));
	process(op, op0, op1, s_mRes)
	begin
		case op is
			when "000" =>
				res <= std_logic_vector(unsigned(op0) + unsigned(op1));
			when "001" =>
				res <= std_logic_vector(unsigned(op0) - unsigned(op1));
			when "010" =>
				res <= s_mRes(15 downto 0);
			when "011" =>
				res <= std_logic_vector(unsigned(op0) / unsigned(op1));
			when "100" =>
				res <= std_logic_vector(unsigned(op0) rem unsigned(op1));
			when "101" =>
				res <= op0 and op1;
			when "110" =>
				res <= op0 or op1;
			when others =>
				res <= op0 xor op1;
			end case;
	end process;
	mHi <= s_mRes(31 downto 16) when (op = "010") else (others => '0');
end Behavioral;