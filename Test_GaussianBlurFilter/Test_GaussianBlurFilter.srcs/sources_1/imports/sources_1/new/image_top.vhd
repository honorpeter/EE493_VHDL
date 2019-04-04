
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity image_top is

	port(clk : in std_logic;
		 vga_hs, vga_vs: out std_logic;
		 vga_r: out std_logic_vector(4 downto 0);
		 vga_g: out std_logic_vector(5 downto 0);
		 vga_b: out std_logic_vector(4 downto 0));
end image_top;

architecture top_arch of image_top is

component clk_div is 
	port(clk: in std_logic;
       div:   out std_logic);
end component;

component image_rom is
   port (
    image_rom_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    image_rom_clk : in STD_LOGIC;
    image_rom_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end component;

component vga_ctrl is
	port ( clk, en: in std_logic;
			vid: out std_logic := '0';
			HS: out std_logic := '1';
			VS: out std_logic := '1';
			hcount: out std_logic_vector(9 downto 0) := (others => '0');
			vcount: out std_logic_vector(9 downto 0) := (others => '0'));
end component;

component pixel_pusher is
	port( clk, en, VS, vid: in std_logic;
		  hcount: in std_logic_vector(9 downto 0);
		  pixel: in std_logic_vector(7 downto 0);

		  R:     out std_logic_vector(4 downto 0);
		  G:     out std_logic_vector(5 downto 0);
		  B:     out std_logic_vector(4 downto 0);

		  addr:  out std_logic_vector(17 downto 0));
end component;

signal en_sig, vid_sig, VS_sig: std_logic;
signal hcount_sig: std_logic_vector(9 downto 0);
signal pixel_sig: std_logic_vector(7 downto 0);
signal addr_sig: std_logic_vector(17 downto 0);

begin

clk_div_0: clk_div port map (clk => clk,
							 div => en_sig);

image_rom_0: image_rom port map(image_rom_clk => en_sig,
                                                         image_rom_addr => addr_sig,
                                                         image_rom_dout => pixel_sig );


vga_ctrl_0: vga_ctrl port map(clk => clk,
							  en => en_sig,
							  vid => vid_sig,
							  HS => vga_hs,
							  VS => vga_vs,
							  hcount => hcount_sig);

pixel_pusher_0: pixel_pusher port map(clk => clk,
									  en => en_sig,
									  vid => vid_sig,
									  VS => VS_sig,
									  hcount => hcount_sig,
									  pixel => pixel_sig,
									  R => vga_r,
									  G => vga_g,
									  B => vga_b,
									  addr => addr_sig);






end top_arch;
