library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.numeric_std.ALL;

--With Clock Signal, control which pixel the VGA is reading
entity vga_ctrl is
	port ( clk, en: in std_logic;
			vid: out std_logic := '0';
			HS: out std_logic := '1';
			VS: out std_logic := '1';
			hcount: out std_logic_vector(9 downto 0) := (others => '0');
			vcount: out std_logic_vector(9 downto 0) := (others => '0'));
end vga_ctrl;

architecture Behavioral of vga_ctrl is

--constant hlim : integer := 800;
--constant vlim: integer := 525;
--VGA size is 800*525
constant hlim : unsigned := to_unsigned(800, 10);
constant vlim: unsigned := to_unsigned(525, 10);
--display size is 640*480
constant hlim_disp : unsigned := to_unsigned(640, 10);
constant vlim_disp: unsigned := to_unsigned(480, 10);
--Sync area is [656, 751] and [490, 491], respectively
type sync_lim is array (0 to 1) of unsigned(9 downto 0);
constant hsync_lim: sync_lim := (to_unsigned(654, 10), to_unsigned(750, 10));
constant vsync_lim: sync_lim := (to_unsigned(490, 10), to_unsigned(492, 10));

signal counter_h : std_logic_vector(9 downto 0) := (others => '0');
signal counter_v : std_logic_vector(9 downto 0) := (others => '0');
--signal vsync: std_logic := '1';
--vsync_not is replaced by a boolean
type state_type is (disp, hlim_out1, hsync_not1, hlim_out2, vlim_out1, hsync_not2, vlim_out2);
signal PS : state_type := disp;

begin
	process (clk)
	begin

	if(rising_edge(clk) and en = '1') then
        counter_h <= std_logic_vector(unsigned(counter_h) + 1);
		case PS is
		--disp can transit to hlim_out1
		when disp =>

			--vid <= '1';
			HS <= '1';
			VS <= '1';

			--increment horizontal index if hlim_display is not reached
			--counter_h <= std_logic_vector(unsigned(counter_h) + 1);

			if(unsigned(counter_h) = hlim_disp) then
                vid <= '0';
				PS <= hlim_out1;
			else
			    vid <= '1';
			end if;

		--hlim__out1 can transit to hsync_not1
		when hlim_out1 =>

			vid <= '0';
			HS <= '1';
			VS <= '1';

			--counter_h <= std_logic_vector(unsigned(counter_h) + 1);
			--transit to hsync_not
			if(unsigned(counter_h) = hsync_lim(0)) then

				PS <= hsync_not1;
			end if;
		
		--hsync_not1 can transit to hlim_out2
		when hsync_not1 =>

			vid <= '0';
			HS <= '0';
			VS <= '1';

			--counter_h <= std_logic_vector(unsigned(counter_h) + 1);
			--transiting
			if(unsigned(counter_h) = hsync_lim(1)) then

				PS <= hlim_out2;
			end if;

		--hlim_out2 can either transit to disp or vlim_out1
		when hlim_out2 =>	

			--vid <= '0';
			HS <= '1';
			VS <= '1';

			--counter_h <= std_logic_vector(unsigned(counter_h) + 1);
			--if transiting to disp or vlim_out:
			if(unsigned(counter_h) = hlim) then

				--if transiting to vlim_out (> 480)
				if(unsigned(counter_v) = vlim_disp) then
					--increment the vertical index
					counter_v <= std_logic_vector(unsigned(counter_v) + 1);
					--reset horizontal index
					counter_h <= (others => '0');
					vid <= '0';
					PS <= vlim_out1;
				--if transiting to disp
				elsif(unsigned(counter_v) < vlim_disp) then

					--increment the vertical index
					counter_v <= std_logic_vector(unsigned(counter_v) + 1);
					--reset horizontal index
					counter_h <= (others => '0');
					vid <= '1';
					PS <= disp;

				end if;

			end if;

		--  FOR vlim_out1, hsync_not2 and vlim_out2, we need to check if Vsync should be zero.
		--vlim_out1 can transit to hsync_not2
		when vlim_out1 =>

			vid <= '0';
			HS <= '1';

			--counter_h <= std_logic_vector(unsigned(counter_h) + 1);

			--assert vsync to 0 if vertical index is between [490, 491]
            if(unsigned(counter_v) >= vsync_lim(0) and unsigned(counter_v) < vsync_lim(1)) then
                 VS <= '0';
            else
                 VS <= '1';
            end if;

			--transition
			if(unsigned(counter_h) = hsync_lim(0)) then

				PS <= hsync_not2;
			end if;

		--hsync_not2 can transit to vlim_out2
		when hsync_not2 =>

			vid <= '0';
			HS <= '0';

			--counter_h <= std_logic_vector(unsigned(counter_h) + 1);

			--assert vsync to 0 if vertical index is between [490, 491]
            if(unsigned(counter_v) >= vsync_lim(0) and unsigned(counter_v) < vsync_lim(1)) then
                 VS <= '0';
            else
                 VS <= '1';
            end if;

			--transition
			if(unsigned(counter_h) = hsync_lim(1)) then

				PS <= vlim_out2;
			end if;

		--vlim_out2 can either go to vlim_out1 or disp
		when vlim_out2 =>

			--vid <= '0';
			HS <= '1';

			--counter_h <= std_logic_vector(unsigned(counter_h) + 1);

			--assert vsync to 0 if vertical index is between [490, 491]
            if(unsigned(counter_v) >= vsync_lim(0) and unsigned(counter_v) < vsync_lim(1)) then
                 VS <= '0';
            else
                 VS <= '1';
            end if;

            --if transiting to vlim_out1 (< 525)
            if(unsigned(counter_h) = hlim) then
                if(unsigned(counter_v) < vlim) then
                    --increment the vertical index
                    counter_v <= std_logic_vector(unsigned(counter_v) + 1);
                    --reset horizontal index
                    counter_h <= (others => '0');
                    vid <= '0';
                    PS <= vlim_out1;
                --if transiting to disp
                elsif(unsigned(counter_v) = vlim) then
    
                    --increment the vertical index
                    counter_v <= (others => '0');
                    --reset horizontal index
                    counter_h <= (others => '0');
                    vid <= '1';
                    PS <= disp;
    
                end if;
            end if;
	end case;
        --counter_h <= std_logic_vector(unsigned(counter_h) + 1);
	end if;
	end process;

	
hcount <= counter_h;
vcount <= counter_v;
end Behavioral;