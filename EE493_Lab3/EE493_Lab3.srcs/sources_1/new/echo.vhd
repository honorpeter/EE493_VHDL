
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity echo is
	port(newChar, rdy, en, clk: in std_logic;
		 char_in: in std_logic_vector(7 downto 0);
		 send:   out std_logic;
		 char_out: out std_logic_vector(7 downto 0));
end echo;

architecture Behavioral of echo is

type state_type is (idle, busyA, busyB, busyC);
signal PS : state_type := idle;

begin
	process(clk)
	begin
	if(rising_edge(clk) and en = '1') then

		case PS is

			when idle =>
			
				if(newChar = '1') then 

					send <= '1';
					char_out <= char_in;

					PS <= busyA;
				end if;

			when busyA =>

				PS <= busyB;

			when busyB =>

				send <= '0';
				PS <= busyC;

			when busyC =>

				if(rdy = '1') then

					PS <= idle;
				end if;
			end case;
		end if;
	end process;


end Behavioral;
