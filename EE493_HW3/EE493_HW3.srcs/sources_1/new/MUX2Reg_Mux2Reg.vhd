----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2019 02:09:57 PM
-- Design Name: 
-- Module Name: MUS2ANDReg_Mux2ANDReg - MUX_REG
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


entity MUS2ANDReg_Mux2ANDReg is
    port(X, Y:   in std_logic_vector(7 downto 0);
         LDA, LDB, RD, S0, S1, CLK: in std_logic;
         RA, RB: out std_logic_vector(7 downto 0));
end MUS2ANDReg_Mux2ANDReg;

architecture MUX_REG of MUS2ANDReg_Mux2ANDReg is
signal FW1_1, FW3_1, FB1_3: std_logic_vector(7 downto 0);
begin
    with S1 select
        FW1_1 <= X when '1',
                 Y when '0',
                 Y when others;
    with S0 select
        FW3_1 <= FB1_3 when '1',
                 Y when '0',
                 Y when others;
  
    process(CLK)
    begin
        if(CLK' event AND CLK = '1') then
            if(LDB = '1' AND (NOT RD = '1')) then
                FB1_3 <= FW1_1;
            end if;
            if(LDA = '1' AND RD = '1') then
                RA <= FW3_1;
            end if;
        end if;
    end process;
    
    RB <= FB1_3;
end MUX_REG;
