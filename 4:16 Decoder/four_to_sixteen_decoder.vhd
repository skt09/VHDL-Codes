library ieee;
use ieee.std_logic_1164.all;

entity four_to_sixteen_decoder is
    port (
        a, b, c, d : in std_logic;

        Y : out std_logic_vector(15 downto 0)
    );
end;

architecture Behavioral of four_to_sixteen_decoder is
begin
    Y(0) <= not a and not b and not c and not d;
    Y(1) <= not a and not b and not c and d;
    Y(2) <= not a and not b and c and not d;
    Y(3) <= not a and not b and c and d;
    Y(4) <= not a and b and not c and not d;
    Y(5) <= not a and b and not c and d;
    Y(6) <= not a and b and c and not d;
    Y(7) <= not a and b and c and d;
    Y(8) <= a and not b and not c and not d;
    Y(9) <= a and not b and not c and d;
    Y(10) <= a and not b and c and not d;
    Y(11) <= a and not b and c and d;
    Y(12) <= a and b and not c and not d;
    Y(13) <= a and b and not c and d;
    Y(14) <= a and b and c and not d;
    Y(15) <= a and b and c and d;
end;