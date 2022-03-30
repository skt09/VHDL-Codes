library ieee;
use ieee.std_logic_1164.all;

entity full_subtractor_tb is end;

architecture testbench of full_subtractor_tb is
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    signal bin : std_logic := '0';

    signal diff, bout : std_logic;

begin
    UUT: entity work.full_subtractor port map (
        a => a,
        b => b,
        bin => bin,
        diff => diff,
        bout => bout
    );

    proc1: process
    begin
        wait for 20 ns;
        bin <= not bin;
        wait for 20 ns;
        bin <= not bin;
        b <= not b;
        wait for 20 ns;
        bin <= not bin;
        wait for 20 ns;
        bin <= not bin;
        b <= not b;
        a <= not a;

        if NOW >= 80 ns then
            report "Simulation completed successfully";
            wait;
        end if;
    end process;
end;