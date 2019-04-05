--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Apr  4 21:22:43 2019
--Host        : DESKTOP-L28RN3T running 64-bit major release  (build 9200)
--Command     : generate_target clk_40MHz_wrapper.bd
--Design      : clk_40MHz_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_40MHz_wrapper is
  port (
    clk_40_in : in STD_LOGIC;
    clk_40_out : out STD_LOGIC
  );
end clk_40MHz_wrapper;

architecture STRUCTURE of clk_40MHz_wrapper is
  component clk_40MHz is
  port (
    clk_40_in : in STD_LOGIC;
    clk_40_out : out STD_LOGIC
  );
  end component clk_40MHz;
begin
clk_40MHz_i: component clk_40MHz
     port map (
      clk_40_in => clk_40_in,
      clk_40_out => clk_40_out
    );
end STRUCTURE;
