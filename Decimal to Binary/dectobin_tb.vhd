library ieee;
use ieee.std_logic_1164.all;

entity dectobin_tb is end;

architecture testbench of dectobin_tb is
    signal D : std_logic_vector(9 downto 0) := "0000000001";
    signal B : std_logic_vector(3 downto 0);
begin
    UUT: entity work.dectobin
    port map (
        D => D,
        B => B
    );

    proc: process
    begin
        if NOW >= 100 ns then
            report "Simulation completed successfully!";
            wait;
        end if;

        wait for 10 ns;
        D(0) <= '0';
        D(1) <= '1';
        wait for 10 ns;
        D(1) <= '0';
        D(2) <= '1';
        wait for 10 ns;
        D(2) <= '0';
        D(3) <= '1';
        wait for 10 ns;
        D(3) <= '0';
        D(4) <= '1';
        wait for 10 ns;
        D(4) <= '0';
        D(5) <= '1';
        wait for 10 ns;
        D(5) <= '0';
        D(6) <= '1';
        wait for 10 ns;
        D(6) <= '0';
        D(7) <= '1';
        wait for 10 ns;
        D(7) <= '0';
        D(8) <= '1';
        wait for 10 ns;
        D(8) <= '0';
        D(9) <= '1';

    end process;
end;

