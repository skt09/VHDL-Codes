library ieee;
use ieee.std_logic_1164.all;

entity two_to_four_decoder_tb is end;

architecture testbench of two_to_four_decoder_tb is
    signal a : std_logic := '0';
    signal b : std_logic := '0';

    signal y0, y1, y2, y3 : std_logic;

begin
    UUT: entity work.two_to_four_decoder
    port map (
        a => a,
        b => b,
        y0 => y0,
        y1 => y1,
        y2 => y2,
        y3 => y3
    );

    proc1: process
    begin
        wait for 100 ns;
        b <= not b;
        wait for 100 ns;
        b <= not b;
        a <= not a;
        
        if NOW >= 400 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;
end;