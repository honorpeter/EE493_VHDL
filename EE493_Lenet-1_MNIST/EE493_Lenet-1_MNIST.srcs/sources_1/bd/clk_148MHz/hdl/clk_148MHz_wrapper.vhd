--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sat Apr  6 01:18:33 2019
--Host        : MSI running 64-bit major release  (build 9200)
--Command     : generate_target clk_148MHz_wrapper.bd
--Design      : clk_148MHz_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_148MHz_wrapper is
  port (
    clk_148_out : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );
end clk_148MHz_wrapper;

architecture STRUCTURE of clk_148MHz_wrapper is
  component clk_148MHz is
  port (
    clk_in : in STD_LOGIC;
    clk_148_out : out STD_LOGIC
  );
  end component clk_148MHz;
begin
clk_148MHz_i: component clk_148MHz
     port map (
      clk_148_out => clk_148_out,
      clk_in => clk_in
    );
end STRUCTURE;
