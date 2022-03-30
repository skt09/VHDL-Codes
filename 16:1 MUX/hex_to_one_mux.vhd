library ieee;
use ieee.std_logic_1164.all;

entity hex_to_one_mux is
    port (
        S : in std_logic_vector(0 to 3);
        D : in std_logic_vector(0 to 15);
        y : out std_logic
    );
end hex_to_one_mux;

architecture Behavioral of hex_to_one_mux is
begin
    process(S, D)
    begin
        if (S = "0000") then
            y <= D(0);
        elsif (S = "0001") then
            y <= D(1);
        elsif (S = "0010") then
            y <= D(2);
        elsif (S = "0011") then
            y <= D(3);
        elsif (S = "0100") then
            y <= D(4);
        elsif (S = "0101") then
            y <= D(5);
        elsif (S = "0110") then
            y <= D(6);
        elsif (S = "0111") then
            y <= D(7);
        elsif (S = "1000") then
            y <= D(8);
        elsif (S = "1001") then
            y <= D(9);
        elsif (S = "1010") then
            y <= D(10);
        elsif (S = "1011") then
            y <= D(11);
        elsif (S = "1100") then
            y <= D(12);
        elsif (S = "1101") then
            y <= D(13);
        elsif (S = "1110") then
            y <= D(14);
        elsif (S = "1111") then
            y <= D(15);
        end if;
    end process;
end Behavioral;