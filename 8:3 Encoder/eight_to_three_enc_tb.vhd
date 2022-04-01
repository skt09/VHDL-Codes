library ieee;
use ieee.std_logic_1164.all;

entity eight_to_three_enc_tb is end;

architecture testbench of eight_to_three_enc_tb is
    signal y0 : std_logic := '0';
    signal y1 : std_logic := '0';
    signal y2 : std_logic := '0';
    signal y3 : std_logic := '0';
    signal y4 : std_logic := '0';
    signal y5 : std_logic := '0';
    signal y6 : std_logic := '0';
    signal y7 : std_logic := '0';


    signal a0, a1, a2 : std_logic;

begin
    UUT: entity work.eight_to_three_enc
    port map (
        y0 => y0,
        y1 => y1,
        y2 => y2,
        y3 => y3,
        y4 => y4,
        y5 => y5,
        y6 => y6,
        y7 => y7,
        a0 => a0,
        a1 => a1,
        a2 => a2
    );

    proc1: process
    begin
        y0 <= '1';
        wait for 20 ns;
        y0 <= '0';
        y1 <= '1';
        wait for 20 ns;
        y1 <= '0';
        y2 <= '1';
        wait for 20 ns;
        y2 <= '0';
        y3 <= '1';
        wait for 20 ns;
        y3 <= '0';
        y4 <= '1';
        wait for 20 ns;
        y4 <= '0';
        y5 <= '1';
        wait for 20 ns;
        y5 <= '0';
        y6 <= '1';
        wait for 20 ns;
        y6 <= '0';
        y7 <= '1';
        wait for 20 ns;

        if NOW >= 160 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;
end;