--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Wed Apr  3 23:55:35 2019
--Host        : DESKTOP-L28RN3T running 64-bit major release  (build 9200)
--Command     : generate_target picture.bd
--Design      : picture
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity picture is
  port (
    rom_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    rom_clk : in STD_LOGIC;
    rom_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of picture : entity is "picture,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=picture,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of picture : entity is "picture.hwdef";
end picture;

architecture STRUCTURE of picture is
  component picture_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 17 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component picture_blk_mem_gen_0_0;
  signal BRAM_PORTA_0_0_ADDR : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal BRAM_PORTA_0_0_CLK : STD_LOGIC;
  signal BRAM_PORTA_0_0_DOUT : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rom_clk : signal is "xilinx.com:interface:bram:1.0 rom CLK";
  attribute X_INTERFACE_INFO of rom_addr : signal is "xilinx.com:interface:bram:1.0 rom ADDR";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rom_addr : signal is "XIL_INTERFACENAME rom, MASTER_TYPE OTHER, MEM_ECC NONE, MEM_SIZE 230400, MEM_WIDTH 8, READ_WRITE_MODE READ_ONLY";
  attribute X_INTERFACE_INFO of rom_dout : signal is "xilinx.com:interface:bram:1.0 rom DOUT";
begin
  BRAM_PORTA_0_0_ADDR(17 downto 0) <= rom_addr(17 downto 0);
  BRAM_PORTA_0_0_CLK <= rom_clk;
  rom_dout(7 downto 0) <= BRAM_PORTA_0_0_DOUT(7 downto 0);
picture: component picture_blk_mem_gen_0_0
     port map (
      addra(17 downto 0) => BRAM_PORTA_0_0_ADDR(17 downto 0),
      clka => BRAM_PORTA_0_0_CLK,
      douta(7 downto 0) => BRAM_PORTA_0_0_DOUT(7 downto 0)
    );
end STRUCTURE;
