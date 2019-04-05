
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vga_ctrl_tb is
end vga_ctrl_tb;

architecture testbench of vga_ctrl_tb is
component vga_ctrl is
    port ( clk, en: in std_logic;
			vid, HS, VS: out std_logic;
			hcount: out std_logic_vector(9 downto 0);
			vcount: out std_logic_vector(9 downto 0));
end component;
signal clk_tb : std_logic := '0';
signal en_tb: std_logic := '0';
signal vid_tb: std_logic := '0';
signal HS_tb: std_logic := '0';
signal VS_tb: std_logic := '0';
signal hcount_tb: std_logic_vector(9 downto 0);
signal vcount_tb: std_logic_vector(9 downto 0);
begin

clk_gen_proc: process
    begin
    
    wait for 4 ns; clk_tb <= '1';
    wait for 4 ns; clk_tb <= '0';
end process clk_gen_proc;

--simulate the divided by 5 clock
clk_div_gen_proc: process
    begin
    en_tb <= '1'; wait for 4 ns;
    en_tb <= '0'; wait for 16 ns;
    
end process clk_div_gen_proc;

    dut: vga_ctrl
    port map( clk => clk_tb,
              en => en_tb,
              vid => vid_tb,
              HS => HS_tb,
              VS => VS_tb,
              hcount => hcount_tb,
              vcount => vcount_tb);
end testbench;
