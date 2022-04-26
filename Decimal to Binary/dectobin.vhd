library ieee;
use ieee.std_logic_1164.all;

entity dectobin is
    port (
        D : in std_logic_vector(9 downto 0);
        B : out std_logic_vector(3 downto 0)
    );
end;

architecture Behavioural of dectobin is
begin
    B(0) <= D(1) or D(3) or D(5) or D(7) or D(9);
    B(1) <= D(2) or D(3) or D(6) or D(7) or D(9);
    B(2) <= D(4) or D(5) or D(6) or D(7);
    B(3) <= D(8) or D(9); 
end;
