library ieee;
use ieee.std_logic_1164.all;

entity bintodec_tb is end;

architecture testbench of bintodec_tb is
    signal b : std_logic_vector(3 downto 0) := "0000";

    signal D : std_logic_vector(9 downto 0);

begin
    UUT: entity work.bintodec
    port map (
        b => b,
        D => D
    );

    proc1: process
    begin
        wait for 20 ns;
        b(0) <= not b(0);

        if NOW >= 200 ns then
            wait;
        end if;
    end process;

    proc2: process
    begin
        wait for 40 ns;
        b(1) <= not b(1);

        if NOW >= 200 ns then
            wait;
        end if;
    end process;

    proc3: process
    begin
        wait for 80 ns;
        b(2) <= not b(2);

        if NOW >= 200 ns then
            wait;
        end if;
    end process;

    proc4: process
    begin
        wait for 160 ns;
        b(3) <= not b(3);

        if NOW >= 200 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;

end;