library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is end;

architecture testbench of full_adder_tb is
    signal a: std_logic := '0';
    signal b: std_logic := '0';
    signal cin: std_logic := '0';

    signal sum, cout : std_logic;
begin
    UUT: entity work.full_adder
    port map (
        a => a,
        b => b,
        cin => cin,
        sum => sum,
        cout => cout
    );

    proc1: process
    begin
        wait for 20 ns;
        cin <= not cin;
        wait for 20 ns;
        cin <= not cin;
        b <= not b;
        wait for 20 ns;
        cin <= not cin;
        wait for 20 ns;
        cin <= not cin;
        b <= not b;
        a <= not a;

        if NOW >= 80 ns then
            report "Simulation completed successfully";
            wait;
        end if;
    end process;
end testbench;