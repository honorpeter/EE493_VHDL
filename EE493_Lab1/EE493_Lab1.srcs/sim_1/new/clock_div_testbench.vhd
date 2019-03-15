----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2019 09:33:49 PM
-- Design Name: 
-- Module Name: clock_div_testbench - Behavioral
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

entity clock_div_testbench is
end clock_div_testbench;

architecture testbench of clock_div_testbench is
    signal tb_clk : std_logic := '0';
    signal tb_div : std_logic := '0';
    
    component clock_div is
        port( clk:   in std_logic;
              div:   out std_logic);
    end component;
begin
-- sim a 125 Mhz clock
    clk_gen_proc: process
    begin
    
    wait for 4 ns; tb_clk <= '1';
    wait for 4 ns; tb_clk <= '0';

    end process clk_gen_proc;

    dut: clock_div
    port map( clk => tb_clk,
              div => tb_div);

end testbench;
