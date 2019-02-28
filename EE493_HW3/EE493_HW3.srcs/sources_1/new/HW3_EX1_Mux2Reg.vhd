----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2019 10:56:19 PM
-- Design Name: 
-- Module Name: HW3_EX1_Mux2Reg.vhd - Behavioral
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

entity Mux2Reg_71 is
 port ( A, B: in std_logic_vector (7 downto 0);
        LDA, SEL, CLK: in std_logic;
        F:    out std_logic_vector (7 downto 0));
 
end Mux2Reg_71;

architecture Mux2Reg of Mux2Reg_71 is
   signal C : std_logic_vector(7 downto 0);
begin
  process(CLK)
  begin
    if(CLK' event AND CLK = '1') then
      if(LDA = '1') then
        F <= C;
      end if;
    end if;
  end process;
  
  with SEL select
    C <= B when '0',
         A when '1',
         B when others;
  end Mux2Reg;
