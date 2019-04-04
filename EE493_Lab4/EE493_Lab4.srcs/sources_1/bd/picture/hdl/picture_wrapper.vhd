--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Wed Apr  3 23:55:35 2019
--Host        : DESKTOP-L28RN3T running 64-bit major release  (build 9200)
--Command     : generate_target picture_wrapper.bd
--Design      : picture_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity picture_wrapper is
  port (
    rom_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    rom_clk : in STD_LOGIC;
    rom_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end picture_wrapper;

architecture STRUCTURE of picture_wrapper is
  component picture is
  port (
    rom_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    rom_clk : in STD_LOGIC;
    rom_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component picture;
begin
picture_i: component picture
     port map (
      rom_addr(17 downto 0) => rom_addr(17 downto 0),
      rom_clk => rom_clk,
      rom_dout(7 downto 0) => rom_dout(7 downto 0)
    );
end STRUCTURE;
