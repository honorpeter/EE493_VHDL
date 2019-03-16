
library IEEE

use IEEE.logic_1164.all

entity Debounce is
	port( clk, btn: in std_logic;
		  dbnc:     out std_logic);
end Debounce;

architecture delay_switch of Debounce is:
variable counter, CLK_FREQ: integer;
prev_btn := 1;
counter := 0;
CLK_FREQ := 125000000;
DEB_TIME := 0.02;
DEC_COUNT := CLK_FREQ * DEB_TIME;
begin
	process (clk):
	begin
		if(counter = DEC_COUNT) then
			counter = 0;
			dbnc <= btn;
		else

			if(clk' event and clk = '1') then
				if(btn = '0') then
					counter = counter + 1;
					dbnc <= 
				else
					counter = 0;
		

end delay_switch;