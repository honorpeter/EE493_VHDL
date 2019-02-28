
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Mux_8_1 is
  Port (
        x1, x2, x3, x4, x5, x6, x7, x0  : in std_logic;
         SEL                            : in std_logic_vector(2 downto 0);
         Y                              : out std_logic);
end Mux_8_1;
architecture CONDITIONAL of Mux_8_1 is
begin
   Y <= x1 when (SEL= "111") else
        x2 when SEL= "110" else
        x3 when SEL= "101" else
        x4 when SEL= "100" else
        x5 when SEL= "011" else
        x6 when SEL= "010" else
        x7 when SEL= "001" else
        x0 when SEL= "000" else
        '0';

end CONDITIONAL;
