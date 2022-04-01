library ieee;
use ieee.std_logic_1164.all;

entity four_to_two_encoder is
    port (
        y0, y1, y2, y3 : in std_logic;
        
        a0, a1 : out std_logic
    );
end;

architecture Behavioral of four_to_two_encoder is
begin
    a0 <= y2 or y0;
    a1 <= y1 or y0;
end; 