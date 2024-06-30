library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(reset : in std_logic;
	     clk : in std_logic;
		  xIn : in std_logic;
		  zOut : out std_logic);
end SeqDetFSM;

architecture MealyArch of SeqDetFSM is
	type state is (A, B, C, D);
	signal PS, NS : state;
begin
	sync_proc: process(clk)
	begin
	if (rising_edge(clk)) then
		if (reset = '1') then
			PS <= A;
		else
			PS <= NS;
		end if;
	end if;
end process;

comb_proc : process(PS, xIn)
begin
	zOut <= '0'; 
	case PS is
		when A =>
			if (xIn = '1') then
				NS <= B;
			else
				NS <= A;
			end if;
		when B =>
			if (xIn = '1') then
				NS <= B;
			else
				NS <= C;
			end if;
		when C =>
			if (xIn = '1') then
				NS <= B;
			else
				NS <= D;
			end if;
		when D =>
			if (xIn = '1') then
				NS <= B;
				zOut <= '1';
			else
				NS <= A;
			end if;
		when others =>
			NS <= A;
		end case;
	end process;
end MealyArch;