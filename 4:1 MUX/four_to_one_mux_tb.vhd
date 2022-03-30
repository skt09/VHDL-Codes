library ieee;
use ieee.std_logic_1164.all;

entity four_to_one_mux_tb is end;

architecture testbench of four_to_one_mux_tb is

    signal s0 : std_logic := '0';
    signal s1 : std_logic := '0';
    signal D : std_logic_vector(0 to 3);
    
    signal y : std_logic;

begin
    UUT: entity work.four_to_one_mux
    port map (
        s0 => s0,
        s1 => s1,
        D => D,
        y => y
    );

    proc1: process
    begin
        wait for 100 ns;
        s0 <= not s0;
        wait for 100 ns;
        s0 <= not s0;
        s1 <= not s1;

        if NOW >= 400 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;

    proc2: process
    begin
        D <= "1000";
        wait for 25 ns;
        D <= "0100";
        wait for 25 ns;
        D <= "0010";
        wait for 25 ns;
        D <= "0001";
        wait for 25 ns;

        if NOW >= 400 ns then
            report "Simulation completed successfully!";
            wait;
        end if;
    end process;
end testbench ;