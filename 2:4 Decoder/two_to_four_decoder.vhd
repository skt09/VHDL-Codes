library ieee;
use ieee.std_logic_1164.all;

entity two_to_four_decoder is
    port (
        a : in std_logic;
        b : in std_logic;

        y0, y1, y2, y3 : out std_logic
    );
end;

architecture Behavioral of two_to_four_decoder is
begin
    y0 <= not a and not b;
    y1 <= not a and b;
    y2 <= a and not b;
    y3 <= a and b;
end;