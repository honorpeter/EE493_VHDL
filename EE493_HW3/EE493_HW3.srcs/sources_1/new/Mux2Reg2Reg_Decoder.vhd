----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2019 12:22:44 AM
-- Design Name: 
-- Module Name: Mux2Reg2Reg_Decoder - Mux2Reg2Reg
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

entity Mux2Reg2Reg_Decoder is
    port ( X, Y, Z: in std_logic_vector (7 downto 0);
       MS:      in std_logic_vector (1 downto 0);
       DS, CLK: in std_logic;
       RB, RA:    out std_logic_vector (7 downto 0));
end Mux2Reg2Reg_Decoder;

architecture Mux2Reg2Reg of Mux2Reg2Reg_Decoder is
    signal LD_A, LD_B: std_logic;
    signal INT1, INT2, FB: std_logic_vector (7 downto 0);
begin
    
    --define the Decoder:
    process (DS) -- CASE MUST be in a PROCESS
    begin
    case (DS) is
       when '0' => 
            LD_A <= '1';
            LD_B <= '0';
       when '1' =>
            LD_A <= '0';
            LD_B <= '1';
       when others =>
            LD_A <='0';
            LD_B <= '0';
    end case;
    end process;
    --define the MUX:¡¢£ú
    with MS select
       INT1 <= X when "11",
               Y when "10",
               Z when "01",
               FB when"00",
               FB when others;
    --define the two FFs:           
    process(CLK)
    begin
        if(CLK' event AND CLK = '1') then
            if(LD_A = '1') then
                INT2 <= INT1;
                --RA <= INT1;
            end if;
            if(LD_B = '1') then
                RB <= INT2;
            end if;
        end if;    
    end process;
    RA <= INT2;
end Mux2Reg2Reg;
