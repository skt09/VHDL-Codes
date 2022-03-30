library ieee;
use ieee.std_logic_1164.all;

entity eight_to_one_mux_tb is end;

architecture testbench of eight_to_one_mux_tb is

    signal S : std_logic_vector(0 to 2);
    signal D : std_logic_vector(0 to 7);
    
    signal y : std_logic;

begin
    UUT: entity work.eight_to_one_mux
    port map (
        S => S,
        D => D,
        y => y
    );

    proc1: process
    begin
        S <= "000";
        wait for 80 ns;
        S <= "001";
        wait for 80 ns;
        S <= "010";
        wait for 80 ns;
        S <= "011";
        wait for 80 ns;
        S <= "100";
        wait for 80 ns;
        S <= "101";
        wait for 80 ns;
        S <= "110";
        wait for 80 ns;
        S <= "111";
        wait for 80 ns;

        if NOW >= 640 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;

    proc2: process
    begin
        D <= "10000000";
        wait for 10 ns;
        D <= "01000000";
        wait for 10 ns;
        D <= "00100000";
        wait for 10 ns;
        D <= "00010000";
        wait for 10 ns;
        D <= "00001000";
        wait for 10 ns;
        D <= "00000100";
        wait for 10 ns;
        D <= "00000010";
        wait for 10 ns;
        D <= "00000001";
        wait for 10 ns;

        if NOW >= 640 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;
end testbench ;