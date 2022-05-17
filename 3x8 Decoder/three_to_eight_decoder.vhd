library ieee;
use ieee.std_logic_1164.all;

entity three_to_eight_decoder is
    port (
        a : in std_logic;
        b : in std_logic;
        c : in std_logic;
        
        y0, y1, y2, y3, y4, y5, y6, y7 : out std_logic
    );
end;

architecture Behavioral of three_to_eight_decoder is
begin
    y0 <= not a and not b and not c;
    y1 <= not a and not b and c;
    y2 <= not a and b and not c;
    y3 <= not a and b and c;
    y4 <= a and not b and not c;
    y5 <= a and not b and c;
    y6 <= a and b and not c;
    y7 <= a and b and c;
end;