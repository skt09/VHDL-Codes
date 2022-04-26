library ieee;
use ieee.std_logic_1164.all;

entity bcd_to_bin is
    port (
        p : in std_logic_vector(4 downto 0);

        y : out std_logic_vector(3 downto 0);
    );
end;

architecture Behavioral of bcd_to_bin is

    