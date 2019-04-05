--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Fri Apr  5 00:03:08 2019
--Host        : MSI running 64-bit major release  (build 9200)
--Command     : generate_target clk_40_200MHz_wrapper.bd
--Design      : clk_40_200MHz_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_40_200MHz_wrapper is
  port (
    clk_200_out : out STD_LOGIC;
    clk_40_out : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );
end clk_40_200MHz_wrapper;

architecture STRUCTURE of clk_40_200MHz_wrapper is
  component clk_40_200MHz is
  port (
    clk_in : in STD_LOGIC;
    clk_200_out : out STD_LOGIC;
    clk_40_out : out STD_LOGIC
  );
  end component clk_40_200MHz;
begin
clk_40_200MHz_i: component clk_40_200MHz
     port map (
      clk_200_out => clk_200_out,
      clk_40_out => clk_40_out,
      clk_in => clk_in
    );
end STRUCTURE;
