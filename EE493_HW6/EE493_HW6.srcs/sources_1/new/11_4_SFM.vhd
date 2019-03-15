

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Ch11_4_SFM is
	--Z1 belongs to state (Moore output)
	port(X1, X2, INIT, CLK: in std_logic;
		 Z1, Z2:                out std_logic);
end Ch11_4_SFM;

architecture Behavioral of Ch11_4_SFM is
	type state_type is (a, b, c);
	signal PS, NS: state_type;
begin

	sync_process: process(CLK)
	begin
	    if(clk' event and clk = '1') then
		  if(INIT = '1') then
			 PS <= a;
		  else PS <= NS;
		  end if;
		end if;
	end process;

	comb_process: process(X1, X2)
	begin

		case PS is

			when a =>
				if (X1 = '0') then 
					Z2 <= '0';
					NS <= c;
				elsif (X1 = '1') then 
					Z2 <= '1';
					NS <= b;
				end if;
			when b =>
				if (X2 = '0') then 
					Z2 <= '1';
					NS <= c;
				elsif (X2 = '1') then 
					Z2 <= '0';
					NS <= a;
				end if;
			when c =>
				if (X1 = '0') then 
					Z2 <= '1';
					NS <= a;
				elsif (X1 = '1') then 
					Z2 <= '1';
					NS <= b;
				end if;

			when others =>
				--default values
				Z2 <= '0'; NS <= a;
		end case;
	end process;

	--update state output
	with PS select
		Z1 <= '0' when a,
			  '1' when b,
			  '1' when c,
			  '0' when others;

end Behavioral;