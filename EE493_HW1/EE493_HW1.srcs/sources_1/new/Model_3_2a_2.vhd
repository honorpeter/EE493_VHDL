
library IEEE;
use IEEE.std_logic_1164.all, IEEE.std_logic_arith.all;

entity Model_3_2a_2 is
port( A, B, C, D:  in std_logic;
	  F   :  out std_logic);
end Model_3_2a_2;

architecture SELECTED of Model_3_2a_2 is
	begin
    	with ( ( A= '0' AND C= '1' AND D= '0') OR 
    	( B= '0' AND C= '1') OR ( B= '1' AND C= '1' AND D= '0')) select
    	 F <= '1' when true,
    	      '0' when false,
    	      '0' when others;
    	         
end SELECTED;
