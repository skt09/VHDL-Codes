library ieee;
use ieee.std_logic_1164.all;

entity eight_to_one_mux is
    port (
        S : in std_logic_vector(0 to 2);
        D : in std_logic_vector(0 to 7);
        y : out std_logic
    );
end eight_to_one_mux;

architecture Behavioral of eight_to_one_mux is
begin
    process(S, D)
    begin
        if (S = "000") then
            y <= D(0);
        elsif (S = "001") then
            y <= D(1);
        elsif (S = "010") then
            y <= D(2);
        elsif (S = "011") then
            y <= D(3);
        elsif (S = "100") then
            y <= D(4);
        elsif (S = "101") then
            y <= D(5);
        elsif (S = "110") then
            y <= D(6);
        elsif (S = "111") then
            y <= D(7);
        end if;
    end process;
end Behavioral;