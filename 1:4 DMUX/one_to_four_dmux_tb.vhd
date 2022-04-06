library ieee;
use ieee.std_logic_1164.all;

entity one_to_four_dmux_tb is end;

architecture testbench of one_to_four_dmux_tb is
    signal D : std_logic := '0';

    signal S : std_logic_vector(1 downto 0) := "00";

    signal Y : std_logic_vector(3 downto 0);

begin
    UUT: entity work.one_to_four_dmux
    port map (
        D => D,
        S => S,
        Y => Y
    );

    proc1: process
    begin
        wait for 50 ns;
        S(0) <= not S(0);

        if NOW >= 200 ns then
            wait;
        end if;
    end process;

    proc2: process
    begin
        wait for 100 ns;
        S(1) <= not S(1);

        if NOW >= 200 ns then
            wait;
        end if;
    end process;

    proc3: process
    begin
        wait for 25 ns;
        D <= not D;

        if NOW >= 200 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;
end;
