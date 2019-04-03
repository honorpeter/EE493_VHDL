
library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.numeric_std.ALL;

--2 Modules: RGB module: pixel(8bit) -> RGB(5:6:5) and 
--address module: hcount -> addr
entity pixel_pusher is
	port( clk, en, VS, vid: in std_logic;
		  hcount: in std_logic_vector(9 downto 0);
		  pixel: in std_logic_vector(7 downto 0);

		  R:     out std_logic_vector(4 downto 0);
		  G:     out std_logic_vector(5 downto 0);
		  B:     out std_logic_vector(4 downto 0);

		  addr:  out std_logic_vector(17 downto 0));
end pixel_pusher;

architecture Behavioral of pixel_pusher is

signal addr_sig: std_logic_vector(17 downto 0) := (others => '0');
constant hlim: unsigned(9 downto 0) := to_unsigned(480, 10);
	begin
	
	process(clk)
		begin
		--if inside the image area, increment the address variable
		if(rising_edge(clk) and en = '1') then

            if (vid = '1' and unsigned(hcount) < hlim) then

				addr_sig <= std_logic_vector(unsigned(addr_sig) + 1);

				--R <= (pixel(7), pixel(6), pixel(5), others => '0');
				R <= pixel(7 downto 5) & "00";
	            G <= (pixel(4), pixel(3), pixel(2), others => '0');
	            B <= (pixel(1), pixel(0), others => '0');
	        else
	        	if(VS = '0') then
	        
	                addr_sig <= (others => '0');
	                
        		end if;
	        	R <= (others => '0');
                G <= (others => '0');
                B <= (others => '0');

             end if;
	        	
        end if;
            
	end process;

addr <= addr_sig;
end Behavioral;
