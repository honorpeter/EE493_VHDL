--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sun Mar 31 17:03:37 2019
--Host        : MSI running 64-bit major release  (build 9200)
--Command     : generate_target picture_wrapper.bd
--Design      : picture_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity picture is
  port (
    addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    clk : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end picture;

architecture STRUCTURE of picture is
  component picture is
  port (
    BRAM_PORTA_0_addr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    BRAM_PORTA_0_clk : in STD_LOGIC;
    BRAM_PORTA_0_dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component picture;
begin
picture_i: component picture
     port map (
      BRAM_PORTA_0_addr(17 downto 0) => addr(17 downto 0),
      BRAM_PORTA_0_clk => clk,
      BRAM_PORTA_0_dout(7 downto 0) => dout(7 downto 0)
    );
end STRUCTURE;
