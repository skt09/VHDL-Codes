library ieee;
use ieee.std_logic_1164.all;

entity four_to_one_mux is
    port (
        s0 : in std_logic;
        s1 : in std_logic;
        D : in std_logic_vector(0 to 3);
        y : out std_logic
    );
end four_to_one_mux;

architecture Behavioral of four_to_one_mux is
begin
    process(s0, s1, D)
    begin
        if (s0 = '0' and s1 = '0') then
            y <= D(0);
        elsif (s0 = '1' and s1 = '0') then
            y <= D(1);
        elsif (s0 = '0' and s1 = '1') then
            y <= D(2);
        elsif (s0 = '1' and s1 = '1') then
            y <= D(3);
        end if;
    end process;
end Behavioral;