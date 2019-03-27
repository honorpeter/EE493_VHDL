
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity sender_tb is
end sender_tb;

architecture testbench of sender_tb is

	component sender is
		port(rst, btn, ready, clk, clk_en:  in std_logic;
			 send:  out std_logic;
			 char:  out std_logic_vector(7 downto 0));
	end component;

	signal rst_tb: std_logic := '0';
	signal btn_tb: std_logic := '0';
	signal ready_tb: std_logic := '0';
	signal clk_tb: std_logic := '0';
	signal clk_en_tb: std_logic := '0';
	signal send_tb: std_logic := '0';
	signal char_tb: std_logic_vector(7 downto 0) := "00000000";
begin
	
	dut: sender port map(
		rst => rst_tb,
		btn => btn_tb,
		ready => ready_tb,
		clk => clk_tb,
		clk_en => clk_en_tb,
		send => send_tb,
		char=> char_tb);

	rst_gen_proc: process
		begin
		rst_tb <= '0'; wait for 470 ns;
		rst_tb <= '1'; wait for 60 ns;
		rst_tb <= '0'; wait for 470 ns;
	end process;

	btn_gen_proc: process
		begin
		btn_tb <= '1'; wait for 130 ns;
		btn_tb <= '0'; wait for 70 ns;
	end process;

	ready_gen_proc: process
		begin
		ready_tb <= '0'; wait for 50 ns;
		ready_tb <= '1'; wait for 150 ns;
	end process;

	clk_gen_proc: process
		begin
		clk_tb <= '0';
	    wait for 4 ns;
	    clk_tb <= '1';
	    wait for 4 ns;
	end process;

	clk_en_gen_proc: process
		begin
		clk_en_tb <= '1'; wait for 1000 ns;
	end process;


end testbench;
