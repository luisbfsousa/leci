library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterDown16 is
    port(    clk, enable    :    in std_logic;
            count :    out std_logic_vector(3 downto 0));
end CounterDown16;

architecture Behavioral of CounterDown16 is
    signal s_count    :    unsigned (3 downto 0);
begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            if (enable = '1') then
                s_count <= s_count - 1;
            else
                s_count <= unsigned(s_count);
            end if;
        end if;
    end process;
    count <= std_logic_vector(s_count);
end Behavioral;