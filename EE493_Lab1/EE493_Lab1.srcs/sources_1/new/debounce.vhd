----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2019 08:33:06 PM
-- Design Name: 
-- Module Name: debounce - delay_switch
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

entity debounce is
	port( clk, btn: in std_logic;
      dbnc:     out std_logic);
end debounce;

architecture delay_switch of debounce is
signal prev_btn : std_logic := '0';  -- Not the way should be here
signal prev_bnc : std_logic := '0';  -- Not the way should be here
begin

	process (clk)
	variable  DEC_COUNT : integer := 2500000; 
	variable counter : integer := 0;
	begin
		if(counter = DEC_COUNT) then
			counter := 0;
			prev_btn <= btn;
			prev_bnc <= prev_btn;
			dbnc <= prev_bnc;
		else

			if(clk' event and clk = '1') then
			    dbnc <= prev_bnc;
				if(btn = prev_btn) then
					counter := counter + 1;
				else
					counter := 0;
				end if;
			end if;
		end if;
	end process;	
end delay_switch;
