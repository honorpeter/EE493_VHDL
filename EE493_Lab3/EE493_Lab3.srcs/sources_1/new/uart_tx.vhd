
library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;


entity uart_tx is
	port (send, en, rst, clk : in std_logic;
		  char               : in std_logic_vector(7 downto 0);
		  ready, tx:           out std_logic);
end uart_tx;

architecture Behavioral of uart_tx is
type type_state is (idle, start, trans);
signal PS, NS: type_state;
signal buf_bits: std_logic_vector(7 downto 0);
signal buf_bit: std_logic;
begin

sync_proc: process(clk)
	variable counter: integer := 0;
	begin
	if(send = '1' and en = '1' and rising_edge(clk)) then
		PS <= start;
		buf_bits <= char;
	end if;
end process;
comb_proc: process(rst, PS)
	begin
	-- if reset is 1, all internal registers are cleared
	if(rst = '1') then
		buf_bit <= '0';
		buf_bits <= "0000000";
		PS <= idle;
		NS <= idle;
	end if;

end process;


with PS select
	tx <= '1' when idle,
		  '0' when start,
		  buf_bit when trans,
		  '1' when others;
with PS select
	ready <= '1' when idle,
			 '0' when others;
end Behavioral;
