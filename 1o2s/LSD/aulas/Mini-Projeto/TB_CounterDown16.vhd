library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity TB_CounterDown16 is
end TB_CounterDown16;
 
architecture Stimulus of TB_CounterDown16 is
    signal s_clk : std_logic;
    signal s_enable : std_logic;
    signal s_count : std_logic_vector(3 downto 0);
begin

    uut: entity work.CounterDown16(Behavioral)
        port map(enable => s_enable,
                    clk => s_clk,
                    count => s_count);
                    
                    
    clock_proc : process
    begin
    
        s_clk <= '0';
        wait for 50 ns;
        
        s_clk <= '1';
        wait for 50 ns;

    end process;
    
    stim_proc : process
    begin
    
        s_enable <= '0';
        wait for 50 ns;
        s_enable <= '1';
        wait for 700 ns;
        
    end process;
end Stimulus;