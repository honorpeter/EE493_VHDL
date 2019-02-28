----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2019 01:50:12 PM
-- Design Name: 
-- Module Name: Mux2Reg2Mux2Reg - Behavioral
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

entity Mux2Reg2Mux2Reg is
    port( X, Y:  in std_logic_vector(7 downto 1);
          LDB, LDA, S1, S0, CLK:  in std_logic;
          RB:    out std_logic_vector(7 downto 1));
end Mux2Reg2Mux2Reg;

architecture Mux2Reg2Mux2Reg of Mux2Reg2Mux2Reg is
signal INT1, INT2, INT3, FB: std_logic_vector(7 downto 1); --not just for Flip Flops, so added outside process
begin
    with S1 select
        INT1 <= X when '1',
                FB when '0';
    with S0 select
        INT3 <= INT2 when '1',
                Y when '0';
    
    process(CLK)
    begin
        if(CLK' event AND CLK = '1') then
            if(LDA = '1') then
                INT2 <= INT1;
            end if;
            if(LDB = '1') then
                FB <= INT3;
            end if;
        end if;
    end process;    
    RB <= FB;
        
end Mux2Reg2Mux2Reg;
