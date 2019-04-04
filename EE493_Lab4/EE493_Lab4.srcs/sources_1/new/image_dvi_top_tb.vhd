----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2019 12:23:29 AM
-- Design Name: 
-- Module Name: image_dvi_top_tb - testbench
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity image_dvi_top_tb is
--  Port ( );
end image_dvi_top_tb;

architecture testbench of image_dvi_top_tb is
component image_dvi_top
port(clk, rst, aRst_n: in std_logic;
		 TMDS_clk_n, TMDS_clk_p:  out std_logic;
		 TMDS_data_n, TMDS_data_p:  out std_logic_vector(2 downto 0));
end component;

signal clk_tb,  TMDS_clk_n_tb, TMDS_clk_p_tb: std_logic;
signal rst_tb : std_logic := '0';
signal aRst_n_tb: std_logic := '0';
signal TMDS_data_n_tb, TMDS_data_p_tb : std_logic_vector(2 downto 0);


begin
DUT: image_dvi_top port map (clk => clk_tb,
                             rst => rst_tb,
                             aRst_n => aRst_n_tb,
                             TMDS_clk_n => TMDS_clk_n_tb,
                             TMDS_clk_p => TMDS_clk_p_tb,
                             TMDS_data_n => TMDS_data_n_tb,
                             TMDS_data_p => TMDS_data_p_tb);
                             
 clk_gen_proc: process
                                                        begin
                                                        
                                                        wait for 4 ns; clk_tb <= '1';
                                                        wait for 4 ns; clk_tb <= '0';
                                                    end process clk_gen_proc;

end testbench;
