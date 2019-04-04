
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity image_dvi is
	--port(clk, rst:  in std_logic;
	--	 TMDS_clk_n, TMDS_clk_p:  out std_logic;
	--	 TMDS_data_n, TMDS_data_p:  out std_logic_vector(2 downto 0));
	port(clk : in std_logic;
		 vga_hs, vga_vs: out std_logic;
		 pixel_24: out std_logic_vector(23 downto 0));	 
end image_dvi;

architecture top_arch of image_dvi is
	--clk_div, picture, vga_ctrl, color_8_24
component clk_40MHz is 
	 port (
    clk_in1_0 : in STD_LOGIC;
    clk_out1_0 : out STD_LOGIC
    );
end component;

component picture is
    port (
    rom_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    rom_clk : in STD_LOGIC;
    rom_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end component;

component vga_ctrl_800_600 is
	port ( clk, en: in std_logic;
			vid: out std_logic := '0';
			HS: out std_logic := '1';
			VS: out std_logic := '1';
			hcount: out std_logic_vector(10 downto 0) := (others => '0');
			vcount: out std_logic_vector(9 downto 0) := (others => '0'));
end component;

component color_8bit_24bit_800_600 is
	port( clk, en, VS, vid: in std_logic;
		  hcount: in std_logic_vector(10 downto 0);
		  vcount: in std_logic_vector(9 downto 0);
		  color_8: in std_logic_vector(7 downto 0);

		  color_24: out std_logic_vector(23 downto 0);

		  addr:  out std_logic_vector(17 downto 0));
end component;

signal en_sig, vid_sig, VS_sig: std_logic;
signal hcount_sig: std_logic_vector(10 downto 0);
signal vcount_sig: std_logic_vector(9 downto 0);
signal pixel_sig: std_logic_vector(7 downto 0);
signal addr_sig: std_logic_vector(17 downto 0);


begin

clk_40MHz_0: clk_40MHz port map (clk_in1_0  => clk,
							 clk_out1_0  => en_sig);

picture_0: picture port map(rom_clk => en_sig,
							rom_addr => addr_sig,
							rom_dout => pixel_sig );

vga_ctrl_0: vga_ctrl_800_600 port map(clk => clk,
							  en => en_sig,
							  vid => vid_sig,
							  HS => vga_hs,
							  VS => vga_vs,
							  hcount => hcount_sig,
							  vcount => vcount_sig);

color_8_24_0: color_8bit_24bit_800_600 port map(clk => clk,
									  en => en_sig,
									  vid => vid_sig,
									  VS => VS_sig,
									  hcount => hcount_sig,
									  vcount => vcount_sig,
									  color_8 => pixel_sig,
									  color_24 => pixel_24,
									  addr => addr_sig);
end top_arch;
