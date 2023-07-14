library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter is
    port(clk     : in  std_logic;
          enable : in  std_logic;
          reset  : in  std_logic;
          jogadorA : in  std_logic;
          jogadorB : in  std_logic;
          pontoA : out std_logic_vector(6 downto 0);
          pontoB : out std_logic_vector(6 downto 0));
end Counter;

architecture Behavioral of Counter is

    signal s_jogadorA :unsigned(6 downto 0);
    signal s_jogadorB :unsigned(6 downto 0);

begin
    process(clk)
    begin
        if (rising_edge(clk))then
            if (reset = '1') then
                s_jogadorA <= (others=>'0');
            elsif (jogadorA = '1') then
                s_jogadorA <= s_jogadorA + 1;
            elsif (enable = '0') then
                s_jogadorA <= s_jogadorA;
            end if;
         end if;
       if (rising_edge(clk))then
            if (reset = '1') then
                s_jogadorB <= (others=>'0');
          elsif (jogadorB = '1') then
                s_jogadorB <= s_jogadorB + 1;
             elsif (enable = '0') then
                s_jogadorB <= s_jogadorB;
            end if;
            end if;
    end process;

    pontoA <= std_logic_vector(s_jogadorA);
    pontoB <= std_logic_vector(s_jogadorB);
end Behavioral;