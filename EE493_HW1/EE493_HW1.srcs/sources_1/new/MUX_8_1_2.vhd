
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_8_1_2 is
  Port (
        x1, x2, x3, x4, x5, x6, x7, x0  : in std_logic;
         SEL                            : in std_logic_vector(2 downto 0);
         Y                              : out std_logic);
end Mux_8_1_2;
architecture SELECTED of Mux_8_1_2 is
begin
   with SEL select
   Y <= x1 when "111",
        x2 when "110",
        x3 when "101",
        x4 when "100",
        x5 when "011",
        x6 when "010",
        x7 when "001",
        x0 when "000",
        '0' when others;
end SELECTED;
