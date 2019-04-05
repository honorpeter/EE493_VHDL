
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vga_ctrl_1280_720_tb is
    
end vga_ctrl_1280_720_tb;

architecture testbench of vga_ctrl_1280_720_tb is
component vga_ctrl_1280_720 is
    port ( en: in std_logic;
			vid, HS, VS: out std_logic;
			hcount: out std_logic_vector(10 downto 0);
			vcount: out std_logic_vector(9 downto 0));
end component;
signal en_tb: std_logic := '0';
signal vid_tb: std_logic := '0';
signal HS_tb: std_logic := '0';
signal VS_tb: std_logic := '0';
signal hcount_tb: std_logic_vector(10 downto 0);
signal vcount_tb: std_logic_vector(9 downto 0);

begin
 dut: vga_ctrl_1280_720
   port map( en => en_tb,
             vid => vid_tb,
             HS => HS_tb,
             VS => VS_tb,
             hcount => hcount_tb,
             vcount => vcount_tb);
             
clk_div_gen_proc: process
                 begin
                 en_tb <= '1'; wait for 4 ns;
                 en_tb <= '0'; wait for 16 ns;
     end process;          

end testbench;
