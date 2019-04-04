--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Wed Apr  3 17:47:19 2019
--Host        : DESKTOP-L28RN3T running 64-bit major release  (build 9200)
--Command     : generate_target image_rom_wrapper.bd
--Design      : image_rom_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity image_rom_wrapper is
  port (
    image_rom_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    image_rom_clk : in STD_LOGIC;
    image_rom_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end image_rom_wrapper;

architecture STRUCTURE of image_rom_wrapper is
  component image_rom is
  port (
    image_rom_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    image_rom_clk : in STD_LOGIC;
    image_rom_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component image_rom;
begin
image_rom_i: component image_rom
     port map (
      image_rom_addr(17 downto 0) => image_rom_addr(17 downto 0),
      image_rom_clk => image_rom_clk,
      image_rom_dout(7 downto 0) => image_rom_dout(7 downto 0)
    );
end STRUCTURE;
