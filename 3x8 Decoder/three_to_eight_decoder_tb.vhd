library ieee;
use ieee.std_logic_1164.all;

entity three_to_eight_decoder_tb is end;

architecture testbench of three_to_eight_decoder_tb is
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    signal c : std_logic := '0';

    signal y0, y1, y2, y3, y4, y5, y6, y7 : std_logic;

begin
    UUT: entity work.three_to_eight_decoder
    port map (
        a => a,
        b => b,
        c => c,
        y0 => y0,
        y1 => y1,
        y2 => y2,
        y3 => y3,
        y4 => y4,
        y5 => y5,
        y6 => y6,
        y7 => y7
    );

    proc1: process
    begin
        wait for 50 ns;
        c <= not c;

        if NOW >= 400 ns then
          ---  report "Simulation completed successfully!";
            wait;
        end if;
    end process;

    proc2: process
    begin
        wait for 100 ns;
        b <= not b;

        if NOW >= 400 ns then
         ---   report "Simulation completed successfully!";
            wait;
        end if;
    end process;

    proc3: process
    begin
        wait for 200 ns;
        a <= not a;

        if NOW >= 400 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;

end;