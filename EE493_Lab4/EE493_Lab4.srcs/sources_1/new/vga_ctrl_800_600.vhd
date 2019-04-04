
library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.numeric_std.ALL;


entity vga_ctrl_800_600 is

	port ( clk, en: in std_logic;
			vid: out std_logic := '0';
			HS: out std_logic := '1';
			VS: out std_logic := '1';
			hcount: out std_logic_vector(10 downto 0) := (others => '0');
			vcount: out std_logic_vector(9 downto 0) := (others => '0'));

end vga_ctrl_800_600;

architecture Behavioral of vga_ctrl_800_600 is
--constant hlim : integer := 1056;
--constant vlim: integer := 628;
--VGA size is 1056*628
constant hlim : unsigned := to_unsigned(1055, 11);
constant vlim: unsigned := to_unsigned(627, 10);
--display size is 800*600
constant hlim_disp : unsigned := to_unsigned(800, 11);
constant vlim_disp: unsigned := to_unsigned(600, 10);
--Sync area is [840, 967] and [601, 604], respectively
type sync_lim is array (0 to 1) of unsigned(9 downto 0);
constant hsync_lim: sync_lim := (to_unsigned(839, 10), to_unsigned(967, 10));
constant vsync_lim: sync_lim := (to_unsigned(600, 10), to_unsigned(604, 10));

signal counter_h : std_logic_vector(10 downto 0) := (others => '0');
signal counter_v : std_logic_vector(9 downto 0) := (others => '0');
begin

process (clk, en)

	begin
	if(rising_edge(clk) and en = '1') then
        
        --increment the counter if horizontal index is less than 800
		if(unsigned(counter_h) < hlim) then

			counter_h <= std_logic_vector(unsigned(counter_h) + 1);
			
			--assert vid to 1 if horizontal index is less than 640
			if(unsigned(counter_h) < hlim_disp and unsigned(counter_v) < vlim_disp) then
			     
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
			
			
			if(unsigned(counter_v) < vlim) then
			
				counter_v <= std_logic_vector(unsigned(counter_v) + 1);
				
				--assert vsync to 0 if vertical index is between [490, 491]
                if(unsigned(counter_v) >= vsync_lim(0) and unsigned(counter_v) < vsync_lim(1)) then
                     VS <= '0';
                else
                     VS <= '1';
                end if;
			
			elsif(unsigned(counter_v) = vlim) then

				counter_v <= (others => '0');

			end if;

		end if;

	end if;

	end process;
			
hcount <= counter_h;
vcount <= counter_v;


end Behavioral;
