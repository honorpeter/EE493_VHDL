set_property SRC_FILE_INFO {cfile:G:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/img_hdmi/new/img_dvi_top.xdc rfile:../../../EE493_Lab4.srcs/img_hdmi/new/img_dvi_top.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L12N_T1_MRCC_35 Sch=btn[0]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H17   IOSTANDARD TMDS_33     } [get_ports { TMDS_clk_n }]; #IO_L13N_T2_MRCC_35 Sch=hdmi_tx_clk_n
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD TMDS_33     } [get_ports  TMDS_clk_p }]; #IO_L13P_T2_MRCC_35 Sch=hdmi_tx_clk_p
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D20   IOSTANDARD TMDS_33     } [get_ports { TMDS_data_n[0] }]; #IO_L4N_T0_35 Sch=hdmi_tx_n[0]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D19   IOSTANDARD TMDS_33     } [get_ports { TMDS_data_p[0] }]; #IO_L4P_T0_35 Sch=hdmi_tx_p[0]
