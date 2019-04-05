// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr  4 20:44:44 2019
// Host        : DESKTOP-L28RN3T running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/bd/clk_40MHz/ip/clk_40MHz_clk_wiz_0_0/clk_40MHz_clk_wiz_0_0_stub.v
// Design      : clk_40MHz_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_40MHz_clk_wiz_0_0(clk_out1, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_in1" */;
  output clk_out1;
  input clk_in1;
endmodule