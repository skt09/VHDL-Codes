library ieee;
use ieee.std_logic_1164.all;

entity four_to_two_encoder_tb is end;

architecture testbench of four_to_two_encoder_tb is
    signal y0 : std_logic := '0';
    signal y1 : std_logic := '0';
    signal y2 : std_logic := '0';
    signal y3 : std_logic := '0';

    signal a0, a1: std_logic;

begin
    UUT: entity work.four_to_two_encoder
    port map (
        y0 => y0,
        y1 => y1,
        y2 => y2,
        y3 => y3,
        a0 => a0,
        a1 => a1
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

        if NOW >= 80 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;
end;