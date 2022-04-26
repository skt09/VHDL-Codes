library ieee;
use ieee.std_logic_1164.all;

entity bintodec is
    port (
        b : in std_logic_vector(3 downto 0);
        D : out std_logic_vector(9 downto 0)
    );
end;

architecture Behavioral of bintodec is
begin
    D(0) <= not b(3) and not b(2) and not b(1) and not b(0);
    D(1) <= not b(3) and not b(2) and not b(1) and b(0);
    D(2) <= not b(3) and not b(2) and b(1) and not b(0);
    D(3) <= not b(3) and not b(2) and b(1) and b(0);
    D(4) <= not b(3) and b(2) and not b(1) and not b(0);
    D(5) <= not b(3) and b(2) and not b(1) and b(0);
    D(6) <= not b(3) and b(2) and b(1) and not b(0);
    D(7) <= not b(3) and b(2) and b(1) and b(0);
    D(8) <= b(3) and not b(2) and not b(1) and not b(0);
    D(9) <= b(3) and not b(2) and not b(1) and b(0);
end;