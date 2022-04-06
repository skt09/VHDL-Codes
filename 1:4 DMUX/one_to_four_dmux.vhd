library ieee;
use ieee.std_logic_1164.all;

entity one_to_four_dmux is
    port (
        D : in std_logic;
        S : in std_logic_vector(1 downto 0);
        Y : out std_logic_vector(3 downto 0)
    );
end;

architecture Behavioral of one_to_four_dmux is
begin
    Y(0) <= D and not S(1) and not S(0);
    Y(1) <= D and not S(1) and S(0);
    Y(2) <= D and S(1) and not S(0);
    Y(3) <= D and S(1) and S(0);
end;