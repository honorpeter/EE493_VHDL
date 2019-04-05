--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Fri Apr  5 17:04:11 2019
--Host        : DESKTOP-L28RN3T running 64-bit major release  (build 9200)
--Command     : generate_target clk_74MHz_wrapper.bd
--Design      : clk_74MHz_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_74MHz_wrapper is
  port (
    clk_74_out : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );
end clk_74MHz_wrapper;

architecture STRUCTURE of clk_74MHz_wrapper is
  component clk_74MHz is
  port (
    clk_in : in STD_LOGIC;
    clk_74_out : out STD_LOGIC
  );
  end component clk_74MHz;
begin
clk_74MHz_i: component clk_74MHz
     port map (
      clk_74_out => clk_74_out,
      clk_in => clk_in
    );
end STRUCTURE;
