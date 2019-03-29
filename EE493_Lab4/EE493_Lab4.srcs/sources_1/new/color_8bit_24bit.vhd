

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity color_8bit_24bit is
    port(color_8 : in std_logic_vector(7 downto 0);
         color_24: out std_logic_vector(23 downto 0));
end color_8bit_24bit;

architecture combinational of color_8bit_24bit is
--Little Endian System
--BGR (2, 3, 3) to (8, 8, 8)
begin

color_24 <= (6 => color_8(0), 7 => color_8(1), --BLUE BITS
            13 => color_8(2), 14 => color_8(3), 15 => color_8(4), --GREEN BITS
            21 => color_8(5), 22 => color_8(6), 23 => color_8(7), others => '0');


end combinational;
