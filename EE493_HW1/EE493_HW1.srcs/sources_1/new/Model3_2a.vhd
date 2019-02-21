
library IEEE;
use IEEE.std_logic_1164.all;

entity Model_3_2a is
port( A, B, C, D:  in std_logic;
	  F   :  out std_logic);
end Model_3_2a;

architecture CONDITIONAL of Model_3_2a is
	begin
    	F <= '1' when ( A= '0' AND C= '1' AND D= '0') else
    	     '1' when ( B= '0' AND C= '1') else
    	     '1' when ( B= '1' AND C= '1' AND D= '0') else
    	         '0';
end CONDITIONAL;
