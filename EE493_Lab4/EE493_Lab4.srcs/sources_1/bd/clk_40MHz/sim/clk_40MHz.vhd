--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Apr  4 21:22:43 2019
--Host        : DESKTOP-L28RN3T running 64-bit major release  (build 9200)
--Command     : generate_target clk_40MHz.bd
--Design      : clk_40MHz
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_40MHz is
  port (
    clk_40_in : in STD_LOGIC;
    clk_40_out : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of clk_40MHz : entity is "clk_40MHz,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clk_40MHz,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of clk_40MHz : entity is "clk_40MHz.hwdef";
end clk_40MHz;

architecture STRUCTURE of clk_40MHz is
  component clk_40MHz_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component clk_40MHz_clk_wiz_0_0;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_40_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_40_IN CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_40_in : signal is "XIL_INTERFACENAME CLK.CLK_40_IN, CLK_DOMAIN clk_40MHz_clk_in1_0, FREQ_HZ 125000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of clk_40_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_40_OUT CLK";
  attribute X_INTERFACE_PARAMETER of clk_40_out : signal is "XIL_INTERFACENAME CLK.CLK_40_OUT, CLK_DOMAIN /clk_40_clk_out1, FREQ_HZ 40000000, PHASE 0.0";
begin
  clk_40_out <= clk_wiz_0_clk_out1;
  clk_in1_0_1 <= clk_40_in;
clk_40: component clk_40MHz_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_0_1,
      clk_out1 => clk_wiz_0_clk_out1
    );
end STRUCTURE;
