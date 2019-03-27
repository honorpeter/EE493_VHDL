library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.numeric_std.all;

entity debounce is
	port( clk, btn: in std_logic;
      dbnc:     out std_logic);
      --cnt:      out std_logic_vector(26 downto 0):= (others => '0'));
end debounce;

architecture delay_switch of debounce is
signal prev_btn : std_logic := '0';  -- Not the way should be here
signal prev_bnc : std_logic := '0';  -- Not the way should be here

begin

	process (clk)
	variable  DEC_COUNT : std_logic_vector(26 downto 0) := std_logic_vector(To_unsigned(2500000, 27)); 
	variable counter : std_logic_vector(26 downto 0) := (others => '0');
	--variable counter : integer := 0;
	begin
		--cnt <= (others => '0');

			if(clk' event and clk = '1') then
			
			    if(To_integer(unsigned(counter)) > To_integer(unsigned(DEC_COUNT))) then
                        counter := (others => '0');
                        --cnt <= counter;                        
                        prev_btn <= btn;
                        
                        prev_bnc <= prev_btn;
                        dbnc <= prev_bnc;
                else
				if(btn = '1') then
				    prev_btn <= btn;
					counter := std_logic_vector(unsigned(counter) + 1);
					--cnt <= counter;
					dbnc <= prev_bnc;
				else
					counter := (others => '0');
					prev_btn <= btn;
					--cnt <= counter;
					
					prev_bnc <= prev_btn;
					dbnc <= btn;
				end if;
			end if;
		end if;
	end process;	
end delay_switch;