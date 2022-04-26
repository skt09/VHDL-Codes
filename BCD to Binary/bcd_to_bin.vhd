
library ieee;
use ieee.std_logic_1164.all;

entity bcd_to_bin is
    Port ( 
        b0 : in  std_logic;
        b1 : in  std_logic;
        b2 : in  std_logic;
        b3 : in  std_logic;
        b4 : in  std_logic;
        a : out  std_logic;
        b : out  std_logic;
        c : out  std_logic;
        d : out  std_logic
    );
end bcd_to_bin;

architecture Behavioral of bcd_to_bin is

begin
    process(b0,b1,b2,b3,b4)
    begin
        if b4 = '0' then
            d <= b0;
            c <= b1;
            b <= b2;
            a <= b3;
        elsif b4 = '1' then
            d <= b0;
            c <= not b1;
            b <= b2 or b1;
            a <= b4;
        end if;
    end process;

end Behavioral;

