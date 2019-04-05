--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Apr  4 22:32:44 2019
--Host        : DESKTOP-L28RN3T running 64-bit major release  (build 9200)
--Command     : generate_target clk_40_200MHz.bd
--Design      : clk_40_200MHz
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_40_200MHz is
  port (
    clk_200_out : out STD_LOGIC;
    clk_40_out : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of clk_40_200MHz : entity is "clk_40_200MHz,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clk_40_200MHz,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute hw_handoff : string;
  attribute hw_handoff of clk_40_200MHz : entity is "clk_40_200MHz.hwdef";
end clk_40_200MHz;

architecture STRUCTURE of clk_40_200MHz is
  component clk_40_200MHz_clk_wiz_0_1 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_200_out : out STD_LOGIC;
    clk_40_out : out STD_LOGIC
  );
  end component clk_40_200MHz_clk_wiz_0_1;
  signal clk_40_200_clk_200_out : STD_LOGIC;
  signal clk_40_200_clk_40_out : STD_LOGIC;
  signal clk_in1_1_1 : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk_200_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_200_OUT CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk_200_out : signal is "XIL_INTERFACENAME CLK.CLK_200_OUT, CLK_DOMAIN /clk_40_200_clk_out1, FREQ_HZ 200000000, PHASE 0.0";
  attribute x_interface_info of clk_40_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_40_OUT CLK";
  attribute x_interface_parameter of clk_40_out : signal is "XIL_INTERFACENAME CLK.CLK_40_OUT, CLK_DOMAIN /clk_40_200_clk_out1, FREQ_HZ 40000000, PHASE 0.0";
  attribute x_interface_info of clk_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK";
  attribute x_interface_parameter of clk_in : signal is "XIL_INTERFACENAME CLK.CLK_IN, CLK_DOMAIN clk_40_200MHz_clk_in1_1, FREQ_HZ 125000000, PHASE 0.000";
begin
  clk_200_out <= clk_40_200_clk_200_out;
  clk_40_out <= clk_40_200_clk_40_out;
  clk_in1_1_1 <= clk_in;
clk_40_200: component clk_40_200MHz_clk_wiz_0_1
     port map (
      clk_200_out => clk_40_200_clk_200_out,
      clk_40_out => clk_40_200_clk_40_out,
      clk_in1 => clk_in1_1_1
    );
end STRUCTURE;
