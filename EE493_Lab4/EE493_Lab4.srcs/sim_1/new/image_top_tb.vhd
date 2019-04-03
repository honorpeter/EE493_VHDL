
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity image_top_tb is

end image_top_tb;

architecture testbench of image_top_tb is
component image_top is

port(clk : in std_logic;
	 vga_hs, vga_vs: out std_logic;
	 vga_r: out std_logic_vector(4 downto 0);
	 vga_g: out std_logic_vector(5 downto 0);
	 vga_b: out std_logic_vector(4 downto 0));

end component;

signal clk_tb, vga_hs_tb, vga_vs_tb: std_logic;
signal vga_r_tb : std_logic_vector(4 downto 0);
signal vga_g_tb : std_logic_vector(5 downto 0);
signal vga_b_tb : std_logic_vector(4 downto 0);

	begin
	dut: image_top port map (clk => clk_tb,
						vga_vs => vga_vs_tb,
						vga_hs => vga_hs_tb,
						vga_r => vga_r_tb,
						vga_g => vga_g_tb,
						vga_b => vga_b_tb);
						
    clk_gen_proc: process
                            begin
                            
                            wait for 4 ns; clk_tb <= '1';
                            wait for 4 ns; clk_tb <= '0';
                        end process clk_gen_proc;

end testbench;
