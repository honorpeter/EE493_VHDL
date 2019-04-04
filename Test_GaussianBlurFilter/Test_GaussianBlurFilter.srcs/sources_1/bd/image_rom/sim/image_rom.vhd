--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Wed Apr  3 17:47:19 2019
--Host        : DESKTOP-L28RN3T running 64-bit major release  (build 9200)
--Command     : generate_target image_rom.bd
--Design      : image_rom
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_rom is
  port (
    image_rom_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    image_rom_clk : in STD_LOGIC;
    image_rom_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of image_rom : entity is "image_rom,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=image_rom,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of image_rom : entity is "image_rom.hwdef";
end image_rom;

architecture STRUCTURE of image_rom is
  component image_rom_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component image_rom_blk_mem_gen_0_0;
  signal BRAM_PORTA_0_1_ADDR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal BRAM_PORTA_0_1_CLK : STD_LOGIC;
  signal BRAM_PORTA_0_1_DOUT : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of image_rom_clk : signal is "xilinx.com:interface:bram:1.0 image_rom ";
  attribute X_INTERFACE_INFO of image_rom_addr : signal is "xilinx.com:interface:bram:1.0 image_rom ";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of image_rom_addr : signal is "XIL_INTERFACENAME image_rom, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 230400, MEM_WIDTH 8";
  attribute X_INTERFACE_INFO of image_rom_dout : signal is "xilinx.com:interface:bram:1.0 image_rom ";
begin
  BRAM_PORTA_0_1_ADDR(17 downto 0) <= image_rom_addr(17 downto 0);
  BRAM_PORTA_0_1_CLK <= image_rom_clk;
  image_rom_dout(7 downto 0) <= BRAM_PORTA_0_1_DOUT(7 downto 0);
blk_mem_gen_0: component image_rom_blk_mem_gen_0_0
     port map (
      addra(17 downto 0) => BRAM_PORTA_0_1_ADDR(17 downto 0),
      clka => BRAM_PORTA_0_1_CLK,
      douta(7 downto 0) => BRAM_PORTA_0_1_DOUT(7 downto 0)
    );
end STRUCTURE;
