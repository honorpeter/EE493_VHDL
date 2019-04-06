--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Sat Apr  6 01:18:33 2019
--Host        : MSI running 64-bit major release  (build 9200)
--Command     : generate_target clk_148MHz.bd
--Design      : clk_148MHz
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_148MHz is
  port (
    clk_148_out : out STD_LOGIC;
    clk_in : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of clk_148MHz : entity is "clk_148MHz,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=clk_148MHz,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of clk_148MHz : entity is "clk_148MHz.hwdef";
end clk_148MHz;

architecture STRUCTURE of clk_148MHz is
  component clk_148MHz_clk_wiz_0_0 is
  port (
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC
  );
  end component clk_148MHz_clk_wiz_0_0;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_148_out : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_148_OUT CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_148_out : signal is "XIL_INTERFACENAME CLK.CLK_148_OUT, CLK_DOMAIN /clk_148_clk_out1, FREQ_HZ 148500000, PHASE 0.0";
  attribute X_INTERFACE_INFO of clk_in : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK";
  attribute X_INTERFACE_PARAMETER of clk_in : signal is "XIL_INTERFACENAME CLK.CLK_IN, CLK_DOMAIN clk_148MHz_clk_in1_0, FREQ_HZ 125000000, PHASE 0.000";
begin
  clk_148_out <= clk_wiz_0_clk_out1;
  clk_in1_0_1 <= clk_in;
clk_148: component clk_148MHz_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_0_1,
      clk_out1 => clk_wiz_0_clk_out1
    );
end STRUCTURE;
