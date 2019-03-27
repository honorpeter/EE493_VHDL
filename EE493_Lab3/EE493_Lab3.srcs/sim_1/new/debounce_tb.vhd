
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity debounce_tb is
end debounce_tb;

architecture testbench of debounce_tb is
signal tb_clk : std_logic := '0';
    signal tb_btn : std_logic := '0';
    signal tb_dbnc : std_logic := '0';
    signal tb_cnt : std_logic_vector(26 downto 0) := (others => '0');
    
    component debounce is
    port( clk, btn: in std_logic;
          dbnc:     out std_logic);
          --cnt :     out std_logic_vector(26 downto 0));
    end component;
begin
clk_gen_proc: process
begin
	wait for 4 ns; tb_clk <= '1';
    wait for 4 ns; tb_clk <= '0';
end process clk_gen_proc;

btn_press_proc: process
begin
	wait for 10 ms; tb_btn <= '1';
	wait for 5 ms; tb_btn <= '0';
	wait for 30 ms; tb_btn <= '1';
	wait for 10 ms; tb_btn <= '0';
	wait for 30 ms; tb_btn <= '1';
	wait for 30 ms; tb_btn <= '0';
end process btn_press_proc;
dut: debounce
port map (
	clk => tb_clk,
	btn => tb_btn,
	dbnc => tb_dbnc
	--cnt => tb_cnt
	);


end testbench;
