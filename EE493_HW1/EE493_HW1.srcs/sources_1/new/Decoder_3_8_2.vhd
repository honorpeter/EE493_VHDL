
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_3_8_2 is
   port( 
         CLK: in std_logic;
         X:    in std_logic_vector(2 downto 0);
         Y:   out std_logic_vector(7 downto 0));
end Decoder_3_8_2;

architecture SELECTED of Decoder_3_8_2 is

begin
process(CLK)
begin
    if( clk' event and CLK= '1') then
    with X select
    Y <= "00000001" when "000",
         "00000010" when "001",
         "00000100" when "010",
         "00001000" when "011",
         "00010000" when "100",
         "00100000" when "101",
         "01000000" when "110",
         "10000000" when "111",
         "00000000" when others;
   end if;      
end process;
end SELECTED;
