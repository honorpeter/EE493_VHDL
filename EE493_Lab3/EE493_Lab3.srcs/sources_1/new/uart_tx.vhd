
library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;

entity uart_tx is
	port (send, en, rst, clk : in std_logic;
		  char               : in std_logic_vector(7 downto 0);
		  ready, tx:           out std_logic);
end uart_tx;

architecture Behavioral of uart_tx is
type type_state is (idle, trans);
signal PS, NS: type_state;
signal buf_bits: std_logic_vector(7 downto 0) := "00000000";
signal buf_bit: std_logic := '0';
signal counter: std_logic_vector(2 downto 0) := "000";
begin

sync_proc: process(clk)
	begin
	if(rising_edge(clk)) then
		--if the state changes to trans, load char into buf_bits
		if(PS = idle and NS = trans) then
			buf_bits <= char;
		end if;

		PS <= NS;
	end if;
	end process;
	
comb_proc: process(rst, PS)
	begin
	-- if reset is 1, all internal registers are cleared
	if(rst = '1') then
		buf_bit <= '0';
		buf_bits <= "00000000";
		counter <= "000";
		PS <= idle;
		NS <= idle;
	

	elsif (en = '1') then
		case PS is

			when idle =>
			    buf_bit <= '1';
				counter <= "000";
				--ready <= '1';
			-- if send is asserted and enable is 1
				if(send = '1') then

					NS <= trans;
				elsif(send = '0') then
					NS <= idle;
				end if;
			when trans =>
				buf_bit <= buf_bits(to_integer(unsigned(counter)));
				--ready <= '0';
				--tx <= buf_bit;
				--if counter < 7
				if(to_integer(unsigned(counter)) = 7) then
                    counter <= "000";
                    NS <= idle;
                
				else
					counter <= std_logic_vector(unsigned(counter) + 1);
					NS <= trans;
				--if counter = 7, reset counter, goes to idle
				end if;
            when others =>
                buf_bit <= '1';
                counter <= "000";
                NS <= idle;
		end case;
	end if;
end process;

with PS select
	tx <= '1' when idle,
		  buf_bit when trans,
		  '1' when others;
with PS select
	ready <= '1' when idle,
			 '0' when others;
end Behavioral;
