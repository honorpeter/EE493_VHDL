
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity image_dvi_tb is

end image_dvi_tb;

architecture testbench of image_dvi_tb is
component image_dvi is

port(clk : in std_logic;
	 vga_hs, vga_vs: out std_logic;
	 pixel_24: out std_logic_vector(23 downto 0));

end component;

signal clk_tb, vga_hs_tb, vga_vs_tb: std_logic;
signal pixel_24_tb : std_logic_vector(23 downto 0);


	begin
	dut: image_dvi port map (clk => clk_tb,
						vga_vs => vga_vs_tb,
						vga_hs => vga_hs_tb,
						pixel_24 => pixel_24_tb);
						
    clk_gen_proc: process
                            begin
                            
                            wait for 4 ns; clk_tb <= '1';
                            wait for 4 ns; clk_tb <= '0';
                        end process clk_gen_proc;

end testbench;
