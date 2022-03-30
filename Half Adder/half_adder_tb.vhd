library ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is end;

architecture testbench of half_adder_tb is
    signal a, b, sum, carry : std_logic;
begin
    UUT: entity work.half_adder port map(a => a, b => b, sum => sum, carry => carry);

    a <= '0', '1' after 20 ns, '0' after 40 ns, '1' after 60 ns, '1' after 80 ns;
    b <= '0', '1' after 40 ns, '1' after 80 ns;

end testbench;