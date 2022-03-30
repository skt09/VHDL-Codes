library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
    port (
        a, b, cin: in std_logic;
        sum, cout: out std_logic
    );
end;

architecture Behavioral of full_adder is
begin
    sum <= a xor b xor cin;
    cout <= (a and b) or (cin and (a xor b));
end Behavioral;
