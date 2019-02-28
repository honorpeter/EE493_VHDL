----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2019 02:30:12 PM
-- Design Name: 
-- Module Name: Dec2Reg_Mux2Reg - Behavioral
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

entity Dec2Reg_Mux2Reg is
    port( A, B, C: in std_logic_vector(7 downto 0);
          SL1, SL2, CLK: in std_logic;
          RAX, RBX: out std_logic_vector(7 downto 0));
end Dec2Reg_Mux2Reg;

architecture Dec_Reg of Dec2Reg_Mux2Reg is
signal Dec1, Dec2: std_logic;  --use vector type here?
signal FW: std_logic_vector(7 downto 0);
begin
    --define the Mux behavior
    with SL2 select
        FW <= B when '1',
              C when '0';
    process(CLK, SL1)
    begin
        --define the Decoder behavior
        case(SL1) is
            when '1' => 
                Dec1 <= '1'; Dec2 <= '0';
            when '0' =>
                Dec1 <= '0'; Dec2 <= '1';
        end case;
        --define the FFs
        if(CLK' event AND CLK = '1') then
            if(Dec1 = '1') then
                RAX <= A;
            end if;
            if(Dec2 = '1') then
                RBX <= FW;
            end if;
        end if;
    end process;
end Dec_Reg;
