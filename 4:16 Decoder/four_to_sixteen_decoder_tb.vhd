library ieee;
use ieee.std_logic_1164.all;

entity four_to_sixteen_decoder_tb is end;

architecture testbench of four_to_sixteen_decoder_tb is
    signal a : std_logic := '0';
    signal b : std_logic := '0';
    signal c : std_logic := '0';
    signal d : std_logic := '0';

    signal Y : std_logic_vector(15 downto 0);

begin
    UUT: entity work.four_to_sixteen_decoder
    Port map (
        a => a,
        b => b,
        c => c,
        d => d,

        Y => Y
    );

    proc1: process
    begin
        wait for 10 ns;
        d <= not d;

        if NOW >= 160 ns then
        ---    report "Simulation completed successfully!";
            wait;
        end if;
    end process;

    proc2: process
    begin
        wait for 20 ns;
        c <= not c;

        if NOW >= 160 ns then
        ---    report "Simulation completed successfully!";
            wait;
        end if;
    end process;

    proc3: process
    begin
        wait for 40 ns;
        b <= not b;

        if NOW >= 160 ns then
        ---    report "Simulation completed successfully!";
            wait;
        end if;
    end process;

    proc4: process
    begin
        wait for 80 ns;
        a <= not a;
        
        if NOW >= 160 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;

end;
