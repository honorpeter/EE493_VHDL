----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2019 03:34:27 PM
-- Design Name: 
-- Module Name: Rec2Mux_Dec2Mux - Reg2Mux_Dec2Mux
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

entity Mux2Reg_Dec2Reg is
 port( A, B, C: in std_logic_vector(7 downto 0);
         SEL1, SEL2, CLK: in std_logic;
         RAP, RBP: out std_logic_vector(7 downto 0));
end Mux2Reg_Dec2Reg;

architecture Mux2Reg_Dec2Reg of Mux2Reg_Dec2Reg is
signal Dec1, Dec2: std_logic;  --use vector type here?
signal FW: std_logic_vector(7 downto 0);
begin
 --define the Mux behavior
   with SEL1 select
       FW <= A when '1',
             B when '0';
   process(CLK, SEL2)
   begin
       --define the Decoder behavior
       case(SEL2) is
           when '1' => 
               Dec1 <= '1'; Dec2 <= '0';
           when '0' =>
               Dec1 <= '0'; Dec2 <= '1';
           when others =>
               Dec1 <= '0'; Dec2 <= '0';
       end case;
       --define the FFs
       if(CLK' event AND CLK = '1') then
           if(Dec1 = '1') then
               RAP <= FW;
           end if;
           if(Dec2 = '1') then
               RBP <= C;
           end if;
       end if;
   end process;

end Mux2Reg_Dec2Reg;
