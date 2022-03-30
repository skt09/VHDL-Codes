library ieee;
use ieee.std_logic_1164.all;

entity hex_to_one_mux_tb is end;

architecture testbench of hex_to_one_mux_tb is

    signal S : std_logic_vector(0 to 3);
    signal D : std_logic_vector(0 to 15);
    
    signal y : std_logic;

begin
    UUT: entity work.hex_to_one_mux
    port map (
        S => S,
        D => D,
        y => y
    );

    proc1: process
    begin
        S <= "0000";
        wait for 160 fs;
        S <= "0001";
        wait for 160 fs;
        S <= "0010";
        wait for 160 fs;
        S <= "0011";
        wait for 160 fs;
        S <= "0100";
        wait for 160 fs;
        S <= "0101";
        wait for 160 fs;
        S <= "0110";
        wait for 160 fs;
        S <= "0111";
        wait for 160 fs;
        S <= "1000";
        wait for 160 fs;
        S <= "1001";
        wait for 160 fs;
        S <= "1010";
        wait for 160 fs;
        S <= "1011";
        wait for 160 fs;
        S <= "1100";
        wait for 160 fs;
        S <= "1101";
        wait for 160 fs;
        S <= "1110";
        wait for 160 fs;
        S <= "1111";

        if NOW >= 2550 fs then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;

    proc2: process
    begin
        D <= "1000000000000000";
        wait for 10 fs;
        D <= "0100000000000000";
        wait for 10 fs;
        D <= "0010000000000000";
        wait for 10 fs;
        D <= "0001000000000000";
        wait for 10 fs;
        D <= "0000100000000000";
        wait for 10 fs;
        D <= "0000010000000000";
        wait for 10 fs;
        D <= "0000001000000000";
        wait for 10 fs;
        D <= "0000000100000000";
        wait for 10 fs;
        D <= "0000000010000000";
        wait for 10 fs;
        D <= "0000000001000000";
        wait for 10 fs;
        D <= "0000000000100000";
        wait for 10 fs;
        D <= "0000000000010000";
        wait for 10 fs;
        D <= "0000000000001000";
        wait for 10 fs;
        D <= "0000000000000100";
        wait for 10 fs;
        D <= "0000000000000010";
        wait for 10 fs;
        D <= "0000000000000001";
        wait for 10 fs;

        if NOW >= 2560 fs then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;
end testbench ;