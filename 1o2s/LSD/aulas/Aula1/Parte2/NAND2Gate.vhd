library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NAND2Gate is
	port (inPort0 : in std_logic;
			inPort1 : in std_logic;
			outPort : out std_logic);
end NAND2Gate;

architecture Structural of NAND2Gate is

	signal s_andOut : std_logic;
	
begin
	and_gate : entity work.AND2Gate(Behavioral)
					port map (inPort0 => inPort0,
									inPort1 => inPort1,
									outPort => S_andOut);
									
	not_gate : entity work.NOTGate(Behavioral)
					port map(inPort => s_andOut,
								outPort => outPort);
end Structural;