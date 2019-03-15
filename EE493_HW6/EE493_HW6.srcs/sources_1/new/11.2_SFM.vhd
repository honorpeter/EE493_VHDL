----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2019 10:03:22 PM
-- Design Name: 
-- Module Name: FSM_1 - Behavioral


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FSM_1 is
   port(X1, X2, CLK: in std_logic;
        Y:      out std_logic_vector(1 downto 0);
   		Z:      out std_logic);
end FSM_1;

architecture Behavioral of FSM_1 is
type state_type is (A, B, C);
signal PS, NS: state_type;

begin
sync_process: process(CLK)
	begin

	--update the state at clock rising
	if(CLK' event and CLK = '1') then
		PS <= NS;
	end if;
end process;


comb_process: process(PS, X1, X2)
    begin 
    case PS is
    
        when A =>
            if(X1 = '1') then
                Z <= '0';
                NS <= C;
            elsif(X1 = '0') then
            	Z <= '0';  
            	NS <= A;
            end if;
            
        when B =>
            if(X2 = '1') then
            	Z <= '0';  
                NS <= B;
            elsif(X2 = '0') then
                Z <= '1';
                NS <= A;
            end if;
            
        when C =>
            if(X2 = '0') then
                Z <= '1';
                NS <= A;
            elsif(X2 = '1') then
            	Z <= '0';  
                NS <= B;
            end if;

        when others =>
        	NS <= A;
    		Z <= '0';  

    end case;            
    end process;
    
    --update state output
    with PS select
        Y <= "10" when A,
             "11" when B,
             "01" when C,
             "00" when others;
    
end Behavioral;
