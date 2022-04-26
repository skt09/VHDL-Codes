library ieee;
use ieee.std_logic_1164.all;

entity bcd_to_bin_tb is end;

architecture testbench of bcd_to_bin_tb is
    signal b4 : std_logic := '0';
    signal b3 : std_logic := '0';
    signal b2 : std_logic := '0';
    signal b1 : std_logic := '0';
    signal b0 : std_logic := '0';

    signal a, b, c, d : std_logic;

begin
    UUT: entity work.bcd_to_bin
    port map (
        b4 => b4,
        b3 => b3,
        b2 => b2,
        b1 => b1,
        b0 => b0,
        a => a,
        b => b,
        c => c,
        d => d
    );

    proc: process
    begin
        wait for 10 ns;
        b4 <= '0'; b3 <= '0'; b2 <= '0'; b1 <= '0'; b0 <= '1';
        wait for 10 ns;
        b4 <= '0'; b3 <= '0'; b2 <= '0'; b1 <= '1'; b0 <= '0'; 
        wait for 10 ns;
        b4 <= '0'; b3 <= '0'; b2 <= '0'; b1 <= '1'; b0 <= '1'; 
        wait for 10 ns;
        b4 <= '0'; b3 <= '0'; b2 <= '1'; b1 <= '0'; b0 <= '0'; 
        wait for 10 ns;
        b4 <= '0'; b3 <= '0'; b2 <= '1'; b1 <= '0'; b0 <= '1'; 
        wait for 10 ns;
        b4 <= '0'; b3 <= '0'; b2 <= '1'; b1 <= '1'; b0 <= '0'; 
        wait for 10 ns;
        b4 <= '0'; b3 <= '0'; b2 <= '1'; b1 <= '1'; b0 <= '1'; 
        wait for 10 ns;
        b4 <= '0'; b3 <= '1'; b2 <= '0'; b1 <= '0'; b0 <= '0'; 
        wait for 10 ns;
        b4 <= '0'; b3 <= '1'; b2 <= '0'; b1 <= '0'; b0 <= '1'; 
        wait for 10 ns;
        b4 <= '1'; b3 <= '0'; b2 <= '0'; b1 <= '0'; b0 <= '0'; 
        wait for 10 ns;
        b4 <= '1'; b3 <= '0'; b2 <= '0'; b1 <= '0'; b0 <= '1'; 
        wait for 10 ns;
        b4 <= '1'; b3 <= '0'; b2 <= '0'; b1 <= '1'; b0 <= '0'; 
        wait for 10 ns;
        b4 <= '1'; b3 <= '0'; b2 <= '0'; b1 <= '1'; b0 <= '1'; 
        wait for 10 ns;
        b4 <= '1'; b3 <= '0'; b2 <= '1'; b1 <= '0'; b0 <= '0'; 
        wait for 10 ns;
        b4 <= '1'; b3 <= '0'; b2 <= '1'; b1 <= '0'; b0 <= '1'; 

        if NOW >= 160 ns then
            report "Simulation completed successfully!";
            wait;
        end if;

    end process;

    end;
