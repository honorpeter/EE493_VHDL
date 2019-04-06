
library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;

entity color_8bit_24bit_1920_1080 is
port( --clk, en, VS, vid: in std_logic;
	      en, VS, vid: in std_logic;
		  hcount: in std_logic_vector(11 downto 0);
		  vcount: in std_logic_vector(10 downto 0);
		  color_8: in std_logic_vector(7 downto 0);

		  color_24: out std_logic_vector(23 downto 0);

		  addr:  out std_logic_vector(17 downto 0));
end color_8bit_24bit_1920_1080;

architecture Behavioral of color_8bit_24bit_1920_1080 is
--Little Endian System
--BGR (2, 3, 3) to (8, 8, 8)
signal addr_sig: std_logic_vector(17 downto 0) := (others => '0');
constant hlim: unsigned(11 downto 0) := to_unsigned(480, 12);
constant vlim: unsigned(10 downto 0) := to_unsigned(480, 11);
begin
process(en)
		begin
		--if inside the image area, increment the address variable
		--if(rising_edge(clk) and en = '1') then
        if(rising_edge(en)) then
            if (vid = '1' and unsigned(hcount) < hlim and unsigned(vcount) < vlim) then

				addr_sig <= std_logic_vector(unsigned(addr_sig) + 1);

				color_24 <= (6 => color_8(0), 7 => color_8(1), --BLUE BITS
	            13 => color_8(2), 14 => color_8(3), 15 => color_8(4), --GREEN BITS
	            21 => color_8(5), 22 => color_8(6), 23 => color_8(7), others => '0');
	        else
	        	if(VS = '0') then
	        
	                addr_sig <= (others => '0');
	                
        		end if;
	        	color_24 <= (others => '0');

             end if;
	        	
        end if;
            
	end process;

addr <= addr_sig;

end Behavioral;
