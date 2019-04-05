
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity image_dvi_top is
	port(clk, rst:  in std_logic;
	     aRst_n: in std_logic := '1';
	     --Data_24: out std_logic_vector(23 downto 0); 
		 TMDS_clk_n, TMDS_clk_p:  out std_logic;
		 TMDS_data_n, TMDS_data_p:  out std_logic_vector(2 downto 0));
end image_dvi_top;

architecture top_arch of image_dvi_top is

--clk_40MHz, clk_200MHZ, picture, vga_ctrl, color_8_24, rgb_dvi
component clk_148MHz is
     port (
   clk_in : in STD_LOGIC;
   clk_148_out: out std_logic
 );
end component;

component picture is
    port (
    rom_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    rom_clk : in STD_LOGIC;
    rom_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end component;

component vga_ctrl_1920_1080 is
	port ( en: in std_logic;
			vid: out std_logic := '0';
			HS: out std_logic := '1';
			VS: out std_logic := '1';
			hcount: out std_logic_vector(11 downto 0) := (others => '0');
			vcount: out std_logic_vector(10 downto 0) := (others => '0'));
end component;

component color_8bit_24bit_1920_1080 is
	port( en, VS, vid: in std_logic;
		  hcount: in std_logic_vector(11 downto 0);
		  vcount: in std_logic_vector(10 downto 0);
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

signal clk_fast_sig, en_sig, vid_sig, VS_sig, HS_sig: std_logic;
signal hcount_sig: std_logic_vector(11 downto 0);
signal vcount_sig: std_logic_vector(10 downto 0);
signal pixel_sig: std_logic_vector(7 downto 0);
signal addr_sig: std_logic_vector(17 downto 0);

--signal rst_sig: std_logic;
signal data_sig: std_logic_vector(23 downto 0);

begin

clk_0: clk_148MHz port map( clk_in => clk,
                                   clk_148_out => en_sig);
                                   --clk_200_out => clk_fast_sig);

picture_0: picture port map(rom_clk => en_sig,
							rom_addr => addr_sig,
							rom_dout => pixel_sig );

vga_ctrl_0: vga_ctrl_1920_1080 port map(--clk => clk_fast_sig,
							  en => en_sig,
							  vid => vid_sig,
							  HS => HS_sig,
							  VS => VS_sig,
							  hcount => hcount_sig,
							  vcount => vcount_sig);

color_8_24_0: color_8bit_24bit_1920_1080 port map(--clk => clk_fast_sig,
									  en => en_sig,
									  vid => vid_sig,
									  VS => VS_sig,
									  hcount => hcount_sig,
									  vcount => vcount_sig,
									  color_8 => pixel_sig,
									  color_24 => data_sig,
									  addr => addr_sig);
									  
rgb2dvi_0: rgb2dvi port map(SerialClk => clk_fast_sig,
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
                            
--data_24 <= data_sig;
end top_arch;
