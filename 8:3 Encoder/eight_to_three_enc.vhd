library ieee;
use ieee.std_logic_1164.all;

entity eight_to_three_enc is
    port (
        y0, y1, y2, y3, y4, y5, y6, y7 : in std_logic;
        
        a0, a1, a2 : out std_logic
    );
end;

architecture Behavioral of eight_to_three_enc is
begin
    a0 <= y1 or y3 or y5 or y7;
    a1 <= y2 or y3 or y6 or y7;
    a2 <= y4 or y5 or y6 or y7;
end; 