
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity image_dvi_top is
	port(clk, rst, aRst_n: in std_logic;
		 TMDS_clk_n, TMDS_clk_p:  out std_logic;
		 TMDS_data_n, TMDS_data_p:  out std_logic_vector(2 downto 0));
end image_dvi_top;

architecture top_arch of image_dvi_top is

--clk_div, picture, vga_ctrl, color_8_24, rgb_dvi
component clk_div is 
	port(clk: in std_logic;
       div:   out std_logic);
end component;

component picture is
    port (
    rom_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    rom_clk : in STD_LOGIC;
    rom_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
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

component color_8bit_24bit is
	port( clk, en, VS, vid: in std_logic;
		  hcount: in std_logic_vector(9 downto 0);
		  color_8: in std_logic_vector(7 downto 0);

		  color_24: out std_logic_vector(23 downto 0);

		  addr:  out std_logic_vector(17 downto 0));
end component;

component rgb2dvi is
	Port (
      -- DVI 1.0 TMDS video interface
      TMDS_Clk_p : out std_logic;
      TMDS_Clk_n : out std_logic;
      TMDS_Data_p : out std_logic_vector(2 downto 0);
      TMDS_Data_n : out std_logic_vector(2 downto 0);
      
      -- Auxiliary signals 
      aRst : in std_logic; --asynchronous reset; must be reset when RefClk is not within spec
      aRst_n : in std_logic; --asynchronous reset; must be reset when RefClk is not within spec
      
      -- Video in
      vid_pData : in std_logic_vector(23 downto 0);
      vid_pVDE : in std_logic;
      vid_pHSync : in std_logic;
      vid_pVSync : in std_logic;
      PixelClk : in std_logic; --pixel-clock recovered from the DVI interface
      
      SerialClk : in std_logic); -- 5x PixelClk
end component;

signal en_sig, vid_sig, VS_sig, HS_sig: std_logic;
signal hcount_sig: std_logic_vector(9 downto 0);
signal pixel_sig: std_logic_vector(7 downto 0);
signal addr_sig: std_logic_vector(17 downto 0);

--signal rst_sig: std_logic;
signal data_sig: std_logic_vector(23 downto 0);

begin

clk_div_0: clk_div port map (clk => clk,
							 div => en_sig);

picture_0: picture port map(rom_clk => en_sig,
							rom_addr => addr_sig,
							rom_dout => pixel_sig );

vga_ctrl_0: vga_ctrl port map(clk => clk,
							  en => en_sig,
							  vid => vid_sig,
							  HS => HS_sig,
							  VS => VS_sig,
							  hcount => hcount_sig);

color_8_24_0: color_8bit_24bit port map(clk => clk,
									  en => en_sig,
									  vid => vid_sig,
									  VS => VS_sig,
									  hcount => hcount_sig,
									  color_8 => pixel_sig,
									  color_24 => data_sig,
									  addr => addr_sig);
									  
rgb2dvi_0: rgb2dvi port map(SerialClk => clk,
                            PixelClk => en_sig,
                            aRst => rst,
                            aRst_n => aRst_n,									 									  
                            vid_pData => data_sig,
                            vid_pVDE => vid_sig,
                            vid_pHSync => HS_sig,
                            vid_pVSync => VS_sig,
                            TMDS_Clk_p => TMDS_clk_p,
                            TMDS_Clk_n => TMDS_clk_n,
                            TMDS_Data_p => TMDS_Data_p,
                            TMDS_Data_n => TMDS_Data_n);
                            
end top_arch;
