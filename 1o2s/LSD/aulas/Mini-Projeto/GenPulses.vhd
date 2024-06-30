library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity GenPulses is
    generic(K : positive := 25_000_000);
    port(clk, reset : in std_logic;
          pulse : out std_logic);
end GenPulses;

architecture Behav of GenPulses is
    signal s_counter : natural range 0 to K - 1;
begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            pulse <= '0';
            if (reset = '1') then
                s_counter <= 0;
            else
                s_counter <= s_counter + 1;
                if (s_counter = K - 1) then
                    s_counter <= 0;
                    pulse <= '1';
                end if;
            end if;
        end if;
    end process;
end Behav;