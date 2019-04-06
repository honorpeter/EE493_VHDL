
library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.numeric_std.ALL;

entity vga_ctrl_1920_1080 is
port ( --clk, en: in std_logic;
	        en: in std_logic;
			vid: out std_logic := '0';
			HS: out std_logic := '1';
			VS: out std_logic := '1';
			hcount: out std_logic_vector(11 downto 0) := (others => '0');
			vcount: out std_logic_vector(10 downto 0) := (others => '0'));
--  Port ( );
end vga_ctrl_1920_1080;

architecture Behavioral of vga_ctrl_1920_1080 is
--constant hlim : integer := 2200;
--constant vlim: integer := 1125;
--VGA size is 2200*1125
constant hlim : unsigned := to_unsigned(2199, 12);
constant vlim: unsigned := to_unsigned(1124, 11);
--display size is 1920*1080
constant hlim_disp : unsigned := to_unsigned(1919, 12);
constant vlim_disp: unsigned := to_unsigned(1079, 11);
--Sync area is [2009, 2052] and [1085, 1089], respectively
type sync_lim is array (0 to 1) of unsigned(11 downto 0);
constant hsync_lim: sync_lim := (to_unsigned(2007, 12), to_unsigned(2051, 12));
constant vsync_lim: sync_lim := (to_unsigned(1083, 12), to_unsigned(1088, 12));

signal counter_h : std_logic_vector(11 downto 0) := (others => '0');
signal counter_v : std_logic_vector(10 downto 0) := (others => '0');
begin
process(en)
begin
if (rising_edge(en)) then
        
        --increment the counter if horizontal index is less than 800
		if(unsigned(counter_h) < hlim) then

			counter_h <= std_logic_vector(unsigned(counter_h) + 1);
			
			--assert vid to 1 if horizontal index is less than 640
			if(unsigned(counter_h) < hlim_disp and unsigned(counter_v) <= vlim_disp) then
			     
			     vid <= '1';
			else
			     vid <= '0';
			end if;
			
			--assert hsync to 0 if horizontal index is between [656, 751]
			if(unsigned(counter_h) >= hsync_lim(0) and unsigned(counter_h) < hsync_lim(1)) then
			     HS <= '0';
			else
			     HS <= '1';
			end if;

		-- when horizontal index is 800, reset the horizontal and increment the vertical
		elsif(unsigned(counter_h) = hlim) then

			counter_h <= (others => '0');

			--asert vid to 1 if vertical index is less than 480
			
			
			if(unsigned(counter_v) < vlim) then
			
				counter_v <= std_logic_vector(unsigned(counter_v) + 1);
				
				--assert vsync to 0 if vertical index is between [490, 491]
                if(unsigned(counter_v) >= vsync_lim(0) and unsigned(counter_v) < vsync_lim(1)) then
                     VS <= '0';
                else
                     VS <= '1';
                end if;
			    
			    if(unsigned(counter_v) < vlim_disp) then
                
                    vid <= '1';
                else
                    vid <= '0';
                end if;
			    
			elsif(unsigned(counter_v) = vlim) then
                vid <= '1';
				counter_v <= (others => '0');

			end if;

		end if;

	end if;

	end process;
			
--vid <= vid_sig;			
hcount <= counter_h;
vcount <= counter_v;

end Behavioral;
