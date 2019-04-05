
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity clk_custom_tb is
--  Port ( );
end clk_custom_tb;

architecture testbench of clk_custom_tb is

component clk_40_200MHz is
	port (
    clk_200_out : out STD_LOGIC;
    clk_40_out : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );
end component;
signal clk_in_tb, clk_200_out_tb, clk_40_out_tb : STD_LOGIC;
begin
DUT: clk_40_200MHz port map (clk_in => clk_in_tb,
							 clk_200_out => clk_200_out_tb,
							 clk_40_out => clk_40_out_tb
							 );
clk_gen_proc: process
                                                         begin
                                                         
                                                         wait for 4 ns; clk_in_tb <= '1';
                                                         wait for 4 ns; clk_in_tb <= '0';
                                                     end process clk_gen_proc;

end testbench;
