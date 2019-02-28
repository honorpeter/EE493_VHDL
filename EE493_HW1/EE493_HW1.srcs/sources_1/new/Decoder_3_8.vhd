
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_3_8 is
   port( 
         CLK: in std_logic;
         X:    in std_logic_vector(2 downto 0);
         Y:   out std_logic_vector(7 downto 0));
end Decoder_3_8;

architecture CONDITIONAL of Decoder_3_8 is

begin
process(CLK)
begin
    if( clk' event and CLK= '1') then
    Y <= "00000001" when (X= "000") else
         "00000010" when (X= "001") else
         "00000100" when (X= "010") else
         "00001000" when (X= "011") else
         "00010000" when (X= "100") else
         "00100000" when (X= "101") else
         "01000000" when (X= "110") else
         "10000000" when (X= "111") else
         "00000000";
   end if;      
end process;
end CONDITIONAL;
