library ieee;
use ieee.std_logic_1164.all;

entity one_to_eight_dmux is
    port (
        D : in std_logic;
        S : in std_logic_vector(2 downto 0);
        Y : out std_logic_vector(7 downto 0)
    );
end;

architecture Behavioral of one_to_eight_dmux is
begin
    Y(0) <= D and not S(2) and not S(1) and not S(0);
    Y(1) <= D and not S(2) and not S(1) and S(0);
    Y(2) <= D and not S(2) and S(1) and not S(0);
    Y(3) <= D and not S(2) and S(1) and S(0);
    Y(4) <= D and S(2) and not S(1) and not S(0);
    Y(5) <= D and S(2) and not S(1) and S(0);
    Y(6) <= D and S(2) and S(1) and not S(0);
    Y(7) <= D and S(2) and S(1) and S(0);
end;