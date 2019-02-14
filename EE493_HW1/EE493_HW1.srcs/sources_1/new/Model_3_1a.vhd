
library IEEE;
use IEEE.std_logic_1164.all;

entity Model_31a is
port( A, B:  in std_logic;
	  F   :  out std_logic);
end Model_31a;

architecture CONCURRENT of Model_31a is
	begin
    	F <= ( (NOT A) AND B) OR A OR ( A AND NOT(B));
end CONCURRENT;
