// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Apr  8 01:14:34 2019
// Host        : MSI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/Documents/EE493_VHDL/EE493_Lenet-1_MNIST/EE493_Lenet-1_MNIST.srcs/sources_1/bd/sc7z010_demo/ip/sc7z010_demo_axi_bram_ctrl_0_0/sc7z010_demo_axi_bram_ctrl_0_0_sim_netlist.v
// Design      : sc7z010_demo_axi_bram_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sc7z010_demo_axi_bram_ctrl_0_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module sc7z010_demo_axi_bram_ctrl_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN sc7z010_demo_processing_system7_0_0_FCLK_CLK0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 12, ADDR_WIDTH 13, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN sc7z010_demo_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input [11:0]s_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [12:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [11:0]s_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [11:0]s_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [12:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [11:0]s_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE WRITE_ONLY" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) output [3:0]bram_we_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) output [12:0]bram_addr_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) output [31:0]bram_wrdata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) input [31:0]bram_rddata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_WRITE_MODE READ_ONLY" *) output bram_rst_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) output bram_clk_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) output bram_en_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) output [3:0]bram_we_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) output [12:0]bram_addr_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) output [31:0]bram_wrdata_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) input [31:0]bram_rddata_b;

  wire [12:0]bram_addr_a;
  wire [12:0]bram_addr_b;
  wire bram_clk_a;
  wire bram_clk_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_a;
  wire [31:0]bram_rddata_b;
  wire bram_rst_a;
  wire bram_rst_b;
  wire [3:0]bram_we_a;
  wire [3:0]bram_we_b;
  wire [31:0]bram_wrdata_a;
  wire [31:0]bram_wrdata_b;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;

  (* C_BRAM_ADDR_WIDTH = "11" *) 
  (* C_BRAM_INST_MODE = "EXTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "2048" *) 
  (* C_SELECT_XPM = "1" *) 
  (* C_SINGLE_PORT_BRAM = "0" *) 
  (* C_S_AXI_ADDR_WIDTH = "13" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_ID_WIDTH = "12" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  sc7z010_demo_axi_bram_ctrl_0_0_axi_bram_ctrl U0
       (.bram_addr_a(bram_addr_a),
        .bram_addr_b(bram_addr_b),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(bram_clk_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b(bram_rddata_b),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(bram_rst_b),
        .bram_we_a(bram_we_a),
        .bram_we_b(bram_we_b),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(bram_wrdata_b),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module sc7z010_demo_axi_bram_ctrl_0_0_SRL_FIFO
   (Data_Exists_DFF_0,
    E,
    D,
    bid_gets_fifo_load,
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg ,
    axi_wready_int_mod_reg,
    s_axi_aresetn,
    s_axi_aclk,
    bram_addr_ld_en,
    \bvalid_cnt_reg[1] ,
    bid_gets_fifo_load_d1,
    Q,
    axi_awaddr_full,
    s_axi_awid,
    \bvalid_cnt_reg[1]_0 ,
    axi_bvalid_int_reg,
    bvalid_cnt,
    out,
    \GEN_AW_DUAL.wr_addr_sm_cs_reg ,
    aw_active,
    \bvalid_cnt_reg[2] ,
    \GEN_AWREADY.axi_aresetn_d3_reg ,
    s_axi_bready,
    axi_bvalid_int_reg_0,
    s_axi_wvalid,
    s_axi_wlast,
    s_axi_awvalid,
    s_axi_awready,
    axi_awlen_pipe_1_or_2,
    curr_awlen_reg_1_or_2,
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ,
    last_data_ack_mod,
    axi_wr_burst);
  output Data_Exists_DFF_0;
  output [0:0]E;
  output [11:0]D;
  output bid_gets_fifo_load;
  output \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg ;
  output axi_wready_int_mod_reg;
  input s_axi_aresetn;
  input s_axi_aclk;
  input bram_addr_ld_en;
  input \bvalid_cnt_reg[1] ;
  input bid_gets_fifo_load_d1;
  input [11:0]Q;
  input axi_awaddr_full;
  input [11:0]s_axi_awid;
  input \bvalid_cnt_reg[1]_0 ;
  input axi_bvalid_int_reg;
  input [2:0]bvalid_cnt;
  input [2:0]out;
  input \GEN_AW_DUAL.wr_addr_sm_cs_reg ;
  input aw_active;
  input \bvalid_cnt_reg[2] ;
  input \GEN_AWREADY.axi_aresetn_d3_reg ;
  input s_axi_bready;
  input axi_bvalid_int_reg_0;
  input s_axi_wvalid;
  input s_axi_wlast;
  input s_axi_awvalid;
  input s_axi_awready;
  input axi_awlen_pipe_1_or_2;
  input curr_awlen_reg_1_or_2;
  input \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ;
  input last_data_ack_mod;
  input axi_wr_burst;

  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_3_n_0 ;
  wire \Addr_Counters[0].MUXCY_L_I_i_4_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire [11:0]D;
  wire D_0;
  wire Data_Exists_DFF_0;
  wire Data_Exists_DFF_i_2_n_0;
  wire Data_Exists_DFF_i_3_n_0;
  wire [0:0]E;
  wire \GEN_AWREADY.axi_aresetn_d3_reg ;
  wire \GEN_AW_DUAL.wr_addr_sm_cs_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_4_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg ;
  wire [11:0]Q;
  wire S;
  wire S0_out;
  wire S1_out;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire aw_active;
  wire axi_awaddr_full;
  wire axi_awlen_pipe_1_or_2;
  wire \axi_bid_int[11]_i_3_n_0 ;
  wire \axi_bid_int[11]_i_5_n_0 ;
  wire \axi_bid_int[11]_i_7_n_0 ;
  wire \axi_bid_int[11]_i_8_n_0 ;
  wire axi_bvalid_int_reg;
  wire axi_bvalid_int_reg_0;
  wire axi_wr_burst;
  wire axi_wready_int_mod_reg;
  wire [11:0]bid_fifo_ld;
  wire bid_fifo_not_empty;
  wire [11:0]bid_fifo_rd;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bram_addr_ld_en;
  wire [2:0]bvalid_cnt;
  wire \bvalid_cnt_reg[1] ;
  wire \bvalid_cnt_reg[1]_0 ;
  wire \bvalid_cnt_reg[2] ;
  wire curr_awlen_reg_1_or_2;
  wire last_data_ack_mod;
  wire [2:0]out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [11:0]s_axi_awid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(s_axi_aresetn));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT6 #(
    .INIT(64'h2A2A2A2280808088)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_3_n_0 ),
        .I5(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h80808088AAAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(bram_addr_ld_en),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_3_n_0 ),
        .I5(\Addr_Counters[0].MUXCY_L_I_i_4_n_0 ),
        .O(CI));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Addr_Counters[0].MUXCY_L_I_i_3 
       (.I0(bram_addr_ld_en),
        .I1(\Addr_Counters[2].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[3].FDRE_I_n_0 ),
        .I4(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \Addr_Counters[0].MUXCY_L_I_i_4 
       (.I0(\Addr_Counters[2].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[1].FDRE_I_n_0 ),
        .I3(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(\Addr_Counters[0].MUXCY_L_I_i_4_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(s_axi_aresetn));
  LUT6 #(
    .INIT(64'h2A2A2A2280808088)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_3_n_0 ),
        .I5(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(S1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(s_axi_aresetn));
  LUT6 #(
    .INIT(64'h2A2A2A2280808088)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_3_n_0 ),
        .I5(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(S0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(s_axi_aresetn));
  LUT6 #(
    .INIT(64'h2A2A2A2280808088)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[0].MUXCY_L_I_i_3_n_0 ),
        .I1(bid_fifo_not_empty),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_3_n_0 ),
        .I5(\Addr_Counters[3].FDRE_I_n_0 ),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D_0),
        .Q(bid_fifo_not_empty),
        .R(s_axi_aresetn));
  LUT6 #(
    .INIT(64'hFFFFBBBA0000AAAA)) 
    Data_Exists_DFF_i_1
       (.I0(bram_addr_ld_en),
        .I1(Data_Exists_DFF_i_2_n_0),
        .I2(Data_Exists_DFF_0),
        .I3(\axi_bid_int[11]_i_3_n_0 ),
        .I4(Data_Exists_DFF_i_3_n_0),
        .I5(bid_fifo_not_empty),
        .O(D_0));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    Data_Exists_DFF_i_2
       (.I0(bid_gets_fifo_load_d1),
        .I1(s_axi_bready),
        .I2(axi_bvalid_int_reg_0),
        .I3(bvalid_cnt[0]),
        .I4(bvalid_cnt[2]),
        .I5(bvalid_cnt[1]),
        .O(Data_Exists_DFF_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_3
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(Data_Exists_DFF_i_3_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[11]),
        .Q(bid_fifo_rd[11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(Q[11]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[11]),
        .O(bid_fifo_ld[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[10].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[10].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[1]),
        .Q(bid_fifo_rd[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[10].SRL16E_I_i_1 
       (.I0(Q[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[1]),
        .O(bid_fifo_ld[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[11].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[11].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[0]),
        .Q(bid_fifo_rd[0]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[11].SRL16E_I_i_1 
       (.I0(Q[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[0]),
        .O(bid_fifo_ld[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[10]),
        .Q(bid_fifo_rd[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[1].SRL16E_I_i_1 
       (.I0(Q[10]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[10]),
        .O(bid_fifo_ld[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[2].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[9]),
        .Q(bid_fifo_rd[9]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[2].SRL16E_I_i_1 
       (.I0(Q[9]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[9]),
        .O(bid_fifo_ld[9]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[3].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[3].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[8]),
        .Q(bid_fifo_rd[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[3].SRL16E_I_i_1 
       (.I0(Q[8]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[8]),
        .O(bid_fifo_ld[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[4].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[4].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[7]),
        .Q(bid_fifo_rd[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[4].SRL16E_I_i_1 
       (.I0(Q[7]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[7]),
        .O(bid_fifo_ld[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[5].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[5].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[6]),
        .Q(bid_fifo_rd[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[5].SRL16E_I_i_1 
       (.I0(Q[6]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[6]),
        .O(bid_fifo_ld[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[6].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[6].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[5]),
        .Q(bid_fifo_rd[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[6].SRL16E_I_i_1 
       (.I0(Q[5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[5]),
        .O(bid_fifo_ld[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[7].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[7].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[4]),
        .Q(bid_fifo_rd[4]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[7].SRL16E_I_i_1 
       (.I0(Q[4]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[4]),
        .O(bid_fifo_ld[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[8].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[8].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[3]),
        .Q(bid_fifo_rd[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[8].SRL16E_I_i_1 
       (.I0(Q[3]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[3]),
        .O(bid_fifo_ld[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[9].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[9].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld[2]),
        .Q(bid_fifo_rd[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FIFO_RAM[9].SRL16E_I_i_1 
       (.I0(Q[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[2]),
        .O(bid_fifo_ld[2]));
  LUT6 #(
    .INIT(64'hFFFFDDD5FFFFFFFF)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_3 
       (.I0(axi_awaddr_full),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_4_n_0 ),
        .I2(\GEN_AW_DUAL.wr_addr_sm_cs_reg ),
        .I3(aw_active),
        .I4(\bvalid_cnt_reg[2] ),
        .I5(\GEN_AWREADY.axi_aresetn_d3_reg ),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_4 
       (.I0(axi_awlen_pipe_1_or_2),
        .I1(curr_awlen_reg_1_or_2),
        .I2(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ),
        .I3(axi_awaddr_full),
        .I4(last_data_ack_mod),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[0]_i_1 
       (.I0(Q[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[0]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[10]_i_1 
       (.I0(Q[10]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[10]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFC00FC00FD00FFFF)) 
    \axi_bid_int[11]_i_1 
       (.I0(\axi_bid_int[11]_i_3_n_0 ),
        .I1(\bvalid_cnt_reg[1] ),
        .I2(bid_gets_fifo_load_d1),
        .I3(bid_fifo_not_empty),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(Data_Exists_DFF_0),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[11]_i_2 
       (.I0(Q[11]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[11]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[11]),
        .O(D[11]));
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_bid_int[11]_i_3 
       (.I0(bvalid_cnt[0]),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .O(\axi_bid_int[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAA2AFFFFFFFF)) 
    \axi_bid_int[11]_i_5 
       (.I0(bvalid_cnt[0]),
        .I1(s_axi_bready),
        .I2(axi_bvalid_int_reg_0),
        .I3(bid_fifo_not_empty),
        .I4(\bvalid_cnt_reg[1]_0 ),
        .I5(bram_addr_ld_en),
        .O(\axi_bid_int[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBBBBBBBAABA)) 
    \axi_bid_int[11]_i_6 
       (.I0(out[2]),
        .I1(\axi_bid_int[11]_i_7_n_0 ),
        .I2(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg ),
        .I3(axi_wready_int_mod_reg),
        .I4(out[1]),
        .I5(\axi_bid_int[11]_i_8_n_0 ),
        .O(Data_Exists_DFF_0));
  LUT5 #(
    .INIT(32'h0C080000)) 
    \axi_bid_int[11]_i_7 
       (.I0(out[1]),
        .I1(s_axi_wvalid),
        .I2(out[0]),
        .I3(axi_wready_int_mod_reg),
        .I4(s_axi_wlast),
        .O(\axi_bid_int[11]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \axi_bid_int[11]_i_8 
       (.I0(axi_wr_burst),
        .I1(out[0]),
        .O(\axi_bid_int[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[1]_i_1 
       (.I0(Q[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[1]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[2]_i_1 
       (.I0(Q[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[2]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[3]_i_1 
       (.I0(Q[3]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[3]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[3]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[4]_i_1 
       (.I0(Q[4]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[4]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[5]_i_1 
       (.I0(Q[5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[5]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[6]_i_1 
       (.I0(Q[6]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[6]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[7]_i_1 
       (.I0(Q[7]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[7]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[8]_i_1 
       (.I0(Q[8]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[8]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFFFFB8000000B8)) 
    \axi_bid_int[9]_i_1 
       (.I0(Q[9]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid[9]),
        .I3(Data_Exists_DFF_0),
        .I4(\axi_bid_int[11]_i_5_n_0 ),
        .I5(bid_fifo_rd[9]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h7F7F7F7F7F000000)) 
    axi_wready_int_mod_i_4
       (.I0(bvalid_cnt[1]),
        .I1(bvalid_cnt[0]),
        .I2(bvalid_cnt[2]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awready),
        .I5(aw_active),
        .O(axi_wready_int_mod_reg));
  LUT6 #(
    .INIT(64'h0000000404040404)) 
    bid_gets_fifo_load_d1_i_1
       (.I0(Data_Exists_DFF_0),
        .I1(bram_addr_ld_en),
        .I2(\bvalid_cnt_reg[1]_0 ),
        .I3(bid_fifo_not_empty),
        .I4(axi_bvalid_int_reg),
        .I5(bvalid_cnt[0]),
        .O(bid_gets_fifo_load));
endmodule

(* C_BRAM_ADDR_WIDTH = "11" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "zynq" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "2048" *) (* C_SELECT_XPM = "1" *) 
(* C_SINGLE_PORT_BRAM = "0" *) (* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
(* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_ID_WIDTH = "12" *) 
(* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "0" *) (* ORIG_REF_NAME = "axi_bram_ctrl" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module sc7z010_demo_axi_bram_ctrl_0_0_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [11:0]s_axi_awid;
  input [12:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [11:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [11:0]s_axi_arid;
  input [12:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [12:0]bram_addr_a;
  output [31:0]bram_wrdata_a;
  input [31:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [3:0]bram_we_b;
  output [12:0]bram_addr_b;
  output [31:0]bram_wrdata_b;
  input [31:0]bram_rddata_b;

  wire \<const0> ;
  wire [12:2]\^bram_addr_a ;
  wire [12:2]\^bram_addr_b ;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire bram_rst_b;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[12:2] = \^bram_addr_a [12:2];
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[12:2] = \^bram_addr_b [12:2];
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = s_axi_aclk;
  assign bram_rst_a = bram_rst_b;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  sc7z010_demo_axi_bram_ctrl_0_0_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.bram_addr_a(\^bram_addr_a ),
        .bram_addr_b(\^bram_addr_b ),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_rst_b(bram_rst_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[12:2]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[12:2]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl_top" *) 
module sc7z010_demo_axi_bram_ctrl_0_0_axi_bram_ctrl_top
   (s_axi_rvalid,
    s_axi_rlast,
    bram_rst_b,
    bram_addr_a,
    s_axi_bvalid,
    s_axi_bid,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    bram_addr_b,
    s_axi_rid,
    s_axi_rdata,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    bram_en_b,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_arlen,
    s_axi_aclk,
    s_axi_awlen,
    s_axi_awaddr,
    s_axi_bready,
    s_axi_awid,
    s_axi_wstrb,
    s_axi_awburst,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arid,
    bram_rddata_b,
    s_axi_arburst,
    s_axi_wlast,
    s_axi_arvalid);
  output s_axi_rvalid;
  output s_axi_rlast;
  output bram_rst_b;
  output [10:0]bram_addr_a;
  output s_axi_bvalid;
  output [11:0]s_axi_bid;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [31:0]bram_wrdata_a;
  output [10:0]bram_addr_b;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output bram_en_b;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_rready;
  input [7:0]s_axi_arlen;
  input s_axi_aclk;
  input [7:0]s_axi_awlen;
  input [10:0]s_axi_awaddr;
  input s_axi_bready;
  input [11:0]s_axi_awid;
  input [3:0]s_axi_wstrb;
  input [1:0]s_axi_awburst;
  input [31:0]s_axi_wdata;
  input [10:0]s_axi_araddr;
  input [11:0]s_axi_arid;
  input [31:0]bram_rddata_b;
  input [1:0]s_axi_arburst;
  input s_axi_wlast;
  input s_axi_arvalid;

  wire [10:0]bram_addr_a;
  wire [10:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire bram_rst_b;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  sc7z010_demo_axi_bram_ctrl_0_0_full_axi \GEN_AXI4.I_FULL_AXI 
       (.SR(bram_rst_b),
        .bram_addr_a(bram_addr_a),
        .bram_addr_b(bram_addr_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "full_axi" *) 
module sc7z010_demo_axi_bram_ctrl_0_0_full_axi
   (s_axi_rvalid,
    s_axi_rlast,
    SR,
    bram_addr_a,
    s_axi_bvalid,
    s_axi_bid,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    bram_addr_b,
    s_axi_rid,
    s_axi_rdata,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    bram_en_b,
    s_axi_aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_rready,
    s_axi_arlen,
    s_axi_aclk,
    s_axi_awlen,
    s_axi_awaddr,
    s_axi_bready,
    s_axi_awid,
    s_axi_wstrb,
    s_axi_awburst,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_arid,
    bram_rddata_b,
    s_axi_arburst,
    s_axi_wlast,
    s_axi_arvalid);
  output s_axi_rvalid;
  output s_axi_rlast;
  output [0:0]SR;
  output [10:0]bram_addr_a;
  output s_axi_bvalid;
  output [11:0]s_axi_bid;
  output bram_en_a;
  output [3:0]bram_we_a;
  output [31:0]bram_wrdata_a;
  output [10:0]bram_addr_b;
  output [11:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output bram_en_b;
  input s_axi_aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_rready;
  input [7:0]s_axi_arlen;
  input s_axi_aclk;
  input [7:0]s_axi_awlen;
  input [10:0]s_axi_awaddr;
  input s_axi_bready;
  input [11:0]s_axi_awid;
  input [3:0]s_axi_wstrb;
  input [1:0]s_axi_awburst;
  input [31:0]s_axi_wdata;
  input [10:0]s_axi_araddr;
  input [11:0]s_axi_arid;
  input [31:0]bram_rddata_b;
  input [1:0]s_axi_arburst;
  input s_axi_wlast;
  input s_axi_arvalid;

  wire I_WR_CHNL_n_36;
  wire [0:0]SR;
  wire axi_aresetn_d3;
  wire axi_aresetn_re_reg;
  wire [10:0]bram_addr_a;
  wire [10:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [31:0]bram_rddata_b;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [10:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  sc7z010_demo_axi_bram_ctrl_0_0_rd_chnl I_RD_CHNL
       (.\GEN_AWREADY.axi_aresetn_d3_reg (I_WR_CHNL_n_36),
        .Q(bram_addr_b[9:0]),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_aresetn_re_reg(axi_aresetn_re_reg),
        .bram_addr_b(bram_addr_b[10]),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_rst_b(SR),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
  sc7z010_demo_axi_bram_ctrl_0_0_wr_chnl I_WR_CHNL
       (.\GEN_AW_DUAL.aw_active_reg_0 (I_WR_CHNL_n_36),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_aresetn_re_reg(axi_aresetn_re_reg),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SR),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "rd_chnl" *) 
module sc7z010_demo_axi_bram_ctrl_0_0_rd_chnl
   (bram_rst_b,
    s_axi_rdata,
    s_axi_rlast,
    s_axi_rvalid,
    bram_en_b,
    Q,
    s_axi_arready,
    bram_addr_b,
    s_axi_rid,
    s_axi_araddr,
    s_axi_aclk,
    \GEN_AWREADY.axi_aresetn_d3_reg ,
    s_axi_rready,
    s_axi_aresetn,
    s_axi_arlen,
    s_axi_arburst,
    axi_aresetn_d3,
    s_axi_arvalid,
    axi_aresetn_re_reg,
    s_axi_arid,
    bram_rddata_b);
  output bram_rst_b;
  output [31:0]s_axi_rdata;
  output s_axi_rlast;
  output s_axi_rvalid;
  output bram_en_b;
  output [9:0]Q;
  output s_axi_arready;
  output [0:0]bram_addr_b;
  output [11:0]s_axi_rid;
  input [10:0]s_axi_araddr;
  input s_axi_aclk;
  input \GEN_AWREADY.axi_aresetn_d3_reg ;
  input s_axi_rready;
  input s_axi_aresetn;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input axi_aresetn_d3;
  input s_axi_arvalid;
  input axi_aresetn_re_reg;
  input [11:0]s_axi_arid;
  input [31:0]bram_rddata_b;

  wire \FSM_sequential_rd_data_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[1]_i_3_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[1]_i_4_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[1]_i_5_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[3]_i_3_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[3]_i_4_n_0 ;
  wire \FSM_sequential_rd_data_sm_cs[3]_i_5_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_rlast_sm_cs[2]_i_3_n_0 ;
  wire \GEN_ARREADY.axi_arready_int_i_1_n_0 ;
  wire \GEN_ARREADY.axi_early_arready_int_i_2_n_0 ;
  wire \GEN_ARREADY.axi_early_arready_int_i_3_n_0 ;
  wire \GEN_ARREADY.axi_early_arready_int_i_4_n_0 ;
  wire \GEN_AR_DUAL.ar_active_i_1_n_0 ;
  wire \GEN_AR_DUAL.ar_active_i_2_n_0 ;
  wire \GEN_AR_DUAL.ar_active_i_3_n_0 ;
  wire \GEN_AR_DUAL.ar_active_i_4_n_0 ;
  wire \GEN_AR_DUAL.rd_addr_sm_cs_i_1_n_0 ;
  wire \GEN_AR_DUAL.rd_addr_sm_cs_i_2_n_0 ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ;
  wire \GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ;
  wire \GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ;
  wire \GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2_n_0 ;
  wire \GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_3_n_0 ;
  wire \GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ;
  wire \GEN_AWREADY.axi_aresetn_d3_reg ;
  wire \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ;
  wire \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_int[11]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp2_full_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[0]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[10]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[11]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[11]_i_2_n_0 ;
  wire \GEN_RID.axi_rid_temp[11]_i_3_n_0 ;
  wire \GEN_RID.axi_rid_temp[1]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[2]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[3]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[4]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[5]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[6]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[7]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[8]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp[9]_i_1_n_0 ;
  wire \GEN_RID.axi_rid_temp_full_i_1_n_0 ;
  wire I_WRAP_BRST_n_0;
  wire I_WRAP_BRST_n_10;
  wire I_WRAP_BRST_n_11;
  wire I_WRAP_BRST_n_12;
  wire I_WRAP_BRST_n_13;
  wire I_WRAP_BRST_n_14;
  wire I_WRAP_BRST_n_15;
  wire I_WRAP_BRST_n_16;
  wire I_WRAP_BRST_n_17;
  wire I_WRAP_BRST_n_18;
  wire I_WRAP_BRST_n_19;
  wire I_WRAP_BRST_n_2;
  wire I_WRAP_BRST_n_20;
  wire I_WRAP_BRST_n_21;
  wire I_WRAP_BRST_n_22;
  wire I_WRAP_BRST_n_3;
  wire I_WRAP_BRST_n_5;
  wire I_WRAP_BRST_n_6;
  wire I_WRAP_BRST_n_7;
  wire I_WRAP_BRST_n_8;
  wire I_WRAP_BRST_n_9;
  wire [9:0]Q;
  wire act_rd_burst;
  wire act_rd_burst_i_1_n_0;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire act_rd_burst_two_i_1_n_0;
  wire act_rd_burst_two_i_3_n_0;
  wire act_rd_burst_two_i_4_n_0;
  wire act_rd_burst_two_i_5_n_0;
  wire ar_active;
  wire araddr_pipe_ld43_out;
  wire axi_araddr_full;
  wire [1:0]axi_arburst_pipe;
  wire axi_aresetn_d3;
  wire axi_aresetn_re_reg;
  wire [11:0]axi_arid_pipe;
  wire [7:0]axi_arlen_pipe;
  wire axi_arlen_pipe_1_or_2;
  wire axi_arready_int;
  wire [1:1]axi_arsize_pipe;
  wire axi_arsize_pipe_max;
  wire axi_arsize_pipe_max_i_1_n_0;
  wire axi_b2b_brst;
  wire axi_b2b_brst_i_1_n_0;
  wire axi_b2b_brst_i_2_n_0;
  wire axi_b2b_brst_i_3_n_0;
  wire axi_early_arready_int;
  wire axi_rd_burst;
  wire axi_rd_burst_i_1_n_0;
  wire axi_rd_burst_i_2_n_0;
  wire axi_rd_burst_i_3_n_0;
  wire axi_rd_burst_two_i_1_n_0;
  wire axi_rd_burst_two_reg_n_0;
  wire axi_rdata_en;
  wire [11:0]axi_rid_temp;
  wire [11:0]axi_rid_temp2;
  wire [11:0]axi_rid_temp20_in;
  wire axi_rid_temp2_full;
  wire axi_rid_temp_full;
  wire axi_rid_temp_full_d1;
  wire axi_rlast_int_i_1_n_0;
  wire axi_rlast_int_i_2_n_0;
  wire axi_rlast_int_i_3_n_0;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_clr_ok_i_1_n_0;
  wire axi_rvalid_clr_ok_i_2_n_0;
  wire axi_rvalid_clr_ok_i_3_n_0;
  wire axi_rvalid_int_i_1_n_0;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire [0:0]bram_addr_b;
  wire bram_addr_ld_en;
  wire bram_en_b;
  wire bram_en_int_i_10_n_0;
  wire bram_en_int_i_11_n_0;
  wire bram_en_int_i_12_n_0;
  wire bram_en_int_i_1_n_0;
  wire bram_en_int_i_2_n_0;
  wire bram_en_int_i_4_n_0;
  wire bram_en_int_i_5_n_0;
  wire bram_en_int_i_6_n_0;
  wire bram_en_int_i_7_n_0;
  wire bram_en_int_i_8_n_0;
  wire bram_en_int_i_9_n_0;
  wire bram_en_int_reg_i_3_n_0;
  wire [31:0]bram_rddata_b;
  wire bram_rst_b;
  wire [7:0]brst_cnt;
  wire \brst_cnt[0]_i_1_n_0 ;
  wire \brst_cnt[1]_i_1_n_0 ;
  wire \brst_cnt[2]_i_1_n_0 ;
  wire \brst_cnt[3]_i_1_n_0 ;
  wire \brst_cnt[4]_i_1_n_0 ;
  wire \brst_cnt[4]_i_2_n_0 ;
  wire \brst_cnt[5]_i_1_n_0 ;
  wire \brst_cnt[6]_i_1_n_0 ;
  wire \brst_cnt[6]_i_2_n_0 ;
  wire \brst_cnt[7]_i_1_n_0 ;
  wire \brst_cnt[7]_i_2_n_0 ;
  wire \brst_cnt[7]_i_3_n_0 ;
  wire \brst_cnt[7]_i_4_n_0 ;
  wire brst_cnt_max;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire brst_one_i_1_n_0;
  wire brst_one_i_2_n_0;
  wire brst_zero;
  wire brst_zero_i_1_n_0;
  wire brst_zero_i_2_n_0;
  wire brst_zero_i_3_n_0;
  wire brst_zero_i_4_n_0;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire disable_b2b_brst_i_2_n_0;
  wire disable_b2b_brst_i_3_n_0;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire end_brst_rd_clr_cmb;
  wire end_brst_rd_clr_i_1_n_0;
  wire end_brst_rd_i_1_n_0;
  wire last_bram_addr;
  wire last_bram_addr0;
  wire last_bram_addr_i_2_n_0;
  wire last_bram_addr_i_3_n_0;
  wire last_bram_addr_i_4_n_0;
  wire last_bram_addr_i_5_n_0;
  wire last_bram_addr_i_6_n_0;
  wire last_bram_addr_i_7_n_0;
  wire last_bram_addr_i_8_n_0;
  wire no_ar_ack;
  wire no_ar_ack_i_1_n_0;
  wire no_ar_ack_i_2_n_0;
  wire no_ar_ack_i_3_n_0;
  wire no_ar_ack_i_4_n_0;
  wire p_13_out;
  wire p_26_out;
  wire p_48_out;
  wire p_4_out;
  wire p_9_out;
  wire pend_rd_op;
  wire pend_rd_op_i_1_n_0;
  wire pend_rd_op_i_2_n_0;
  wire pend_rd_op_i_4_n_0;
  wire pend_rd_op_i_5_n_0;
  wire pend_rd_op_i_6_n_0;
  wire pend_rd_op_i_7_n_0;
  wire pend_rd_op_i_8_n_0;
  wire pend_rd_op_reg_i_3_n_0;
  wire rd_addr_sm_cs;
  (* RTL_KEEP = "yes" *) wire [3:0]rd_data_sm_cs;
  wire [3:0]rd_data_sm_ns;
  wire [31:0]rd_skid_buf;
  wire rd_skid_buf_ld;
  wire rd_skid_buf_ld_cmb;
  wire rd_skid_buf_ld_reg;
  wire rddata_mux_sel;
  wire rddata_mux_sel_cmb;
  wire rddata_mux_sel_i_1_n_0;
  wire rddata_mux_sel_i_3_n_0;
  (* RTL_KEEP = "yes" *) wire [2:0]rlast_sm_cs;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [11:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire [11:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;

  LUT5 #(
    .INIT(32'h000AABAB)) 
    \FSM_sequential_rd_data_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_rd_data_sm_cs[0]_i_2_n_0 ),
        .I1(\FSM_sequential_rd_data_sm_cs[0]_i_3_n_0 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .O(rd_data_sm_ns[0]));
  LUT6 #(
    .INIT(64'h8880FFFF8888FFFF)) 
    \FSM_sequential_rd_data_sm_cs[0]_i_2 
       (.I0(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(pend_rd_op),
        .I3(bram_addr_ld_en),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[2]),
        .O(\FSM_sequential_rd_data_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDD0FDD0FDD0F000F)) 
    \FSM_sequential_rd_data_sm_cs[0]_i_3 
       (.I0(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(\FSM_sequential_rlast_sm_cs[2]_i_2_n_0 ),
        .I3(rd_data_sm_cs[2]),
        .I4(act_rd_burst),
        .I5(act_rd_burst_two),
        .O(\FSM_sequential_rd_data_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AEAABEBA)) 
    \FSM_sequential_rd_data_sm_cs[1]_i_1 
       (.I0(I_WRAP_BRST_n_0),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(\FSM_sequential_rd_data_sm_cs[1]_i_3_n_0 ),
        .I4(\FSM_sequential_rd_data_sm_cs[3]_i_4_n_0 ),
        .I5(\FSM_sequential_rd_data_sm_cs[1]_i_4_n_0 ),
        .O(rd_data_sm_ns[1]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \FSM_sequential_rd_data_sm_cs[1]_i_3 
       (.I0(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I1(axi_arsize_pipe_max),
        .I2(disable_b2b_brst),
        .I3(axi_arlen_pipe_1_or_2),
        .I4(\GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .I5(axi_araddr_full),
        .O(\FSM_sequential_rd_data_sm_cs[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00050D0D)) 
    \FSM_sequential_rd_data_sm_cs[1]_i_4 
       (.I0(rd_data_sm_cs[1]),
        .I1(axi_rd_burst_two_reg_n_0),
        .I2(rd_data_sm_cs[0]),
        .I3(\FSM_sequential_rd_data_sm_cs[1]_i_5_n_0 ),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(\FSM_sequential_rd_data_sm_cs[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rd_data_sm_cs[1]_i_5 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .O(\FSM_sequential_rd_data_sm_cs[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AABA)) 
    \FSM_sequential_rd_data_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_rd_data_sm_cs[2]_i_2_n_0 ),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(\FSM_sequential_rd_data_sm_cs[3]_i_4_n_0 ),
        .I4(\FSM_sequential_rd_data_sm_cs[2]_i_3_n_0 ),
        .I5(rd_data_sm_cs[3]),
        .O(rd_data_sm_ns[2]));
  LUT6 #(
    .INIT(64'h333373733333737F)) 
    \FSM_sequential_rd_data_sm_cs[2]_i_2 
       (.I0(\FSM_sequential_rd_data_sm_cs[1]_i_3_n_0 ),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(axi_rd_burst_two_reg_n_0),
        .I4(rd_data_sm_cs[2]),
        .I5(axi_rd_burst),
        .O(\FSM_sequential_rd_data_sm_cs[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000010F01FF)) 
    \FSM_sequential_rd_data_sm_cs[2]_i_3 
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(axi_rd_burst_two_reg_n_0),
        .I5(rd_data_sm_cs[0]),
        .O(\FSM_sequential_rd_data_sm_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555575555040604)) 
    \FSM_sequential_rd_data_sm_cs[3]_i_1 
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I4(rd_data_sm_cs[2]),
        .I5(\FSM_sequential_rd_data_sm_cs[3]_i_3_n_0 ),
        .O(\FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00080C0800000000)) 
    \FSM_sequential_rd_data_sm_cs[3]_i_2 
       (.I0(\FSM_sequential_rd_data_sm_cs[3]_i_4_n_0 ),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[1]),
        .I4(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I5(rd_data_sm_cs[0]),
        .O(rd_data_sm_ns[3]));
  LUT5 #(
    .INIT(32'hCF020302)) 
    \FSM_sequential_rd_data_sm_cs[3]_i_3 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[2]),
        .I2(\FSM_sequential_rd_data_sm_cs[3]_i_5_n_0 ),
        .I3(bram_addr_ld_en),
        .I4(rd_data_sm_cs[0]),
        .O(\FSM_sequential_rd_data_sm_cs[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    \FSM_sequential_rd_data_sm_cs[3]_i_4 
       (.I0(bram_addr_ld_en),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid),
        .I3(act_rd_burst_two),
        .I4(act_rd_burst),
        .O(\FSM_sequential_rd_data_sm_cs[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000800080)) 
    \FSM_sequential_rd_data_sm_cs[3]_i_5 
       (.I0(rd_data_sm_cs[0]),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid),
        .I3(brst_zero),
        .I4(axi_b2b_brst),
        .I5(end_brst_rd),
        .O(\FSM_sequential_rd_data_sm_cs[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "full_pipe:0011,full_throttle:0100,sec_addr:0010,sng_addr:0001,idle:0000,last_data:0111,last_data_ar_pend:1000,last_throttle:0110,last_addr:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[0]),
        .Q(rd_data_sm_cs[0]),
        .R(bram_rst_b));
  (* FSM_ENCODED_STATES = "full_pipe:0011,full_throttle:0100,sec_addr:0010,sng_addr:0001,idle:0000,last_data:0111,last_data_ar_pend:1000,last_throttle:0110,last_addr:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[1]),
        .Q(rd_data_sm_cs[1]),
        .R(bram_rst_b));
  (* FSM_ENCODED_STATES = "full_pipe:0011,full_throttle:0100,sec_addr:0010,sng_addr:0001,idle:0000,last_data:0111,last_data_ar_pend:1000,last_throttle:0110,last_addr:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[2]),
        .Q(rd_data_sm_cs[2]),
        .R(bram_rst_b));
  (* FSM_ENCODED_STATES = "full_pipe:0011,full_throttle:0100,sec_addr:0010,sng_addr:0001,idle:0000,last_data:0111,last_data_ar_pend:1000,last_throttle:0110,last_addr:0101" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[3]),
        .Q(rd_data_sm_cs[3]),
        .R(bram_rst_b));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \FSM_sequential_rlast_sm_cs[0]_i_1 
       (.I0(rlast_sm_cs[0]),
        .I1(rlast_sm_cs[2]),
        .I2(\FSM_sequential_rlast_sm_cs[0]_i_2_n_0 ),
        .I3(\FSM_sequential_rlast_sm_cs[2]_i_3_n_0 ),
        .I4(rlast_sm_cs[0]),
        .O(\FSM_sequential_rlast_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001010105050505)) 
    \FSM_sequential_rlast_sm_cs[0]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(act_rd_burst_two),
        .I2(axi_rd_burst_two_reg_n_0),
        .I3(s_axi_rvalid),
        .I4(s_axi_rready),
        .I5(axi_rd_burst),
        .O(\FSM_sequential_rlast_sm_cs[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    \FSM_sequential_rlast_sm_cs[1]_i_1 
       (.I0(rlast_sm_cs[0]),
        .I1(rlast_sm_cs[2]),
        .I2(\FSM_sequential_rlast_sm_cs[1]_i_2_n_0 ),
        .I3(\FSM_sequential_rlast_sm_cs[2]_i_3_n_0 ),
        .I4(rlast_sm_cs[1]),
        .O(\FSM_sequential_rlast_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1515150015155555)) 
    \FSM_sequential_rlast_sm_cs[1]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(s_axi_rvalid),
        .I2(s_axi_rready),
        .I3(act_rd_burst_two),
        .I4(axi_rd_burst_two_reg_n_0),
        .I5(axi_rd_burst),
        .O(\FSM_sequential_rlast_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00C2FFFF00C20000)) 
    \FSM_sequential_rlast_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_rlast_sm_cs[2]_i_2_n_0 ),
        .I1(rlast_sm_cs[1]),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .I4(\FSM_sequential_rlast_sm_cs[2]_i_3_n_0 ),
        .I5(rlast_sm_cs[2]),
        .O(\FSM_sequential_rlast_sm_cs[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_rlast_sm_cs[2]_i_2 
       (.I0(axi_rd_burst),
        .I1(axi_rd_burst_two_reg_n_0),
        .O(\FSM_sequential_rlast_sm_cs[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0008888F00088880)) 
    \FSM_sequential_rlast_sm_cs[2]_i_3 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(rlast_sm_cs[1]),
        .I3(rlast_sm_cs[0]),
        .I4(rlast_sm_cs[2]),
        .I5(last_bram_addr),
        .O(\FSM_sequential_rlast_sm_cs[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_rlast_sm_cs[0]_i_1_n_0 ),
        .Q(rlast_sm_cs[0]),
        .R(bram_rst_b));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_rlast_sm_cs[1]_i_1_n_0 ),
        .Q(rlast_sm_cs[1]),
        .R(bram_rst_b));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_rlast_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_rlast_sm_cs[2]_i_1_n_0 ),
        .Q(rlast_sm_cs[2]),
        .R(bram_rst_b));
  LUT5 #(
    .INIT(32'hAAAAAEEE)) 
    \GEN_ARREADY.axi_arready_int_i_1 
       (.I0(p_9_out),
        .I1(axi_arready_int),
        .I2(s_axi_arvalid),
        .I3(axi_araddr_full),
        .I4(araddr_pipe_ld43_out),
        .O(\GEN_ARREADY.axi_arready_int_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAEA)) 
    \GEN_ARREADY.axi_arready_int_i_2 
       (.I0(axi_aresetn_re_reg),
        .I1(axi_araddr_full),
        .I2(bram_addr_ld_en),
        .I3(axi_early_arready_int),
        .O(p_9_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ARREADY.axi_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_ARREADY.axi_arready_int_i_1_n_0 ),
        .Q(axi_arready_int),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'h0000000000D10051)) 
    \GEN_ARREADY.axi_early_arready_int_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(brst_one),
        .I3(\GEN_ARREADY.axi_early_arready_int_i_2_n_0 ),
        .I4(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I5(\GEN_ARREADY.axi_early_arready_int_i_3_n_0 ),
        .O(p_48_out));
  LUT6 #(
    .INIT(64'hEFFFFFFFEFFFEFFF)) 
    \GEN_ARREADY.axi_early_arready_int_i_2 
       (.I0(rd_data_sm_cs[3]),
        .I1(axi_arready_int),
        .I2(axi_araddr_full),
        .I3(s_axi_arvalid),
        .I4(\GEN_ARREADY.axi_early_arready_int_i_4_n_0 ),
        .I5(axi_rd_burst_two_reg_n_0),
        .O(\GEN_ARREADY.axi_early_arready_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAABFFFFFAAFFFF)) 
    \GEN_ARREADY.axi_early_arready_int_i_3 
       (.I0(\GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2_n_0 ),
        .I1(brst_one),
        .I2(\FSM_sequential_rd_data_sm_cs[1]_i_5_n_0 ),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .O(\GEN_ARREADY.axi_early_arready_int_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \GEN_ARREADY.axi_early_arready_int_i_4 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .O(\GEN_ARREADY.axi_early_arready_int_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_ARREADY.axi_early_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_48_out),
        .Q(axi_early_arready_int),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'hFFFFEFEAAAAAAAAA)) 
    \GEN_AR_DUAL.ar_active_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_AR_DUAL.ar_active_i_2_n_0 ),
        .I2(rd_data_sm_cs[0]),
        .I3(\GEN_AR_DUAL.ar_active_i_3_n_0 ),
        .I4(rd_data_sm_cs[3]),
        .I5(ar_active),
        .O(\GEN_AR_DUAL.ar_active_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAFEFFFEFFFE)) 
    \GEN_AR_DUAL.ar_active_i_2 
       (.I0(rd_data_sm_cs[2]),
        .I1(axi_rd_burst_two_reg_n_0),
        .I2(axi_rd_burst),
        .I3(rd_data_sm_cs[1]),
        .I4(\GEN_AR_DUAL.ar_active_i_4_n_0 ),
        .I5(I_WRAP_BRST_n_18),
        .O(\GEN_AR_DUAL.ar_active_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDDD333FFFFF)) 
    \GEN_AR_DUAL.ar_active_i_3 
       (.I0(axi_rd_burst_two_reg_n_0),
        .I1(rd_data_sm_cs[2]),
        .I2(end_brst_rd),
        .I3(brst_zero),
        .I4(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I5(rd_data_sm_cs[1]),
        .O(\GEN_AR_DUAL.ar_active_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7777FF7F)) 
    \GEN_AR_DUAL.ar_active_i_4 
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(end_brst_rd),
        .I3(axi_b2b_brst),
        .I4(brst_zero),
        .O(\GEN_AR_DUAL.ar_active_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_DUAL.ar_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AR_DUAL.ar_active_i_1_n_0 ),
        .Q(ar_active),
        .R(\GEN_AWREADY.axi_aresetn_d3_reg ));
  LUT6 #(
    .INIT(64'h222F000022220000)) 
    \GEN_AR_DUAL.rd_addr_sm_cs_i_1 
       (.I0(last_bram_addr),
        .I1(\GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2_n_0 ),
        .I2(rd_addr_sm_cs),
        .I3(axi_araddr_full),
        .I4(s_axi_arvalid),
        .I5(\GEN_AR_DUAL.rd_addr_sm_cs_i_2_n_0 ),
        .O(\GEN_AR_DUAL.rd_addr_sm_cs_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \GEN_AR_DUAL.rd_addr_sm_cs_i_2 
       (.I0(no_ar_ack),
        .I1(ar_active),
        .I2(pend_rd_op),
        .O(\GEN_AR_DUAL.rd_addr_sm_cs_i_2_n_0 ));
  FDRE \GEN_AR_DUAL.rd_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AR_DUAL.rd_addr_sm_cs_i_1_n_0 ),
        .Q(rd_addr_sm_cs),
        .R(\GEN_AWREADY.axi_aresetn_d3_reg ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[8]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[9]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[10]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[0]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[1]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[2]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[3]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[4]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[5]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[6]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_araddr[7]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hDC00)) 
    \GEN_AR_PIPE_DUAL.axi_araddr_full_i_1 
       (.I0(bram_addr_ld_en),
        .I1(araddr_pipe_ld43_out),
        .I2(axi_araddr_full),
        .I3(s_axi_aresetn),
        .O(\GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_araddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AR_PIPE_DUAL.axi_araddr_full_i_1_n_0 ),
        .Q(axi_araddr_full),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h03AA)) 
    \GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1 
       (.I0(\GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .I1(s_axi_arburst[1]),
        .I2(s_axi_arburst[0]),
        .I3(araddr_pipe_ld43_out),
        .O(\GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1_n_0 ),
        .Q(\GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arburst[0]),
        .Q(axi_arburst_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arburst[1]),
        .Q(axi_arburst_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[0]),
        .Q(axi_arid_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[10]),
        .Q(axi_arid_pipe[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[11]),
        .Q(axi_arid_pipe[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[1]),
        .Q(axi_arid_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[2]),
        .Q(axi_arid_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[3]),
        .Q(axi_arid_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[4]),
        .Q(axi_arid_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[5]),
        .Q(axi_arid_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[6]),
        .Q(axi_arid_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[7]),
        .Q(axi_arid_pipe[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[8]),
        .Q(axi_arid_pipe[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arid[9]),
        .Q(axi_arid_pipe[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0080AAAA00800080)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_1 
       (.I0(axi_aresetn_d3),
        .I1(s_axi_arvalid),
        .I2(last_bram_addr),
        .I3(\GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2_n_0 ),
        .I4(axi_araddr_full),
        .I5(\GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_3_n_0 ),
        .O(araddr_pipe_ld43_out));
  LUT6 #(
    .INIT(64'hAAEAAAEAFFFFAAEA)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2 
       (.I0(I_WRAP_BRST_n_18),
        .I1(end_brst_rd_clr_cmb),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(brst_zero),
        .I5(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .O(\GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_3 
       (.I0(pend_rd_op),
        .I1(ar_active),
        .I2(no_ar_ack),
        .I3(s_axi_arvalid),
        .I4(rd_addr_sm_cs),
        .O(\GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_4 
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .O(end_brst_rd_clr_cmb));
  LUT4 #(
    .INIT(16'h0001)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_1 
       (.I0(s_axi_arlen[7]),
        .I1(s_axi_arlen[4]),
        .I2(s_axi_arlen[5]),
        .I3(\GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ),
        .O(p_13_out));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arlen[2]),
        .O(\GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(p_13_out),
        .Q(axi_arlen_pipe_1_or_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arlen[0]),
        .Q(axi_arlen_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arlen[1]),
        .Q(axi_arlen_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arlen[2]),
        .Q(axi_arlen_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arlen[3]),
        .Q(axi_arlen_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arlen[4]),
        .Q(axi_arlen_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arlen[5]),
        .Q(axi_arlen_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arlen[6]),
        .Q(axi_arlen_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(s_axi_arlen[7]),
        .Q(axi_arlen_pipe[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld43_out),
        .D(1'b1),
        .Q(axi_arsize_pipe),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FF080000)) 
    \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1 
       (.I0(brst_zero),
        .I1(ar_active),
        .I2(pend_rd_op),
        .I3(brst_cnt_max),
        .I4(s_axi_aresetn),
        .I5(bram_addr_ld_en),
        .O(\GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0 ),
        .Q(brst_cnt_max),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[8]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(I_WRAP_BRST_n_16),
        .I3(Q[4]),
        .I4(Q[6]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[9]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5__0 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(I_WRAP_BRST_n_16),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hAACFAAC0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(I_WRAP_BRST_n_17),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2__0_n_0 ),
        .I2(bram_addr_ld_en),
        .I3(I_WRAP_BRST_n_3),
        .I4(bram_addr_b),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[10]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[3]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[4]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[5]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[6]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[7]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(I_WRAP_BRST_n_16),
        .I3(Q[5]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_2),
        .D(I_WRAP_BRST_n_7),
        .Q(Q[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_2),
        .D(I_WRAP_BRST_n_6),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1_n_0 ),
        .Q(bram_addr_b),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_2),
        .D(I_WRAP_BRST_n_15),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_2),
        .D(I_WRAP_BRST_n_14),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_2),
        .D(I_WRAP_BRST_n_13),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_2),
        .D(I_WRAP_BRST_n_12),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_2),
        .D(I_WRAP_BRST_n_11),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_2),
        .D(I_WRAP_BRST_n_10),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_2),
        .D(I_WRAP_BRST_n_9),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_2),
        .D(I_WRAP_BRST_n_8),
        .Q(Q[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 
       (.I0(rd_skid_buf[0]),
        .I1(bram_rddata_b[0]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 
       (.I0(rd_skid_buf[10]),
        .I1(bram_rddata_b[10]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 
       (.I0(rd_skid_buf[11]),
        .I1(bram_rddata_b[11]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 
       (.I0(rd_skid_buf[12]),
        .I1(bram_rddata_b[12]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 
       (.I0(rd_skid_buf[13]),
        .I1(bram_rddata_b[13]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 
       (.I0(rd_skid_buf[14]),
        .I1(bram_rddata_b[14]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 
       (.I0(rd_skid_buf[15]),
        .I1(bram_rddata_b[15]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 
       (.I0(rd_skid_buf[16]),
        .I1(bram_rddata_b[16]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 
       (.I0(rd_skid_buf[17]),
        .I1(bram_rddata_b[17]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 
       (.I0(rd_skid_buf[18]),
        .I1(bram_rddata_b[18]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 
       (.I0(rd_skid_buf[19]),
        .I1(bram_rddata_b[19]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 
       (.I0(rd_skid_buf[1]),
        .I1(bram_rddata_b[1]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1_n_0 ),
        .Q(s_axi_rdata[1]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 
       (.I0(rd_skid_buf[20]),
        .I1(bram_rddata_b[20]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 
       (.I0(rd_skid_buf[21]),
        .I1(bram_rddata_b[21]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 
       (.I0(rd_skid_buf[22]),
        .I1(bram_rddata_b[22]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 
       (.I0(rd_skid_buf[23]),
        .I1(bram_rddata_b[23]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 
       (.I0(rd_skid_buf[24]),
        .I1(bram_rddata_b[24]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 
       (.I0(rd_skid_buf[25]),
        .I1(bram_rddata_b[25]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 
       (.I0(rd_skid_buf[26]),
        .I1(bram_rddata_b[26]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 
       (.I0(rd_skid_buf[27]),
        .I1(bram_rddata_b[27]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 
       (.I0(rd_skid_buf[28]),
        .I1(bram_rddata_b[28]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 
       (.I0(rd_skid_buf[29]),
        .I1(bram_rddata_b[29]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 
       (.I0(rd_skid_buf[2]),
        .I1(bram_rddata_b[2]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 
       (.I0(rd_skid_buf[30]),
        .I1(bram_rddata_b[30]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000C0E000C0F0C00)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 
       (.I0(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ),
        .I1(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(axi_rdata_en));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2 
       (.I0(rd_skid_buf[31]),
        .I1(bram_rddata_b[31]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3 
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4 
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 
       (.I0(rd_skid_buf[3]),
        .I1(bram_rddata_b[3]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 
       (.I0(rd_skid_buf[4]),
        .I1(bram_rddata_b[4]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 
       (.I0(rd_skid_buf[5]),
        .I1(bram_rddata_b[5]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 
       (.I0(rd_skid_buf[6]),
        .I1(bram_rddata_b[6]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 
       (.I0(rd_skid_buf[7]),
        .I1(bram_rddata_b[7]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 
       (.I0(rd_skid_buf[8]),
        .I1(bram_rddata_b[8]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 
       (.I0(rd_skid_buf[9]),
        .I1(bram_rddata_b[9]),
        .I2(rddata_mux_sel),
        .O(\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAABAAA)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf[31]_i_1 
       (.I0(rd_skid_buf_ld_reg),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[1]),
        .O(rd_skid_buf_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[0]),
        .Q(rd_skid_buf[0]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[10]),
        .Q(rd_skid_buf[10]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[11]),
        .Q(rd_skid_buf[11]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[12]),
        .Q(rd_skid_buf[12]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[13]),
        .Q(rd_skid_buf[13]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[14]),
        .Q(rd_skid_buf[14]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[15]),
        .Q(rd_skid_buf[15]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[16]),
        .Q(rd_skid_buf[16]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[17]),
        .Q(rd_skid_buf[17]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[18]),
        .Q(rd_skid_buf[18]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[19]),
        .Q(rd_skid_buf[19]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[1]),
        .Q(rd_skid_buf[1]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[20]),
        .Q(rd_skid_buf[20]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[21]),
        .Q(rd_skid_buf[21]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[22]),
        .Q(rd_skid_buf[22]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[23]),
        .Q(rd_skid_buf[23]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[24]),
        .Q(rd_skid_buf[24]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[25]),
        .Q(rd_skid_buf[25]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[26]),
        .Q(rd_skid_buf[26]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[27]),
        .Q(rd_skid_buf[27]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[28]),
        .Q(rd_skid_buf[28]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[29]),
        .Q(rd_skid_buf[29]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[2]),
        .Q(rd_skid_buf[2]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[30]),
        .Q(rd_skid_buf[30]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[31]),
        .Q(rd_skid_buf[31]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[3]),
        .Q(rd_skid_buf[3]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[4]),
        .Q(rd_skid_buf[4]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[5]),
        .Q(rd_skid_buf[5]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[6]),
        .Q(rd_skid_buf[6]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[7]),
        .Q(rd_skid_buf[7]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[8]),
        .Q(rd_skid_buf[8]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RDATA_NO_ECC.rd_skid_buf_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[9]),
        .Q(rd_skid_buf[9]),
        .R(bram_rst_b));
  LUT4 #(
    .INIT(16'h08FF)) 
    \GEN_RID.axi_rid_int[11]_i_1 
       (.I0(s_axi_rready),
        .I1(s_axi_rlast),
        .I2(axi_b2b_brst),
        .I3(s_axi_aresetn),
        .O(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF80)) 
    \GEN_RID.axi_rid_int[11]_i_2 
       (.I0(axi_b2b_brst),
        .I1(s_axi_rlast),
        .I2(s_axi_rready),
        .I3(axi_rvalid_set),
        .O(p_4_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[0]),
        .Q(s_axi_rid[0]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[10]),
        .Q(s_axi_rid[10]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[11]),
        .Q(s_axi_rid[11]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[1]),
        .Q(s_axi_rid[1]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[2]),
        .Q(s_axi_rid[2]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[3]),
        .Q(s_axi_rid[3]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[4]),
        .Q(s_axi_rid[4]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[5]),
        .Q(s_axi_rid[5]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[6]),
        .Q(s_axi_rid[6]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[7]),
        .Q(s_axi_rid[7]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[8]),
        .Q(s_axi_rid[8]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_4_out),
        .D(axi_rid_temp[9]),
        .Q(s_axi_rid[9]),
        .R(\GEN_RID.axi_rid_int[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[0]_i_1 
       (.I0(axi_arid_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[0]),
        .O(axi_rid_temp20_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[10]_i_1 
       (.I0(axi_arid_pipe[10]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[10]),
        .O(axi_rid_temp20_in[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_RID.axi_rid_temp2[11]_i_1 
       (.I0(axi_rid_temp_full),
        .I1(bram_addr_ld_en),
        .O(p_26_out));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[11]_i_2 
       (.I0(axi_arid_pipe[11]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[11]),
        .O(axi_rid_temp20_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[1]_i_1 
       (.I0(axi_arid_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[1]),
        .O(axi_rid_temp20_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[2]_i_1 
       (.I0(axi_arid_pipe[2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[2]),
        .O(axi_rid_temp20_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[3]_i_1 
       (.I0(axi_arid_pipe[3]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[3]),
        .O(axi_rid_temp20_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[4]_i_1 
       (.I0(axi_arid_pipe[4]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[4]),
        .O(axi_rid_temp20_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[5]_i_1 
       (.I0(axi_arid_pipe[5]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[5]),
        .O(axi_rid_temp20_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[6]_i_1 
       (.I0(axi_arid_pipe[6]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[6]),
        .O(axi_rid_temp20_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[7]_i_1 
       (.I0(axi_arid_pipe[7]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[7]),
        .O(axi_rid_temp20_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[8]_i_1 
       (.I0(axi_arid_pipe[8]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[8]),
        .O(axi_rid_temp20_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_RID.axi_rid_temp2[9]_i_1 
       (.I0(axi_arid_pipe[9]),
        .I1(axi_araddr_full),
        .I2(s_axi_arid[9]),
        .O(axi_rid_temp20_in[9]));
  LUT6 #(
    .INIT(64'hAA22F00000000000)) 
    \GEN_RID.axi_rid_temp2_full_i_1 
       (.I0(\GEN_RID.axi_rid_temp[11]_i_3_n_0 ),
        .I1(axi_rid_temp_full_d1),
        .I2(bram_addr_ld_en),
        .I3(axi_rid_temp_full),
        .I4(axi_rid_temp2_full),
        .I5(s_axi_aresetn),
        .O(\GEN_RID.axi_rid_temp2_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RID.axi_rid_temp2_full_i_1_n_0 ),
        .Q(axi_rid_temp2_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[0]),
        .Q(axi_rid_temp2[0]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[10]),
        .Q(axi_rid_temp2[10]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[11]),
        .Q(axi_rid_temp2[11]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[1]),
        .Q(axi_rid_temp2[1]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[2]),
        .Q(axi_rid_temp2[2]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[3]),
        .Q(axi_rid_temp2[3]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[4]),
        .Q(axi_rid_temp2[4]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[5]),
        .Q(axi_rid_temp2[5]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[6]),
        .Q(axi_rid_temp2[6]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[7]),
        .Q(axi_rid_temp2[7]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[8]),
        .Q(axi_rid_temp2[8]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp2_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_26_out),
        .D(axi_rid_temp20_in[9]),
        .Q(axi_rid_temp2[9]),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[0]_i_1 
       (.I0(axi_rid_temp2[0]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[0]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[0]),
        .O(\GEN_RID.axi_rid_temp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[10]_i_1 
       (.I0(axi_rid_temp2[10]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[10]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[10]),
        .O(\GEN_RID.axi_rid_temp[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5050FFD0)) 
    \GEN_RID.axi_rid_temp[11]_i_1 
       (.I0(\GEN_RID.axi_rid_temp[11]_i_3_n_0 ),
        .I1(axi_rid_temp_full_d1),
        .I2(axi_rid_temp2_full),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .O(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[11]_i_2 
       (.I0(axi_rid_temp2[11]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[11]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[11]),
        .O(\GEN_RID.axi_rid_temp[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \GEN_RID.axi_rid_temp[11]_i_3 
       (.I0(axi_rvalid_set),
        .I1(s_axi_rready),
        .I2(s_axi_rlast),
        .I3(axi_b2b_brst),
        .O(\GEN_RID.axi_rid_temp[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[1]_i_1 
       (.I0(axi_rid_temp2[1]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[1]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[1]),
        .O(\GEN_RID.axi_rid_temp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[2]_i_1 
       (.I0(axi_rid_temp2[2]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[2]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[2]),
        .O(\GEN_RID.axi_rid_temp[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[3]_i_1 
       (.I0(axi_rid_temp2[3]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[3]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[3]),
        .O(\GEN_RID.axi_rid_temp[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[4]_i_1 
       (.I0(axi_rid_temp2[4]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[4]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[4]),
        .O(\GEN_RID.axi_rid_temp[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[5]_i_1 
       (.I0(axi_rid_temp2[5]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[5]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[5]),
        .O(\GEN_RID.axi_rid_temp[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[6]_i_1 
       (.I0(axi_rid_temp2[6]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[6]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[6]),
        .O(\GEN_RID.axi_rid_temp[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[7]_i_1 
       (.I0(axi_rid_temp2[7]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[7]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[7]),
        .O(\GEN_RID.axi_rid_temp[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[8]_i_1 
       (.I0(axi_rid_temp2[8]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[8]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[8]),
        .O(\GEN_RID.axi_rid_temp[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBA8ABABABA8A8A8A)) 
    \GEN_RID.axi_rid_temp[9]_i_1 
       (.I0(axi_rid_temp2[9]),
        .I1(axi_rid_temp_full),
        .I2(bram_addr_ld_en),
        .I3(axi_arid_pipe[9]),
        .I4(axi_araddr_full),
        .I5(s_axi_arid[9]),
        .O(\GEN_RID.axi_rid_temp[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_full_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rid_temp_full),
        .Q(axi_rid_temp_full_d1),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'hFAFAFF8A00000000)) 
    \GEN_RID.axi_rid_temp_full_i_1 
       (.I0(axi_rid_temp2_full),
        .I1(axi_rid_temp_full_d1),
        .I2(\GEN_RID.axi_rid_temp[11]_i_3_n_0 ),
        .I3(bram_addr_ld_en),
        .I4(axi_rid_temp_full),
        .I5(s_axi_aresetn),
        .O(\GEN_RID.axi_rid_temp_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_RID.axi_rid_temp_full_i_1_n_0 ),
        .Q(axi_rid_temp_full),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[0]_i_1_n_0 ),
        .Q(axi_rid_temp[0]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[10]_i_1_n_0 ),
        .Q(axi_rid_temp[10]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[11]_i_2_n_0 ),
        .Q(axi_rid_temp[11]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[1]_i_1_n_0 ),
        .Q(axi_rid_temp[1]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[2]_i_1_n_0 ),
        .Q(axi_rid_temp[2]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[3]_i_1_n_0 ),
        .Q(axi_rid_temp[3]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[4]_i_1_n_0 ),
        .Q(axi_rid_temp[4]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[5]_i_1_n_0 ),
        .Q(axi_rid_temp[5]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[6]_i_1_n_0 ),
        .Q(axi_rid_temp[6]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[7]_i_1_n_0 ),
        .Q(axi_rid_temp[7]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[8]_i_1_n_0 ),
        .Q(axi_rid_temp[8]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_RID.axi_rid_temp_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_RID.axi_rid_temp[11]_i_1_n_0 ),
        .D(\GEN_RID.axi_rid_temp[9]_i_1_n_0 ),
        .Q(axi_rid_temp[9]),
        .R(bram_rst_b));
  sc7z010_demo_axi_bram_ctrl_0_0_wrap_brst_0 I_WRAP_BRST
       (.D({I_WRAP_BRST_n_6,I_WRAP_BRST_n_7,I_WRAP_BRST_n_8,I_WRAP_BRST_n_9,I_WRAP_BRST_n_10,I_WRAP_BRST_n_11,I_WRAP_BRST_n_12,I_WRAP_BRST_n_13,I_WRAP_BRST_n_14,I_WRAP_BRST_n_15}),
        .E(I_WRAP_BRST_n_2),
        .\FSM_sequential_rd_data_sm_cs_reg[1] (I_WRAP_BRST_n_0),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10] (\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2__0_n_0 ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11] (\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4__0_n_0 ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] (\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3__0_n_0 ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4] (\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3__0_n_0 ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5] (\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3_n_0 ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6] (\GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2__0_n_0 ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7] (\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2__0_n_0 ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8] (\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2__0_n_0 ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9] (\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2__0_n_0 ),
        .\GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg (\GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg_n_0 ),
        .\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] (axi_arlen_pipe[3:0]),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] (\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5__0_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] (I_WRAP_BRST_n_3),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 (I_WRAP_BRST_n_5),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] (\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] (\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] (I_WRAP_BRST_n_16),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] (\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] (\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] (\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3_n_0 ),
        .Q(Q),
        .SR(bram_rst_b),
        .ar_active(ar_active),
        .axi_araddr_full(axi_araddr_full),
        .axi_aresetn_d3(axi_aresetn_d3),
        .axi_arlen_pipe_1_or_2(axi_arlen_pipe_1_or_2),
        .axi_arsize_pipe(axi_arsize_pipe),
        .axi_arsize_pipe_max(axi_arsize_pipe_max),
        .axi_b2b_brst(axi_b2b_brst),
        .axi_rd_burst(axi_rd_burst),
        .axi_rd_burst_two_reg(axi_rd_burst_two_reg_n_0),
        .axi_rvalid_int_reg(s_axi_rvalid),
        .bram_addr_ld_en(bram_addr_ld_en),
        .brst_zero(brst_zero),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .disable_b2b_brst(disable_b2b_brst),
        .end_brst_rd(end_brst_rd),
        .last_bram_addr(last_bram_addr),
        .no_ar_ack(no_ar_ack),
        .out(rd_data_sm_cs),
        .pend_rd_op(pend_rd_op),
        .rd_addr_sm_cs(rd_addr_sm_cs),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready),
        .\save_init_bram_addr_ld_reg[12]_0 (I_WRAP_BRST_n_17),
        .\save_init_bram_addr_ld_reg[12]_1 (I_WRAP_BRST_n_18),
        .\wrap_burst_total_reg[1]_0 (I_WRAP_BRST_n_19),
        .\wrap_burst_total_reg[1]_1 (I_WRAP_BRST_n_20),
        .\wrap_burst_total_reg[1]_2 (I_WRAP_BRST_n_21),
        .\wrap_burst_total_reg[1]_3 (I_WRAP_BRST_n_22));
  LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
    act_rd_burst_i_1
       (.I0(act_rd_burst),
        .I1(act_rd_burst_set),
        .I2(axi_rd_burst),
        .I3(bram_addr_ld_en),
        .I4(axi_rd_burst_i_2_n_0),
        .I5(act_rd_burst_two_i_3_n_0),
        .O(act_rd_burst_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    act_rd_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(act_rd_burst_i_1_n_0),
        .Q(act_rd_burst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    act_rd_burst_two_i_1
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst_set),
        .I2(axi_rd_burst_two_reg_n_0),
        .I3(bram_addr_ld_en),
        .I4(axi_rd_burst_i_2_n_0),
        .I5(act_rd_burst_two_i_3_n_0),
        .O(act_rd_burst_two_i_1_n_0));
  LUT6 #(
    .INIT(64'h888A888888888888)) 
    act_rd_burst_two_i_2
       (.I0(act_rd_burst_two_i_4_n_0),
        .I1(act_rd_burst_two_i_5_n_0),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(brst_zero_i_2_n_0),
        .I5(bram_addr_ld_en),
        .O(act_rd_burst_set));
  LUT6 #(
    .INIT(64'h00000180FFFFFFFF)) 
    act_rd_burst_two_i_3
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[3]),
        .I4(bram_en_int_i_9_n_0),
        .I5(s_axi_aresetn),
        .O(act_rd_burst_two_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    act_rd_burst_two_i_4
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .O(act_rd_burst_two_i_4_n_0));
  LUT6 #(
    .INIT(64'h222A222A222A0008)) 
    act_rd_burst_two_i_5
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_AR_DUAL.ar_active_i_4_n_0 ),
        .I3(I_WRAP_BRST_n_18),
        .I4(axi_rd_burst_two_reg_n_0),
        .I5(axi_rd_burst),
        .O(act_rd_burst_two_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    act_rd_burst_two_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(act_rd_burst_two_i_1_n_0),
        .Q(act_rd_burst_two),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    axi_arsize_pipe_max_i_1
       (.I0(araddr_pipe_ld43_out),
        .I1(axi_arsize_pipe_max),
        .O(axi_arsize_pipe_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arsize_pipe_max_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arsize_pipe_max_i_1_n_0),
        .Q(axi_arsize_pipe_max),
        .R(bram_rst_b));
  LUT5 #(
    .INIT(32'h01FF0100)) 
    axi_b2b_brst_i_1
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(I_WRAP_BRST_n_18),
        .I3(axi_b2b_brst_i_2_n_0),
        .I4(axi_b2b_brst),
        .O(axi_b2b_brst_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000A2000000020)) 
    axi_b2b_brst_i_2
       (.I0(rd_data_sm_cs[0]),
        .I1(axi_b2b_brst_i_3_n_0),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .I5(axi_b2b_brst),
        .O(axi_b2b_brst_i_2_n_0));
  LUT6 #(
    .INIT(64'hBABBFFFFFFFFFFFF)) 
    axi_b2b_brst_i_3
       (.I0(I_WRAP_BRST_n_18),
        .I1(brst_zero),
        .I2(axi_b2b_brst),
        .I3(end_brst_rd),
        .I4(s_axi_rready),
        .I5(s_axi_rvalid),
        .O(axi_b2b_brst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_b2b_brst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_b2b_brst_i_1_n_0),
        .Q(axi_b2b_brst),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'h300030000000AA00)) 
    axi_rd_burst_i_1
       (.I0(axi_rd_burst),
        .I1(axi_rd_burst_i_2_n_0),
        .I2(brst_zero_i_2_n_0),
        .I3(s_axi_aresetn),
        .I4(brst_zero),
        .I5(bram_addr_ld_en),
        .O(axi_rd_burst_i_1_n_0));
  LUT6 #(
    .INIT(64'h202A000A20200000)) 
    axi_rd_burst_i_2
       (.I0(axi_rd_burst_i_3_n_0),
        .I1(axi_arlen_pipe[3]),
        .I2(axi_araddr_full),
        .I3(s_axi_arlen[3]),
        .I4(axi_arlen_pipe[0]),
        .I5(s_axi_arlen[0]),
        .O(axi_rd_burst_i_2_n_0));
  LUT6 #(
    .INIT(64'h0001000000010101)) 
    axi_rd_burst_i_3
       (.I0(brst_zero_i_4_n_0),
        .I1(brst_zero_i_3_n_0),
        .I2(I_WRAP_BRST_n_20),
        .I3(axi_arlen_pipe[2]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[2]),
        .O(axi_rd_burst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rd_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rd_burst_i_1_n_0),
        .Q(axi_rd_burst),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hC0C000A0)) 
    axi_rd_burst_two_i_1
       (.I0(axi_rd_burst_two_reg_n_0),
        .I1(axi_rd_burst_i_2_n_0),
        .I2(s_axi_aresetn),
        .I3(brst_zero),
        .I4(bram_addr_ld_en),
        .O(axi_rd_burst_two_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rd_burst_two_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rd_burst_two_i_1_n_0),
        .Q(axi_rd_burst_two_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF55FFC000000000)) 
    axi_rlast_int_i_1
       (.I0(s_axi_rready),
        .I1(rlast_sm_cs[2]),
        .I2(axi_rlast_int_i_2_n_0),
        .I3(axi_rlast_int_i_3_n_0),
        .I4(s_axi_rlast),
        .I5(s_axi_aresetn),
        .O(axi_rlast_int_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    axi_rlast_int_i_2
       (.I0(rlast_sm_cs[0]),
        .I1(rlast_sm_cs[1]),
        .O(axi_rlast_int_i_2_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_rlast_int_i_3
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .O(axi_rlast_int_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rlast_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rlast_int_i_1_n_0),
        .Q(s_axi_rlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAFAC0000)) 
    axi_rvalid_clr_ok_i_1
       (.I0(\GEN_AR_PIPE_DUAL.axi_arlen_pipe[7]_i_2_n_0 ),
        .I1(axi_rvalid_clr_ok_i_2_n_0),
        .I2(bram_addr_ld_en),
        .I3(axi_rvalid_clr_ok),
        .I4(s_axi_aresetn),
        .O(axi_rvalid_clr_ok_i_1_n_0));
  LUT6 #(
    .INIT(64'h8F888F888F888888)) 
    axi_rvalid_clr_ok_i_2
       (.I0(axi_rvalid_clr_ok_i_3_n_0),
        .I1(end_brst_rd_clr_cmb),
        .I2(axi_rvalid_clr_ok),
        .I3(last_bram_addr),
        .I4(disable_b2b_brst),
        .I5(disable_b2b_brst_i_2_n_0),
        .O(axi_rvalid_clr_ok_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    axi_rvalid_clr_ok_i_3
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .O(axi_rvalid_clr_ok_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_clr_ok_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_clr_ok_i_1_n_0),
        .Q(axi_rvalid_clr_ok),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7F7F7F0000000000)) 
    axi_rvalid_int_i_1
       (.I0(axi_rvalid_clr_ok),
        .I1(s_axi_rready),
        .I2(s_axi_rlast),
        .I3(axi_rvalid_set),
        .I4(s_axi_rvalid),
        .I5(s_axi_aresetn),
        .O(axi_rvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_int_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0100)) 
    axi_rvalid_set_i_1
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .O(axi_rvalid_set_cmb));
  FDRE #(
    .INIT(1'b0)) 
    axi_rvalid_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'hFBFFFBFB0B000B0B)) 
    bram_en_int_i_1
       (.I0(bram_en_int_i_2_n_0),
        .I1(bram_en_int_reg_i_3_n_0),
        .I2(rd_data_sm_cs[3]),
        .I3(bram_en_int_i_4_n_0),
        .I4(bram_en_int_i_5_n_0),
        .I5(bram_en_b),
        .O(bram_en_int_i_1_n_0));
  LUT5 #(
    .INIT(32'hAAAAAABF)) 
    bram_en_int_i_10
       (.I0(rd_data_sm_cs[1]),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid),
        .I3(end_brst_rd),
        .I4(brst_zero),
        .O(bram_en_int_i_10_n_0));
  LUT3 #(
    .INIT(8'h4F)) 
    bram_en_int_i_11
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .O(bram_en_int_i_11_n_0));
  LUT6 #(
    .INIT(64'hFF0CFFCCAAAAAAAA)) 
    bram_en_int_i_12
       (.I0(axi_rd_burst_two_reg_n_0),
        .I1(end_brst_rd),
        .I2(axi_b2b_brst),
        .I3(brst_zero),
        .I4(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I5(rd_data_sm_cs[0]),
        .O(bram_en_int_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    bram_en_int_i_2
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[0]),
        .O(bram_en_int_i_2_n_0));
  LUT6 #(
    .INIT(64'h00004F007F6E7F6E)) 
    bram_en_int_i_4
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(bram_en_int_i_8_n_0),
        .I3(bram_addr_ld_en),
        .I4(bram_en_int_i_9_n_0),
        .I5(rd_data_sm_cs[2]),
        .O(bram_en_int_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF57770000)) 
    bram_en_int_i_5
       (.I0(rd_data_sm_cs[0]),
        .I1(bram_addr_ld_en),
        .I2(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I3(pend_rd_op),
        .I4(bram_en_int_i_10_n_0),
        .I5(bram_en_int_i_11_n_0),
        .O(bram_en_int_i_5_n_0));
  LUT5 #(
    .INIT(32'h0F10FF1F)) 
    bram_en_int_i_6
       (.I0(axi_rd_burst),
        .I1(axi_rd_burst_two_reg_n_0),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[2]),
        .I4(bram_addr_ld_en),
        .O(bram_en_int_i_6_n_0));
  LUT6 #(
    .INIT(64'h007FFFFF007F0000)) 
    bram_en_int_i_7
       (.I0(pend_rd_op),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid),
        .I3(bram_addr_ld_en),
        .I4(rd_data_sm_cs[2]),
        .I5(bram_en_int_i_12_n_0),
        .O(bram_en_int_i_7_n_0));
  LUT6 #(
    .INIT(64'hFF40FF40FF40FFFF)) 
    bram_en_int_i_8
       (.I0(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I1(\FSM_sequential_rd_data_sm_cs[1]_i_5_n_0 ),
        .I2(brst_one),
        .I3(rd_data_sm_cs[2]),
        .I4(\GEN_AR_DUAL.ar_active_i_4_n_0 ),
        .I5(I_WRAP_BRST_n_18),
        .O(bram_en_int_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1FFF)) 
    bram_en_int_i_9
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(bram_en_int_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bram_en_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_int_i_1_n_0),
        .Q(bram_en_b),
        .R(bram_rst_b));
  MUXF7 bram_en_int_reg_i_3
       (.I0(bram_en_int_i_6_n_0),
        .I1(bram_en_int_i_7_n_0),
        .O(bram_en_int_reg_i_3_n_0),
        .S(rd_data_sm_cs[1]));
  LUT5 #(
    .INIT(32'hB800B8FF)) 
    \brst_cnt[0]_i_1 
       (.I0(axi_arlen_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[0]),
        .O(\brst_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \brst_cnt[1]_i_1 
       (.I0(axi_arlen_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[1]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[0]),
        .I5(brst_cnt[1]),
        .O(\brst_cnt[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \brst_cnt[2]_i_1 
       (.I0(I_WRAP_BRST_n_19),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[2]),
        .I3(brst_cnt[1]),
        .I4(brst_cnt[0]),
        .O(\brst_cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \brst_cnt[3]_i_1 
       (.I0(I_WRAP_BRST_n_21),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[3]),
        .I3(brst_cnt[2]),
        .I4(brst_cnt[0]),
        .I5(brst_cnt[1]),
        .O(\brst_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \brst_cnt[4]_i_1 
       (.I0(axi_arlen_pipe[4]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[4]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[4]),
        .I5(\brst_cnt[4]_i_2_n_0 ),
        .O(\brst_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \brst_cnt[4]_i_2 
       (.I0(brst_cnt[2]),
        .I1(brst_cnt[0]),
        .I2(brst_cnt[1]),
        .I3(brst_cnt[3]),
        .O(\brst_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \brst_cnt[5]_i_1 
       (.I0(axi_arlen_pipe[5]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[5]),
        .I3(bram_addr_ld_en),
        .I4(brst_cnt[5]),
        .I5(\brst_cnt[7]_i_4_n_0 ),
        .O(\brst_cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB88BB8B8)) 
    \brst_cnt[6]_i_1 
       (.I0(\brst_cnt[6]_i_2_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[6]),
        .I3(brst_cnt[5]),
        .I4(\brst_cnt[7]_i_4_n_0 ),
        .O(\brst_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \brst_cnt[6]_i_2 
       (.I0(axi_arlen_pipe[6]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[6]),
        .O(\brst_cnt[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \brst_cnt[7]_i_1 
       (.I0(bram_addr_ld_en),
        .I1(I_WRAP_BRST_n_5),
        .O(\brst_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B88BB8B8B8B8)) 
    \brst_cnt[7]_i_2 
       (.I0(\brst_cnt[7]_i_3_n_0 ),
        .I1(bram_addr_ld_en),
        .I2(brst_cnt[7]),
        .I3(brst_cnt[5]),
        .I4(brst_cnt[6]),
        .I5(\brst_cnt[7]_i_4_n_0 ),
        .O(\brst_cnt[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \brst_cnt[7]_i_3 
       (.I0(axi_arlen_pipe[7]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[7]),
        .O(\brst_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \brst_cnt[7]_i_4 
       (.I0(brst_cnt[3]),
        .I1(brst_cnt[1]),
        .I2(brst_cnt[0]),
        .I3(brst_cnt[2]),
        .I4(brst_cnt[4]),
        .O(\brst_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    brst_cnt_max_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(brst_cnt_max),
        .Q(brst_cnt_max_d1),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[0]_i_1_n_0 ),
        .Q(brst_cnt[0]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[1]_i_1_n_0 ),
        .Q(brst_cnt[1]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[2]_i_1_n_0 ),
        .Q(brst_cnt[2]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[3]_i_1_n_0 ),
        .Q(brst_cnt[3]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[4]_i_1_n_0 ),
        .Q(brst_cnt[4]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[5]_i_1_n_0 ),
        .Q(brst_cnt[5]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[6]_i_1_n_0 ),
        .Q(brst_cnt[6]),
        .R(bram_rst_b));
  FDRE #(
    .INIT(1'b0)) 
    \brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\brst_cnt[7]_i_1_n_0 ),
        .D(\brst_cnt[7]_i_2_n_0 ),
        .Q(brst_cnt[7]),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'h4400444444004040)) 
    brst_one_i_1
       (.I0(last_bram_addr_i_2_n_0),
        .I1(s_axi_aresetn),
        .I2(brst_one),
        .I3(axi_rd_burst_i_2_n_0),
        .I4(bram_addr_ld_en),
        .I5(brst_one_i_2_n_0),
        .O(brst_one_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    brst_one_i_2
       (.I0(last_bram_addr_i_8_n_0),
        .I1(I_WRAP_BRST_n_5),
        .I2(brst_cnt[1]),
        .I3(brst_cnt[0]),
        .O(brst_one_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    brst_one_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(brst_one_i_1_n_0),
        .Q(brst_one),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h77700000)) 
    brst_zero_i_1
       (.I0(bram_addr_ld_en),
        .I1(brst_zero_i_2_n_0),
        .I2(last_bram_addr_i_2_n_0),
        .I3(brst_zero),
        .I4(s_axi_aresetn),
        .O(brst_zero_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    brst_zero_i_2
       (.I0(I_WRAP_BRST_n_19),
        .I1(I_WRAP_BRST_n_20),
        .I2(brst_zero_i_3_n_0),
        .I3(brst_zero_i_4_n_0),
        .I4(I_WRAP_BRST_n_22),
        .I5(I_WRAP_BRST_n_21),
        .O(brst_zero_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    brst_zero_i_3
       (.I0(s_axi_arlen[4]),
        .I1(axi_arlen_pipe[4]),
        .I2(s_axi_arlen[5]),
        .I3(axi_araddr_full),
        .I4(axi_arlen_pipe[5]),
        .O(brst_zero_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFACCFA)) 
    brst_zero_i_4
       (.I0(s_axi_arlen[6]),
        .I1(axi_arlen_pipe[6]),
        .I2(s_axi_arlen[7]),
        .I3(axi_araddr_full),
        .I4(axi_arlen_pipe[7]),
        .O(brst_zero_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    brst_zero_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(brst_zero_i_1_n_0),
        .Q(brst_zero),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    curr_fixed_burst_reg_i_1
       (.I0(s_axi_arburst[1]),
        .I1(axi_arburst_pipe[1]),
        .I2(s_axi_arburst[0]),
        .I3(axi_araddr_full),
        .I4(axi_arburst_pipe[0]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg),
        .R(bram_rst_b));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    curr_wrap_burst_reg_i_1
       (.I0(s_axi_arburst[1]),
        .I1(axi_arburst_pipe[1]),
        .I2(s_axi_arburst[0]),
        .I3(axi_araddr_full),
        .I4(axi_arburst_pipe[0]),
        .O(curr_wrap_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'hAABAAAAABABABABA)) 
    disable_b2b_brst_i_1
       (.I0(disable_b2b_brst_i_2_n_0),
        .I1(rd_data_sm_cs[3]),
        .I2(disable_b2b_brst),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[0]),
        .O(disable_b2b_brst_cmb));
  LUT6 #(
    .INIT(64'h00000000BFBBBFBF)) 
    disable_b2b_brst_i_2
       (.I0(disable_b2b_brst),
        .I1(rd_data_sm_cs[1]),
        .I2(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I3(brst_one),
        .I4(\FSM_sequential_rd_data_sm_cs[1]_i_5_n_0 ),
        .I5(disable_b2b_brst_i_3_n_0),
        .O(disable_b2b_brst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF10FFFFFFFF)) 
    disable_b2b_brst_i_3
       (.I0(rd_data_sm_cs[1]),
        .I1(axi_rd_burst_two_reg_n_0),
        .I2(axi_rd_burst),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[0]),
        .O(disable_b2b_brst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    disable_b2b_brst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'hFFEEFFEF11000000)) 
    end_brst_rd_clr_i_1
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[3]),
        .I2(bram_addr_ld_en),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(end_brst_rd_clr),
        .O(end_brst_rd_clr_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    end_brst_rd_clr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(end_brst_rd_clr_i_1_n_0),
        .Q(end_brst_rd_clr),
        .R(bram_rst_b));
  LUT5 #(
    .INIT(32'h55300000)) 
    end_brst_rd_i_1
       (.I0(end_brst_rd_clr),
        .I1(brst_cnt_max_d1),
        .I2(brst_cnt_max),
        .I3(end_brst_rd),
        .I4(s_axi_aresetn),
        .O(end_brst_rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    end_brst_rd_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(end_brst_rd_i_1_n_0),
        .Q(end_brst_rd),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hABAABBBBABAAABAA)) 
    last_bram_addr_i_1
       (.I0(last_bram_addr_i_2_n_0),
        .I1(last_bram_addr_i_3_n_0),
        .I2(last_bram_addr_i_4_n_0),
        .I3(last_bram_addr_i_5_n_0),
        .I4(last_bram_addr_i_6_n_0),
        .I5(last_bram_addr_i_7_n_0),
        .O(last_bram_addr0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    last_bram_addr_i_2
       (.I0(last_bram_addr_i_8_n_0),
        .I1(I_WRAP_BRST_n_5),
        .I2(brst_cnt[0]),
        .I3(brst_cnt[1]),
        .O(last_bram_addr_i_2_n_0));
  LUT3 #(
    .INIT(8'h7E)) 
    last_bram_addr_i_3
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .O(last_bram_addr_i_3_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    last_bram_addr_i_4
       (.I0(axi_rd_burst),
        .I1(rd_data_sm_cs[2]),
        .I2(axi_rd_burst_two_reg_n_0),
        .O(last_bram_addr_i_4_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    last_bram_addr_i_5
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(rd_data_sm_cs[3]),
        .O(last_bram_addr_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hBBBBBB8B)) 
    last_bram_addr_i_6
       (.I0(brst_zero_i_2_n_0),
        .I1(bram_addr_ld_en),
        .I2(pend_rd_op),
        .I3(axi_rd_burst_two_reg_n_0),
        .I4(axi_rd_burst),
        .O(last_bram_addr_i_6_n_0));
  LUT6 #(
    .INIT(64'h008800FF00800000)) 
    last_bram_addr_i_7
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(pend_rd_op),
        .I3(rd_data_sm_cs[3]),
        .I4(rd_data_sm_cs[2]),
        .I5(bram_addr_ld_en),
        .O(last_bram_addr_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    last_bram_addr_i_8
       (.I0(brst_cnt[7]),
        .I1(brst_cnt[3]),
        .I2(brst_cnt[4]),
        .I3(brst_cnt[2]),
        .I4(brst_cnt[5]),
        .I5(brst_cnt[6]),
        .O(last_bram_addr_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_bram_addr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_bram_addr0),
        .Q(last_bram_addr),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'h4C4C44444F4C4444)) 
    no_ar_ack_i_1
       (.I0(no_ar_ack_i_2_n_0),
        .I1(no_ar_ack),
        .I2(no_ar_ack_i_3_n_0),
        .I3(no_ar_ack_i_4_n_0),
        .I4(bram_addr_ld_en),
        .I5(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .O(no_ar_ack_i_1_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    no_ar_ack_i_2
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .O(no_ar_ack_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    no_ar_ack_i_3
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .O(no_ar_ack_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    no_ar_ack_i_4
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[2]),
        .O(no_ar_ack_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    no_ar_ack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(no_ar_ack_i_1_n_0),
        .Q(no_ar_ack),
        .R(bram_rst_b));
  LUT6 #(
    .INIT(64'hFFDFFFD500100015)) 
    pend_rd_op_i_1
       (.I0(pend_rd_op_i_2_n_0),
        .I1(pend_rd_op_reg_i_3_n_0),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[3]),
        .I4(pend_rd_op_i_4_n_0),
        .I5(pend_rd_op),
        .O(pend_rd_op_i_1_n_0));
  LUT6 #(
    .INIT(64'h8008FFFF8008C3FF)) 
    pend_rd_op_i_2
       (.I0(last_bram_addr_i_4_n_0),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(bram_addr_ld_en),
        .I5(pend_rd_op_i_5_n_0),
        .O(pend_rd_op_i_2_n_0));
  LUT6 #(
    .INIT(64'h007F00700FFF0FFF)) 
    pend_rd_op_i_4
       (.I0(ar_active),
        .I1(end_brst_rd),
        .I2(rd_data_sm_cs[1]),
        .I3(bram_addr_ld_en),
        .I4(pend_rd_op_i_8_n_0),
        .I5(rd_data_sm_cs[2]),
        .O(pend_rd_op_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h7)) 
    pend_rd_op_i_5
       (.I0(end_brst_rd),
        .I1(ar_active),
        .O(pend_rd_op_i_5_n_0));
  LUT6 #(
    .INIT(64'h00007070000F7F7F)) 
    pend_rd_op_i_6
       (.I0(ar_active),
        .I1(end_brst_rd),
        .I2(rd_data_sm_cs[2]),
        .I3(\FSM_sequential_rlast_sm_cs[2]_i_2_n_0 ),
        .I4(bram_addr_ld_en),
        .I5(pend_rd_op),
        .O(pend_rd_op_i_6_n_0));
  LUT6 #(
    .INIT(64'h7070F0F0707FFFFF)) 
    pend_rd_op_i_7
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(rd_data_sm_cs[2]),
        .I3(s_axi_rlast),
        .I4(pend_rd_op),
        .I5(bram_addr_ld_en),
        .O(pend_rd_op_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    pend_rd_op_i_8
       (.I0(pend_rd_op),
        .I1(s_axi_rlast),
        .O(pend_rd_op_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pend_rd_op_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(pend_rd_op_i_1_n_0),
        .Q(pend_rd_op),
        .R(bram_rst_b));
  MUXF7 pend_rd_op_reg_i_3
       (.I0(pend_rd_op_i_6_n_0),
        .I1(pend_rd_op_i_7_n_0),
        .O(pend_rd_op_reg_i_3_n_0),
        .S(rd_data_sm_cs[1]));
  LUT6 #(
    .INIT(64'h000000000000E666)) 
    rd_skid_buf_ld_reg_i_1
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(s_axi_rready),
        .I3(s_axi_rvalid),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[2]),
        .O(rd_skid_buf_ld_cmb));
  FDRE #(
    .INIT(1'b0)) 
    rd_skid_buf_ld_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_skid_buf_ld_cmb),
        .Q(rd_skid_buf_ld_reg),
        .R(bram_rst_b));
  LUT4 #(
    .INIT(16'hFE02)) 
    rddata_mux_sel_i_1
       (.I0(rddata_mux_sel_cmb),
        .I1(rd_data_sm_cs[3]),
        .I2(rddata_mux_sel_i_3_n_0),
        .I3(rddata_mux_sel),
        .O(rddata_mux_sel_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000D088D080)) 
    rddata_mux_sel_i_2
       (.I0(rd_data_sm_cs[0]),
        .I1(bram_en_int_i_9_n_0),
        .I2(rd_data_sm_cs[2]),
        .I3(\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0 ),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[3]),
        .O(rddata_mux_sel_cmb));
  LUT6 #(
    .INIT(64'hF000770FF00077FF)) 
    rddata_mux_sel_i_3
       (.I0(s_axi_rvalid),
        .I1(s_axi_rready),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(axi_rd_burst_two_reg_n_0),
        .O(rddata_mux_sel_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rddata_mux_sel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rddata_mux_sel_i_1_n_0),
        .Q(rddata_mux_sel),
        .R(bram_rst_b));
  LUT4 #(
    .INIT(16'hEAAA)) 
    s_axi_arready_INST_0
       (.I0(axi_arready_int),
        .I1(s_axi_rready),
        .I2(s_axi_rvalid),
        .I3(axi_early_arready_int),
        .O(s_axi_arready));
endmodule

(* ORIG_REF_NAME = "wr_chnl" *) 
module sc7z010_demo_axi_bram_ctrl_0_0_wr_chnl
   (axi_aresetn_d3,
    axi_aresetn_re_reg,
    bram_en_a,
    bram_wrdata_a,
    s_axi_bvalid,
    \GEN_AW_DUAL.aw_active_reg_0 ,
    s_axi_wready,
    s_axi_awready,
    bram_addr_a,
    s_axi_bid,
    bram_we_a,
    s_axi_aresetn_0,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_aresetn,
    s_axi_wdata,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_awid,
    s_axi_bready,
    s_axi_awburst,
    s_axi_wlast,
    s_axi_awlen,
    s_axi_wstrb);
  output axi_aresetn_d3;
  output axi_aresetn_re_reg;
  output bram_en_a;
  output [31:0]bram_wrdata_a;
  output s_axi_bvalid;
  output \GEN_AW_DUAL.aw_active_reg_0 ;
  output s_axi_wready;
  output s_axi_awready;
  output [10:0]bram_addr_a;
  output [11:0]s_axi_bid;
  output [3:0]bram_we_a;
  input s_axi_aresetn_0;
  input s_axi_aclk;
  input [10:0]s_axi_awaddr;
  input s_axi_aresetn;
  input [31:0]s_axi_wdata;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input [11:0]s_axi_awid;
  input s_axi_bready;
  input [1:0]s_axi_awburst;
  input s_axi_wlast;
  input [7:0]s_axi_awlen;
  input [3:0]s_axi_wstrb;

  wire BID_FIFO_n_0;
  wire BID_FIFO_n_1;
  wire BID_FIFO_n_10;
  wire BID_FIFO_n_11;
  wire BID_FIFO_n_12;
  wire BID_FIFO_n_13;
  wire BID_FIFO_n_15;
  wire BID_FIFO_n_16;
  wire BID_FIFO_n_2;
  wire BID_FIFO_n_3;
  wire BID_FIFO_n_4;
  wire BID_FIFO_n_5;
  wire BID_FIFO_n_6;
  wire BID_FIFO_n_7;
  wire BID_FIFO_n_8;
  wire BID_FIFO_n_9;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_7_n_0 ;
  wire \GEN_AWREADY.axi_awready_int_i_1_n_0 ;
  wire \GEN_AW_DUAL.aw_active_i_2_n_0 ;
  wire \GEN_AW_DUAL.aw_active_reg_0 ;
  wire \GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_2_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_3_n_0 ;
  wire \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3__0_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ;
  wire \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ;
  wire \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ;
  wire \I_RD_CHNL/axi_aresetn_d1 ;
  wire \I_RD_CHNL/axi_aresetn_d2 ;
  wire I_WRAP_BRST_n_0;
  wire I_WRAP_BRST_n_10;
  wire I_WRAP_BRST_n_11;
  wire I_WRAP_BRST_n_12;
  wire I_WRAP_BRST_n_13;
  wire I_WRAP_BRST_n_14;
  wire I_WRAP_BRST_n_16;
  wire I_WRAP_BRST_n_17;
  wire I_WRAP_BRST_n_18;
  wire I_WRAP_BRST_n_19;
  wire I_WRAP_BRST_n_2;
  wire I_WRAP_BRST_n_20;
  wire I_WRAP_BRST_n_21;
  wire I_WRAP_BRST_n_3;
  wire I_WRAP_BRST_n_4;
  wire I_WRAP_BRST_n_5;
  wire I_WRAP_BRST_n_6;
  wire I_WRAP_BRST_n_7;
  wire I_WRAP_BRST_n_8;
  wire I_WRAP_BRST_n_9;
  wire aw_active;
  wire axi_aresetn_d3;
  wire axi_aresetn_re;
  wire axi_aresetn_re_reg;
  wire axi_awaddr_full;
  wire [1:0]axi_awburst_pipe;
  wire [11:0]axi_awid_pipe;
  wire [7:0]axi_awlen_pipe;
  wire axi_awlen_pipe_1_or_2;
  wire [1:1]axi_awsize_pipe;
  wire \axi_bid_int[11]_i_4_n_0 ;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire axi_wr_burst_cmb;
  wire axi_wr_burst_i_1_n_0;
  wire axi_wr_burst_i_3_n_0;
  wire axi_wready_int_mod_i_1_n_0;
  wire axi_wready_int_mod_i_2_n_0;
  wire axi_wready_int_mod_i_3_n_0;
  wire axi_wready_int_mod_i_5_n_0;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_i_2_n_0;
  wire bid_gets_fifo_load_d1_i_3_n_0;
  wire [10:0]bram_addr_a;
  wire bram_addr_ld_en;
  wire bram_en_a;
  wire bram_en_cmb;
  wire [3:0]bram_we_a;
  wire [31:0]bram_wrdata_a;
  wire [2:0]bvalid_cnt;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire clr_bram_we;
  wire clr_bram_we_cmb;
  wire curr_awlen_reg_1_or_2;
  wire curr_awlen_reg_1_or_20;
  wire curr_awlen_reg_1_or_2_i_2_n_0;
  wire curr_awlen_reg_1_or_2_i_3_n_0;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire delay_aw_active_clr;
  wire last_data_ack_mod;
  wire p_18_out;
  wire [9:9]p_1_in;
  wire p_9_out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [10:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [11:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [11:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wr_addr_sm_cs;
  (* RTL_KEEP = "yes" *) wire [2:0]wr_data_sm_cs;
  wire [0:0]wr_data_sm_ns__0;
  wire wrdata_reg_ld;

  sc7z010_demo_axi_bram_ctrl_0_0_SRL_FIFO BID_FIFO
       (.D({BID_FIFO_n_2,BID_FIFO_n_3,BID_FIFO_n_4,BID_FIFO_n_5,BID_FIFO_n_6,BID_FIFO_n_7,BID_FIFO_n_8,BID_FIFO_n_9,BID_FIFO_n_10,BID_FIFO_n_11,BID_FIFO_n_12,BID_FIFO_n_13}),
        .Data_Exists_DFF_0(BID_FIFO_n_0),
        .E(BID_FIFO_n_1),
        .\GEN_AWREADY.axi_aresetn_d3_reg (axi_aresetn_d3),
        .\GEN_AW_DUAL.wr_addr_sm_cs_reg (I_WRAP_BRST_n_17),
        .\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg (\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg (BID_FIFO_n_15),
        .Q(axi_awid_pipe),
        .aw_active(aw_active),
        .axi_awaddr_full(axi_awaddr_full),
        .axi_awlen_pipe_1_or_2(axi_awlen_pipe_1_or_2),
        .axi_bvalid_int_reg(bid_gets_fifo_load_d1_i_3_n_0),
        .axi_bvalid_int_reg_0(s_axi_bvalid),
        .axi_wr_burst(axi_wr_burst),
        .axi_wready_int_mod_reg(BID_FIFO_n_16),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .bram_addr_ld_en(bram_addr_ld_en),
        .bvalid_cnt(bvalid_cnt),
        .\bvalid_cnt_reg[1] (\axi_bid_int[11]_i_4_n_0 ),
        .\bvalid_cnt_reg[1]_0 (bid_gets_fifo_load_d1_i_2_n_0),
        .\bvalid_cnt_reg[2] (I_WRAP_BRST_n_16),
        .curr_awlen_reg_1_or_2(curr_awlen_reg_1_or_2),
        .last_data_ack_mod(last_data_ack_mod),
        .out(wr_data_sm_cs),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn_0),
        .s_axi_awid(s_axi_awid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1 
       (.I0(wr_data_sm_ns__0),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I2(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8B888BB)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[2]),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .I3(BID_FIFO_n_16),
        .I4(wr_data_sm_cs[1]),
        .I5(wr_data_sm_cs[0]),
        .O(wr_data_sm_ns__0));
  LUT5 #(
    .INIT(32'h02FF0200)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ),
        .I2(wr_data_sm_cs[2]),
        .I3(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I4(wr_data_sm_cs[1]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEEAAFEBA)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2 
       (.I0(wr_data_sm_cs[1]),
        .I1(wr_data_sm_cs[0]),
        .I2(BID_FIFO_n_16),
        .I3(axi_wr_burst),
        .I4(s_axi_wlast),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF4FFF400)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1 
       (.I0(wr_data_sm_cs[2]),
        .I1(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ),
        .I3(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ),
        .I4(wr_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003020200030000)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 
       (.I0(BID_FIFO_n_16),
        .I1(wr_data_sm_cs[2]),
        .I2(wr_data_sm_cs[1]),
        .I3(axi_wr_burst),
        .I4(wr_data_sm_cs[0]),
        .I5(s_axi_wlast),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFD0D0000)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4 
       (.I0(BID_FIFO_n_15),
        .I1(BID_FIFO_n_16),
        .I2(wr_data_sm_cs[1]),
        .I3(s_axi_wvalid),
        .I4(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ),
        .I5(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_7_n_0 ),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h5515)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5 
       (.I0(I_WRAP_BRST_n_18),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[2]),
        .I3(bvalid_cnt[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6 
       (.I0(wr_data_sm_cs[0]),
        .I1(wr_data_sm_cs[2]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000055D0)) 
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_7 
       (.I0(wr_data_sm_cs[1]),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .I3(wr_data_sm_cs[2]),
        .I4(wr_data_sm_cs[0]),
        .O(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1_n_0 ),
        .Q(wr_data_sm_cs[0]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1_n_0 ),
        .Q(wr_data_sm_cs[1]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "brst_wr_data:010,idle:000,w8_awaddr:001,sng_wr_data:100,b2b_w8_wr_data:011" *) 
  (* KEEP = "yes" *) 
  FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1_n_0 ),
        .Q(wr_data_sm_cs[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_aresetn),
        .Q(\I_RD_CHNL/axi_aresetn_d1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\I_RD_CHNL/axi_aresetn_d1 ),
        .Q(\I_RD_CHNL/axi_aresetn_d2 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_d3_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\I_RD_CHNL/axi_aresetn_d2 ),
        .Q(axi_aresetn_d3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_AWREADY.axi_aresetn_re_reg_i_1 
       (.I0(\I_RD_CHNL/axi_aresetn_d1 ),
        .I1(\I_RD_CHNL/axi_aresetn_d2 ),
        .O(axi_aresetn_re));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_aresetn_re_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_re),
        .Q(axi_aresetn_re_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFD5FFC0)) 
    \GEN_AWREADY.axi_awready_int_i_1 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .I1(axi_awaddr_full),
        .I2(bram_addr_ld_en),
        .I3(axi_aresetn_re_reg),
        .I4(s_axi_awready),
        .O(\GEN_AWREADY.axi_awready_int_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AWREADY.axi_awready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AWREADY.axi_awready_int_i_1_n_0 ),
        .Q(s_axi_awready),
        .R(s_axi_aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_AW_DUAL.aw_active_i_1 
       (.I0(axi_aresetn_d3),
        .O(\GEN_AW_DUAL.aw_active_reg_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFAAAAAAAA)) 
    \GEN_AW_DUAL.aw_active_i_2 
       (.I0(bram_addr_ld_en),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[2]),
        .I4(delay_aw_active_clr),
        .I5(aw_active),
        .O(\GEN_AW_DUAL.aw_active_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_DUAL.aw_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_DUAL.aw_active_i_2_n_0 ),
        .Q(aw_active),
        .R(\GEN_AW_DUAL.aw_active_reg_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_AW_DUAL.last_data_ack_mod_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wvalid),
        .I2(s_axi_wlast),
        .O(p_18_out));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_DUAL.last_data_ack_mod_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_18_out),
        .Q(last_data_ack_mod),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h00000020)) 
    \GEN_AW_DUAL.wr_addr_sm_cs_i_1 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_2_n_0 ),
        .I1(wr_addr_sm_cs),
        .I2(s_axi_awvalid),
        .I3(axi_awaddr_full),
        .I4(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_3_n_0 ),
        .O(\GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ));
  FDRE \GEN_AW_DUAL.wr_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_DUAL.wr_addr_sm_cs_i_1_n_0 ),
        .Q(wr_addr_sm_cs),
        .R(\GEN_AW_DUAL.aw_active_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[8]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[9]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[10]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[0]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[1]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[2]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[3]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[4]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[5]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[6]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awaddr[7]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h5C00)) 
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .I2(axi_awaddr_full),
        .I3(s_axi_aresetn),
        .O(\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1_n_0 ),
        .Q(axi_awaddr_full),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h03AA)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I1(s_axi_awburst[1]),
        .I2(s_axi_awburst[0]),
        .I3(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .O(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1_n_0 ),
        .Q(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awburst[0]),
        .Q(axi_awburst_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awburst[1]),
        .Q(axi_awburst_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[0]),
        .Q(axi_awid_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[10]),
        .Q(axi_awid_pipe[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[11]),
        .Q(axi_awid_pipe[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[1]),
        .Q(axi_awid_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[2]),
        .Q(axi_awid_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[3]),
        .Q(axi_awid_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[4]),
        .Q(axi_awid_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[5]),
        .Q(axi_awid_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[6]),
        .Q(axi_awid_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[7]),
        .Q(axi_awid_pipe[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[8]),
        .Q(axi_awid_pipe[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awid[9]),
        .Q(axi_awid_pipe[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_2_n_0 ),
        .I2(wr_addr_sm_cs),
        .I3(s_axi_awvalid),
        .I4(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_3_n_0 ),
        .I5(axi_aresetn_d3),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFBF)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_2 
       (.I0(I_WRAP_BRST_n_16),
        .I1(last_data_ack_mod),
        .I2(axi_awaddr_full),
        .I3(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .I4(curr_awlen_reg_1_or_2),
        .I5(axi_awlen_pipe_1_or_2),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h1555)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_3 
       (.I0(aw_active),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[0]),
        .I3(bvalid_cnt[2]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_1 
       (.I0(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awlen[3]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[7]),
        .O(p_9_out));
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awlen[6]),
        .O(\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(p_9_out),
        .Q(axi_awlen_pipe_1_or_2),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[0]),
        .Q(axi_awlen_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[1]),
        .Q(axi_awlen_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[2]),
        .Q(axi_awlen_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[3]),
        .Q(axi_awlen_pipe[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[4]),
        .Q(axi_awlen_pipe[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[5]),
        .Q(axi_awlen_pipe[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[6]),
        .Q(axi_awlen_pipe[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(s_axi_awlen[7]),
        .Q(axi_awlen_pipe[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_AW_PIPE_DUAL.axi_awlen_pipe[7]_i_1_n_0 ),
        .D(1'b1),
        .Q(axi_awsize_pipe),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 
       (.I0(bram_addr_a[7]),
        .I1(bram_addr_a[5]),
        .I2(I_WRAP_BRST_n_13),
        .I3(bram_addr_a[4]),
        .I4(bram_addr_a[6]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3__0 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[8]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 
       (.I0(wr_data_sm_cs[0]),
        .I1(wr_data_sm_cs[1]),
        .I2(s_axi_wvalid),
        .I3(wr_data_sm_cs[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFDFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7__0 
       (.I0(bram_addr_a[8]),
        .I1(bram_addr_a[6]),
        .I2(bram_addr_a[4]),
        .I3(I_WRAP_BRST_n_13),
        .I4(bram_addr_a[5]),
        .I5(bram_addr_a[7]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9__0 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[9]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9__0_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(bram_addr_a[10]),
        .I1(I_WRAP_BRST_n_12),
        .I2(p_1_in),
        .I3(I_WRAP_BRST_n_0),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2__0 
       (.I0(bram_addr_a[0]),
        .I1(bram_addr_a[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4__0 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2__0 
       (.I0(bram_addr_a[3]),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_a[1]),
        .I3(bram_addr_a[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4__0 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[3]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3__0 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[4]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2 
       (.I0(bram_addr_a[4]),
        .I1(bram_addr_a[2]),
        .I2(bram_addr_a[1]),
        .I3(bram_addr_a[0]),
        .I4(bram_addr_a[3]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3__0 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[5]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2 
       (.I0(bram_addr_a[5]),
        .I1(bram_addr_a[3]),
        .I2(bram_addr_a[0]),
        .I3(bram_addr_a[1]),
        .I4(bram_addr_a[2]),
        .I5(bram_addr_a[4]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3__0 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[6]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2 
       (.I0(bram_addr_a[6]),
        .I1(bram_addr_a[4]),
        .I2(I_WRAP_BRST_n_13),
        .I3(bram_addr_a[5]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3__0 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[7]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_14),
        .D(I_WRAP_BRST_n_3),
        .Q(bram_addr_a[8]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_14),
        .D(I_WRAP_BRST_n_2),
        .Q(bram_addr_a[9]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1_n_0 ),
        .Q(bram_addr_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_14),
        .D(I_WRAP_BRST_n_11),
        .Q(bram_addr_a[0]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_14),
        .D(I_WRAP_BRST_n_10),
        .Q(bram_addr_a[1]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_14),
        .D(I_WRAP_BRST_n_9),
        .Q(bram_addr_a[2]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_14),
        .D(I_WRAP_BRST_n_8),
        .Q(bram_addr_a[3]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_14),
        .D(I_WRAP_BRST_n_7),
        .Q(bram_addr_a[4]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_14),
        .D(I_WRAP_BRST_n_6),
        .Q(bram_addr_a[5]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_14),
        .D(I_WRAP_BRST_n_5),
        .Q(bram_addr_a[6]),
        .R(I_WRAP_BRST_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(I_WRAP_BRST_n_14),
        .D(I_WRAP_BRST_n_4),
        .Q(bram_addr_a[7]),
        .R(I_WRAP_BRST_n_0));
  LUT6 #(
    .INIT(64'h0000F0F033305554)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ),
        .I1(wr_data_sm_cs[0]),
        .I2(axi_wdata_full_reg),
        .I3(s_axi_wvalid),
        .I4(wr_data_sm_cs[2]),
        .I5(wr_data_sm_cs[1]),
        .O(axi_wdata_full_cmb));
  LUT5 #(
    .INIT(32'hF080FF80)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2 
       (.I0(bram_addr_ld_en),
        .I1(axi_awaddr_full),
        .I2(wr_data_sm_cs[0]),
        .I3(BID_FIFO_n_16),
        .I4(axi_wdata_full_reg),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h5555000044544444)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_1 
       (.I0(wr_data_sm_cs[2]),
        .I1(axi_wready_int_mod_i_5_n_0),
        .I2(BID_FIFO_n_16),
        .I3(wr_data_sm_cs[0]),
        .I4(s_axi_wvalid),
        .I5(wr_data_sm_cs[1]),
        .O(bram_en_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(bram_en_a),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h8A8A888A88888888)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_1 
       (.I0(axi_wready_int_mod_i_3_n_0),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ),
        .I2(axi_wr_burst),
        .I3(BID_FIFO_n_15),
        .I4(BID_FIFO_n_16),
        .I5(wr_data_sm_cs[0]),
        .O(clr_bram_we_cmb));
  LUT4 #(
    .INIT(16'h0800)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2 
       (.I0(s_axi_wlast),
        .I1(BID_FIFO_n_16),
        .I2(wr_data_sm_cs[0]),
        .I3(s_axi_wvalid),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clr_bram_we_cmb),
        .Q(clr_bram_we),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h0000EEEF0000EEE0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1 
       (.I0(axi_wready_int_mod_i_5_n_0),
        .I1(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ),
        .I2(clr_bram_we_cmb),
        .I3(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ),
        .I4(wr_data_sm_cs[2]),
        .I5(delay_aw_active_clr),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2 
       (.I0(s_axi_wlast),
        .I1(wr_data_sm_cs[0]),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[1]),
        .I4(s_axi_wlast),
        .I5(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .O(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1_n_0 ),
        .Q(delay_aw_active_clr),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF7D50000FFFFFFFF)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_1 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .I4(clr_bram_we),
        .I5(s_axi_aresetn),
        .O(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h082A)) 
    \GEN_WR_NO_ECC.bram_we_int[3]_i_2 
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .O(wrdata_reg_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(bram_we_a[0]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(bram_we_a[1]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(bram_we_a[2]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(bram_we_a[3]),
        .R(\GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0 ));
  sc7z010_demo_axi_bram_ctrl_0_0_wrap_brst I_WRAP_BRST
       (.D({I_WRAP_BRST_n_2,I_WRAP_BRST_n_3,I_WRAP_BRST_n_4,I_WRAP_BRST_n_5,I_WRAP_BRST_n_6,I_WRAP_BRST_n_7,I_WRAP_BRST_n_8,I_WRAP_BRST_n_9,I_WRAP_BRST_n_10,I_WRAP_BRST_n_11}),
        .E(I_WRAP_BRST_n_14),
        .\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] (\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4_n_0 ),
        .\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_5_n_0 ),
        .\GEN_AWREADY.axi_aresetn_d3_reg (axi_aresetn_d3),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] (\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_3__0_n_0 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] (\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9__0_n_0 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] (\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3_n_0 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] (\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_4__0_n_0 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] (\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_4__0_n_0 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] (\GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3__0_n_0 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] (\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_3__0_n_0 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] (\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_3__0_n_0 ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] (\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_3__0_n_0 ),
        .\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg (\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] (\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7__0_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] (I_WRAP_BRST_n_0),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 (I_WRAP_BRST_n_12),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] (\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2__0_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] (\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2__0_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] (I_WRAP_BRST_n_13),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 (\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] (\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] (\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2_n_0 ),
        .\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] (\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2_n_0 ),
        .Q(axi_awlen_pipe[3:0]),
        .aw_active(aw_active),
        .axi_awaddr_full(axi_awaddr_full),
        .axi_awlen_pipe_1_or_2(axi_awlen_pipe_1_or_2),
        .axi_awsize_pipe(axi_awsize_pipe),
        .bram_addr_a(bram_addr_a[9:0]),
        .bram_addr_ld_en(bram_addr_ld_en),
        .bvalid_cnt(bvalid_cnt),
        .curr_awlen_reg_1_or_2(curr_awlen_reg_1_or_2),
        .curr_fixed_burst(curr_fixed_burst),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_reg(I_WRAP_BRST_n_20),
        .curr_wrap_burst(curr_wrap_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .curr_wrap_burst_reg_reg(I_WRAP_BRST_n_21),
        .last_data_ack_mod(last_data_ack_mod),
        .out(wr_data_sm_cs),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(s_axi_aresetn_0),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld_reg[12]_0 (p_1_in),
        .\save_init_bram_addr_ld_reg[12]_1 (I_WRAP_BRST_n_16),
        .\save_init_bram_addr_ld_reg[12]_2 (I_WRAP_BRST_n_17),
        .\save_init_bram_addr_ld_reg[12]_3 (I_WRAP_BRST_n_18),
        .wr_addr_sm_cs(wr_addr_sm_cs),
        .\wrap_burst_total_reg[0]_0 (I_WRAP_BRST_n_19));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \axi_bid_int[11]_i_4 
       (.I0(bvalid_cnt[1]),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[0]),
        .I3(s_axi_bvalid),
        .I4(s_axi_bready),
        .O(\axi_bid_int[11]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_13),
        .Q(s_axi_bid[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_3),
        .Q(s_axi_bid[10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_2),
        .Q(s_axi_bid[11]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_12),
        .Q(s_axi_bid[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_11),
        .Q(s_axi_bid[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_10),
        .Q(s_axi_bid[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_9),
        .Q(s_axi_bid[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_8),
        .Q(s_axi_bid[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_7),
        .Q(s_axi_bid[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_6),
        .Q(s_axi_bid[7]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_5),
        .Q(s_axi_bid[8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(BID_FIFO_n_1),
        .D(BID_FIFO_n_4),
        .Q(s_axi_bid[9]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hA8AAA8A8AAAAAAAA)) 
    axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .I3(\axi_bid_int[11]_i_4_n_0 ),
        .I4(bvalid_cnt[0]),
        .I5(BID_FIFO_n_0),
        .O(axi_bvalid_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    axi_wr_burst_i_1
       (.I0(axi_wr_burst_cmb),
        .I1(axi_wr_burst_i_3_n_0),
        .I2(axi_wr_burst),
        .O(axi_wr_burst_i_1_n_0));
  LUT6 #(
    .INIT(64'h00030003ECEF2023)) 
    axi_wr_burst_i_2
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[1]),
        .I3(s_axi_wlast),
        .I4(s_axi_wvalid),
        .I5(wr_data_sm_cs[2]),
        .O(axi_wr_burst_cmb));
  LUT6 #(
    .INIT(64'h440C400C400C400C)) 
    axi_wr_burst_i_3
       (.I0(wr_data_sm_cs[2]),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[1]),
        .I4(s_axi_wlast),
        .I5(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_5_n_0 ),
        .O(axi_wr_burst_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_i_1_n_0),
        .Q(axi_wr_burst),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hA8A8A8A888A88888)) 
    axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wready_int_mod_i_2_n_0),
        .I2(axi_wready_int_mod_i_3_n_0),
        .I3(axi_wdata_full_reg),
        .I4(BID_FIFO_n_16),
        .I5(axi_wready_int_mod_i_5_n_0),
        .O(axi_wready_int_mod_i_1_n_0));
  LUT5 #(
    .INIT(32'hCCEE88AF)) 
    axi_wready_int_mod_i_2
       (.I0(wr_data_sm_cs[1]),
        .I1(wr_data_sm_cs[2]),
        .I2(s_axi_wvalid),
        .I3(axi_wdata_full_reg),
        .I4(wr_data_sm_cs[0]),
        .O(axi_wready_int_mod_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    axi_wready_int_mod_i_3
       (.I0(wr_data_sm_cs[2]),
        .I1(wr_data_sm_cs[1]),
        .O(axi_wready_int_mod_i_3_n_0));
  LUT4 #(
    .INIT(16'hA888)) 
    axi_wready_int_mod_i_5
       (.I0(wr_data_sm_cs[0]),
        .I1(BID_FIFO_n_16),
        .I2(axi_awaddr_full),
        .I3(bram_addr_ld_en),
        .O(axi_wready_int_mod_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hE)) 
    bid_gets_fifo_load_d1_i_2
       (.I0(bvalid_cnt[1]),
        .I1(bvalid_cnt[2]),
        .O(bid_gets_fifo_load_d1_i_2_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    bid_gets_fifo_load_d1_i_3
       (.I0(s_axi_bready),
        .I1(s_axi_bvalid),
        .O(bid_gets_fifo_load_d1_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h0FFFF000E0001FFF)) 
    \bvalid_cnt[0]_i_1 
       (.I0(bvalid_cnt[1]),
        .I1(bvalid_cnt[2]),
        .I2(s_axi_bvalid),
        .I3(s_axi_bready),
        .I4(BID_FIFO_n_0),
        .I5(bvalid_cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA7FEA7F15801500)) 
    \bvalid_cnt[1]_i_1 
       (.I0(BID_FIFO_n_0),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .I3(bvalid_cnt[0]),
        .I4(bvalid_cnt[2]),
        .I5(bvalid_cnt[1]),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAFF1500FF7F0000)) 
    \bvalid_cnt[2]_i_1 
       (.I0(BID_FIFO_n_0),
        .I1(s_axi_bready),
        .I2(s_axi_bvalid),
        .I3(bvalid_cnt[0]),
        .I4(bvalid_cnt[2]),
        .I5(bvalid_cnt[1]),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(bvalid_cnt[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(bvalid_cnt[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[2]_i_1_n_0 ),
        .Q(bvalid_cnt[2]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h00000000FFFF0001)) 
    curr_awlen_reg_1_or_2_i_1
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awlen[4]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awlen[7]),
        .I4(axi_awaddr_full),
        .I5(curr_awlen_reg_1_or_2_i_2_n_0),
        .O(curr_awlen_reg_1_or_20));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    curr_awlen_reg_1_or_2_i_2
       (.I0(axi_awlen_pipe[6]),
        .I1(axi_awlen_pipe[5]),
        .I2(axi_awlen_pipe[7]),
        .I3(axi_awlen_pipe[4]),
        .I4(axi_awaddr_full),
        .I5(curr_awlen_reg_1_or_2_i_3_n_0),
        .O(curr_awlen_reg_1_or_2_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFEFEFFFFAEFEA)) 
    curr_awlen_reg_1_or_2_i_3
       (.I0(I_WRAP_BRST_n_19),
        .I1(axi_awlen_pipe[2]),
        .I2(axi_awaddr_full),
        .I3(s_axi_awlen[2]),
        .I4(axi_awlen_pipe[1]),
        .I5(s_axi_awlen[1]),
        .O(curr_awlen_reg_1_or_2_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    curr_awlen_reg_1_or_2_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_awlen_reg_1_or_20),
        .Q(curr_awlen_reg_1_or_2),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h00053305)) 
    curr_fixed_burst_reg_i_2
       (.I0(s_axi_awburst[0]),
        .I1(axi_awburst_pipe[0]),
        .I2(s_axi_awburst[1]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[1]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_20),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    curr_wrap_burst_reg_i_2
       (.I0(s_axi_awburst[1]),
        .I1(axi_awburst_pipe[1]),
        .I2(s_axi_awburst[0]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[0]),
        .O(curr_wrap_burst));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(I_WRAP_BRST_n_21),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module sc7z010_demo_axi_bram_ctrl_0_0_wrap_brst
   (\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ,
    bram_addr_ld_en,
    D,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ,
    E,
    \save_init_bram_addr_ld_reg[12]_0 ,
    \save_init_bram_addr_ld_reg[12]_1 ,
    \save_init_bram_addr_ld_reg[12]_2 ,
    \save_init_bram_addr_ld_reg[12]_3 ,
    \wrap_burst_total_reg[0]_0 ,
    curr_fixed_burst_reg_reg,
    curr_wrap_burst_reg_reg,
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ,
    \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]_0 ,
    s_axi_aresetn,
    bram_addr_a,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ,
    axi_awaddr_full,
    s_axi_awaddr,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] ,
    s_axi_wvalid,
    out,
    curr_fixed_burst_reg,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ,
    \GEN_AWREADY.axi_aresetn_d3_reg ,
    aw_active,
    last_data_ack_mod,
    wr_addr_sm_cs,
    s_axi_awvalid,
    bvalid_cnt,
    \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ,
    curr_awlen_reg_1_or_2,
    axi_awlen_pipe_1_or_2,
    curr_wrap_burst_reg,
    Q,
    axi_awsize_pipe,
    s_axi_awlen,
    curr_fixed_burst,
    curr_wrap_burst,
    s_axi_aresetn_0,
    s_axi_aclk);
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  output bram_addr_ld_en;
  output [9:0]D;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  output [0:0]E;
  output [0:0]\save_init_bram_addr_ld_reg[12]_0 ;
  output \save_init_bram_addr_ld_reg[12]_1 ;
  output \save_init_bram_addr_ld_reg[12]_2 ;
  output \save_init_bram_addr_ld_reg[12]_3 ;
  output \wrap_burst_total_reg[0]_0 ;
  output curr_fixed_burst_reg_reg;
  output curr_wrap_burst_reg_reg;
  input \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ;
  input \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]_0 ;
  input s_axi_aresetn;
  input [9:0]bram_addr_a;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  input axi_awaddr_full;
  input [10:0]s_axi_awaddr;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] ;
  input s_axi_wvalid;
  input [2:0]out;
  input curr_fixed_burst_reg;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  input \GEN_AWREADY.axi_aresetn_d3_reg ;
  input aw_active;
  input last_data_ack_mod;
  input wr_addr_sm_cs;
  input s_axi_awvalid;
  input [2:0]bvalid_cnt;
  input \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ;
  input curr_awlen_reg_1_or_2;
  input axi_awlen_pipe_1_or_2;
  input curr_wrap_burst_reg;
  input [3:0]Q;
  input [0:0]axi_awsize_pipe;
  input [3:0]s_axi_awlen;
  input curr_fixed_burst;
  input curr_wrap_burst;
  input s_axi_aresetn_0;
  input s_axi_aclk;

  wire [9:0]D;
  wire [0:0]E;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ;
  wire \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]_0 ;
  wire \GEN_AWREADY.axi_aresetn_d3_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] ;
  wire \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_10__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  wire [3:0]Q;
  wire aw_active;
  wire axi_awaddr_full;
  wire axi_awlen_pipe_1_or_2;
  wire [0:0]axi_awsize_pipe;
  wire [9:0]bram_addr_a;
  wire bram_addr_ld_en;
  wire [2:0]bvalid_cnt;
  wire curr_awlen_reg_1_or_2;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_reg;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_reg;
  wire last_data_ack_mod;
  wire [2:0]out;
  wire [8:0]p_1_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [10:0]s_axi_awaddr;
  wire [3:0]s_axi_awlen;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire [12:3]save_init_bram_addr_ld;
  wire [0:0]\save_init_bram_addr_ld_reg[12]_0 ;
  wire \save_init_bram_addr_ld_reg[12]_1 ;
  wire \save_init_bram_addr_ld_reg[12]_2 ;
  wire \save_init_bram_addr_ld_reg[12]_3 ;
  wire wr_addr_sm_cs;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_1__0_n_0 ;
  wire \wrap_burst_total[0]_i_2__0_n_0 ;
  wire \wrap_burst_total[0]_i_3_n_0 ;
  wire \wrap_burst_total[0]_i_4_n_0 ;
  wire \wrap_burst_total[0]_i_5_n_0 ;
  wire \wrap_burst_total[1]_i_1__0_n_0 ;
  wire \wrap_burst_total[2]_i_1__0_n_0 ;
  wire \wrap_burst_total[2]_i_2__0_n_0 ;
  wire \wrap_burst_total_reg[0]_0 ;

  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 
       (.I0(bram_addr_a[8]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I3(save_init_bram_addr_ld[10]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h000000008FA00000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_10__0 
       (.I0(bram_addr_a[1]),
        .I1(bram_addr_a[2]),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[0]),
        .I4(bram_addr_a[0]),
        .I5(wrap_burst_total[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h1110FFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1__0 
       (.I0(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] ),
        .I1(bram_addr_ld_en),
        .I2(\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]_0 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ),
        .I4(s_axi_aresetn),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ));
  LUT6 #(
    .INIT(64'h55555555555D5555)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I1(s_axi_wvalid),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(curr_fixed_burst_reg),
        .O(E));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3 
       (.I0(bram_addr_a[9]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I3(save_init_bram_addr_ld[11]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h55555555FFFFF7FF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6 
       (.I0(curr_wrap_burst_reg),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ),
        .I2(wrap_burst_total[0]),
        .I3(wrap_burst_total[2]),
        .I4(wrap_burst_total[1]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_10__0_n_0 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8 
       (.I0(bram_addr_ld_en),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555515555)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2 
       (.I0(bram_addr_ld_en),
        .I1(s_axi_wvalid),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[1]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ));
  LUT6 #(
    .INIT(64'hF4FFF44444444444)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1 
       (.I0(bram_addr_a[0]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[0]),
        .I5(bram_addr_ld_en),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1 
       (.I0(bram_addr_a[0]),
        .I1(bram_addr_a[1]),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2__0_n_0 ),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hA08A)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2__0 
       (.I0(save_init_bram_addr_ld[3]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 
       (.I0(bram_addr_a[2]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'hA28A)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3 
       (.I0(save_init_bram_addr_ld[4]),
        .I1(wrap_burst_total[1]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[0]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I2(save_init_bram_addr_ld[5]),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3__0_n_0 ),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3__0 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 
       (.I0(bram_addr_a[4]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I3(save_init_bram_addr_ld[6]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2 
       (.I0(bram_addr_a[3]),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_a[1]),
        .I3(bram_addr_a[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 
       (.I0(bram_addr_a[5]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I3(save_init_bram_addr_ld[7]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 
       (.I0(bram_addr_a[6]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I3(save_init_bram_addr_ld[8]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 
       (.I0(bram_addr_a[7]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I3(save_init_bram_addr_ld[9]),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I5(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    curr_fixed_burst_reg_i_1__0
       (.I0(curr_fixed_burst_reg),
        .I1(bram_addr_ld_en),
        .I2(curr_fixed_burst),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .O(curr_fixed_burst_reg_reg));
  LUT4 #(
    .INIT(16'h00E2)) 
    curr_wrap_burst_reg_i_1__0
       (.I0(curr_wrap_burst_reg),
        .I1(bram_addr_ld_en),
        .I2(curr_wrap_burst),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .O(curr_wrap_burst_reg_reg));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(save_init_bram_addr_ld[10]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[8]),
        .O(p_1_in[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(save_init_bram_addr_ld[11]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[9]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h0002000222220002)) 
    \save_init_bram_addr_ld[12]_i_1 
       (.I0(\GEN_AWREADY.axi_aresetn_d3_reg ),
        .I1(\save_init_bram_addr_ld_reg[12]_1 ),
        .I2(aw_active),
        .I3(\save_init_bram_addr_ld_reg[12]_2 ),
        .I4(last_data_ack_mod),
        .I5(\save_init_bram_addr_ld_reg[12]_3 ),
        .O(bram_addr_ld_en));
  LUT6 #(
    .INIT(64'hFE02FEFEFE020202)) 
    \save_init_bram_addr_ld[12]_i_2 
       (.I0(save_init_bram_addr_ld[12]),
        .I1(bram_addr_ld_en),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6_n_0 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[10]),
        .O(\save_init_bram_addr_ld_reg[12]_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \save_init_bram_addr_ld[12]_i_3 
       (.I0(bvalid_cnt[2]),
        .I1(bvalid_cnt[0]),
        .I2(bvalid_cnt[1]),
        .O(\save_init_bram_addr_ld_reg[12]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \save_init_bram_addr_ld[12]_i_4 
       (.I0(wr_addr_sm_cs),
        .I1(axi_awaddr_full),
        .I2(s_axi_awvalid),
        .O(\save_init_bram_addr_ld_reg[12]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \save_init_bram_addr_ld[12]_i_5 
       (.I0(axi_awaddr_full),
        .I1(\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ),
        .I2(curr_awlen_reg_1_or_2),
        .I3(axi_awlen_pipe_1_or_2),
        .O(\save_init_bram_addr_ld_reg[12]_3 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[3]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2__0_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[1]),
        .O(p_1_in[0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[4]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_3_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[2]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \save_init_bram_addr_ld[5]_i_1 
       (.I0(save_init_bram_addr_ld[5]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_3__0_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[3]),
        .O(p_1_in[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(save_init_bram_addr_ld[6]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[4]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(save_init_bram_addr_ld[7]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[5]),
        .O(p_1_in[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(save_init_bram_addr_ld[8]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[6]),
        .O(p_1_in[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(save_init_bram_addr_ld[9]),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8_n_0 ),
        .I2(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .I3(axi_awaddr_full),
        .I4(s_axi_awaddr[7]),
        .O(p_1_in[6]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[7]),
        .Q(save_init_bram_addr_ld[10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[8]),
        .Q(save_init_bram_addr_ld[11]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld_reg[12]_0 ),
        .Q(save_init_bram_addr_ld[12]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[0]),
        .Q(save_init_bram_addr_ld[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[1]),
        .Q(save_init_bram_addr_ld[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[2]),
        .Q(save_init_bram_addr_ld[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[3]),
        .Q(save_init_bram_addr_ld[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[4]),
        .Q(save_init_bram_addr_ld[7]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[5]),
        .Q(save_init_bram_addr_ld[8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(p_1_in[6]),
        .Q(save_init_bram_addr_ld[9]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h000088000000C300)) 
    \wrap_burst_total[0]_i_1__0 
       (.I0(Q[2]),
        .I1(\wrap_burst_total[0]_i_2__0_n_0 ),
        .I2(\wrap_burst_total[0]_i_3_n_0 ),
        .I3(\wrap_burst_total[0]_i_4_n_0 ),
        .I4(\wrap_burst_total_reg[0]_0 ),
        .I5(\wrap_burst_total[0]_i_5_n_0 ),
        .O(\wrap_burst_total[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[0]_i_2__0 
       (.I0(Q[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[1]),
        .O(\wrap_burst_total[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[0]_i_3 
       (.I0(Q[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[2]),
        .O(\wrap_burst_total[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[0]_i_4 
       (.I0(Q[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[0]),
        .O(\wrap_burst_total[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wrap_burst_total[0]_i_5 
       (.I0(axi_awaddr_full),
        .I1(axi_awsize_pipe),
        .O(\wrap_burst_total[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h220A880A000A880A)) 
    \wrap_burst_total[1]_i_1__0 
       (.I0(\wrap_burst_total[2]_i_2__0_n_0 ),
        .I1(axi_awsize_pipe),
        .I2(s_axi_awlen[3]),
        .I3(axi_awaddr_full),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\wrap_burst_total[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8088008880000000)) 
    \wrap_burst_total[2]_i_1__0 
       (.I0(\wrap_burst_total[2]_i_2__0_n_0 ),
        .I1(\wrap_burst_total_reg[0]_0 ),
        .I2(axi_awsize_pipe),
        .I3(axi_awaddr_full),
        .I4(Q[2]),
        .I5(s_axi_awlen[2]),
        .O(\wrap_burst_total[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hCCA000A0)) 
    \wrap_burst_total[2]_i_2__0 
       (.I0(s_axi_awlen[0]),
        .I1(Q[0]),
        .I2(s_axi_awlen[1]),
        .I3(axi_awaddr_full),
        .I4(Q[1]),
        .O(\wrap_burst_total[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[2]_i_3 
       (.I0(Q[3]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[3]),
        .O(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[0]_i_1__0_n_0 ),
        .Q(wrap_burst_total[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[1]_i_1__0_n_0 ),
        .Q(wrap_burst_total[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[2]_i_1__0_n_0 ),
        .Q(wrap_burst_total[2]),
        .R(s_axi_aresetn_0));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module sc7z010_demo_axi_bram_ctrl_0_0_wrap_brst_0
   (\FSM_sequential_rd_data_sm_cs_reg[1] ,
    SR,
    E,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ,
    bram_addr_ld_en,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ,
    D,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ,
    \save_init_bram_addr_ld_reg[12]_0 ,
    \save_init_bram_addr_ld_reg[12]_1 ,
    \wrap_burst_total_reg[1]_0 ,
    \wrap_burst_total_reg[1]_1 ,
    \wrap_burst_total_reg[1]_2 ,
    \wrap_burst_total_reg[1]_3 ,
    end_brst_rd,
    axi_b2b_brst,
    brst_zero,
    axi_rvalid_int_reg,
    s_axi_rready,
    axi_rd_burst,
    axi_rd_burst_two_reg,
    out,
    s_axi_aresetn,
    curr_fixed_burst_reg,
    Q,
    s_axi_araddr,
    axi_araddr_full,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6] ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11] ,
    \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ,
    curr_wrap_burst_reg,
    axi_aresetn_d3,
    last_bram_addr,
    \GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ,
    axi_arlen_pipe_1_or_2,
    disable_b2b_brst,
    axi_arsize_pipe_max,
    rd_addr_sm_cs,
    s_axi_arvalid,
    no_ar_ack,
    ar_active,
    pend_rd_op,
    axi_arsize_pipe,
    \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ,
    s_axi_arlen,
    s_axi_aclk);
  output \FSM_sequential_rd_data_sm_cs_reg[1] ;
  output [0:0]SR;
  output [0:0]E;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  output bram_addr_ld_en;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  output [9:0]D;
  output \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  output [0:0]\save_init_bram_addr_ld_reg[12]_0 ;
  output \save_init_bram_addr_ld_reg[12]_1 ;
  output \wrap_burst_total_reg[1]_0 ;
  output \wrap_burst_total_reg[1]_1 ;
  output \wrap_burst_total_reg[1]_2 ;
  output \wrap_burst_total_reg[1]_3 ;
  input end_brst_rd;
  input axi_b2b_brst;
  input brst_zero;
  input axi_rvalid_int_reg;
  input s_axi_rready;
  input axi_rd_burst;
  input axi_rd_burst_two_reg;
  input [3:0]out;
  input s_axi_aresetn;
  input curr_fixed_burst_reg;
  input [9:0]Q;
  input [10:0]s_axi_araddr;
  input axi_araddr_full;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6] ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11] ;
  input \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  input curr_wrap_burst_reg;
  input axi_aresetn_d3;
  input last_bram_addr;
  input \GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ;
  input axi_arlen_pipe_1_or_2;
  input disable_b2b_brst;
  input axi_arsize_pipe_max;
  input rd_addr_sm_cs;
  input s_axi_arvalid;
  input no_ar_ack;
  input ar_active;
  input pend_rd_op;
  input [0:0]axi_arsize_pipe;
  input [3:0]\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ;
  input [3:0]s_axi_arlen;
  input s_axi_aclk;

  wire [9:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rd_data_sm_cs_reg[1] ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10] ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11] ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4] ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5] ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6] ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7] ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8] ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9] ;
  wire \GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ;
  wire [3:0]\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_10_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8__0_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ;
  wire \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ;
  wire [9:0]Q;
  wire [0:0]SR;
  wire ar_active;
  wire axi_araddr_full;
  wire axi_aresetn_d3;
  wire axi_arlen_pipe_1_or_2;
  wire [0:0]axi_arsize_pipe;
  wire axi_arsize_pipe_max;
  wire axi_b2b_brst;
  wire axi_rd_burst;
  wire axi_rd_burst_two_reg;
  wire axi_rvalid_int_reg;
  wire bram_addr_ld_en;
  wire brst_zero;
  wire curr_fixed_burst_reg;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire end_brst_rd;
  wire last_bram_addr;
  wire no_ar_ack;
  wire [3:0]out;
  wire pend_rd_op;
  wire rd_addr_sm_cs;
  wire s_axi_aclk;
  wire [10:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire \save_init_bram_addr_ld[10]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[11]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[12]_i_2__0_n_0 ;
  wire \save_init_bram_addr_ld[12]_i_3__0_n_0 ;
  wire \save_init_bram_addr_ld[12]_i_4__0_n_0 ;
  wire \save_init_bram_addr_ld[12]_i_5__0_n_0 ;
  wire \save_init_bram_addr_ld[3]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[4]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[5]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[6]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[7]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[8]_i_1__0_n_0 ;
  wire \save_init_bram_addr_ld[9]_i_1__0_n_0 ;
  wire [0:0]\save_init_bram_addr_ld_reg[12]_0 ;
  wire \save_init_bram_addr_ld_reg[12]_1 ;
  wire \save_init_bram_addr_ld_reg_n_0_[10] ;
  wire \save_init_bram_addr_ld_reg_n_0_[11] ;
  wire \save_init_bram_addr_ld_reg_n_0_[3] ;
  wire \save_init_bram_addr_ld_reg_n_0_[4] ;
  wire \save_init_bram_addr_ld_reg_n_0_[5] ;
  wire \save_init_bram_addr_ld_reg_n_0_[6] ;
  wire \save_init_bram_addr_ld_reg_n_0_[7] ;
  wire \save_init_bram_addr_ld_reg_n_0_[8] ;
  wire \save_init_bram_addr_ld_reg_n_0_[9] ;
  wire \wrap_burst_total[0]_i_1_n_0 ;
  wire \wrap_burst_total[0]_i_2_n_0 ;
  wire \wrap_burst_total[1]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_1_n_0 ;
  wire \wrap_burst_total[2]_i_2_n_0 ;
  wire \wrap_burst_total_reg[1]_0 ;
  wire \wrap_burst_total_reg[1]_1 ;
  wire \wrap_burst_total_reg[1]_2 ;
  wire \wrap_burst_total_reg[1]_3 ;
  wire \wrap_burst_total_reg_n_0_[0] ;
  wire \wrap_burst_total_reg_n_0_[1] ;
  wire \wrap_burst_total_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h000EFFFF)) 
    \FSM_sequential_rd_data_sm_cs[1]_i_2 
       (.I0(axi_rd_burst),
        .I1(axi_rd_burst_two_reg),
        .I2(out[1]),
        .I3(out[2]),
        .I4(out[0]),
        .O(\FSM_sequential_rd_data_sm_cs_reg[1] ));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .I1(\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I4(Q[8]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] ),
        .O(D[8]));
  LUT4 #(
    .INIT(16'hEEEF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I1(bram_addr_ld_en),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .I3(curr_fixed_burst_reg),
        .O(E));
  LUT5 #(
    .INIT(32'h10000000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_10 
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .I2(out[2]),
        .I3(s_axi_rready),
        .I4(axi_rvalid_int_reg),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .I1(\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I4(Q[9]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hFF45FF45FFFFFF45)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3__0 
       (.I0(\FSM_sequential_rd_data_sm_cs_reg[1] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6__0_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7_n_0 ),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8__0_n_0 ),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9_n_0 ),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_10_n_0 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF2FFFFFF)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6__0 
       (.I0(end_brst_rd),
        .I1(axi_b2b_brst),
        .I2(brst_zero),
        .I3(axi_rvalid_int_reg),
        .I4(s_axi_rready),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7 
       (.I0(out[1]),
        .I1(out[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBABABAAA)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8__0 
       (.I0(out[3]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(axi_rd_burst_two_reg),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h0000F800)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4_n_0 ),
        .I3(curr_wrap_burst_reg),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]_0 ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ));
  LUT6 #(
    .INIT(64'h5040004010400040)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4 
       (.I0(\wrap_burst_total_reg_n_0_[2] ),
        .I1(\wrap_burst_total_reg_n_0_[0] ),
        .I2(Q[0]),
        .I3(\wrap_burst_total_reg_n_0_[1] ),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDD111D1)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1__0 
       (.I0(Q[0]),
        .I1(bram_addr_ld_en),
        .I2(s_axi_araddr[0]),
        .I3(axi_araddr_full),
        .I4(\GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg ),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1__0 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ),
        .I1(\GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hA08A)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .I1(\wrap_burst_total_reg_n_0_[0] ),
        .I2(\wrap_burst_total_reg_n_0_[2] ),
        .I3(\wrap_burst_total_reg_n_0_[1] ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1__0 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ),
        .I1(\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I4(Q[2]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hA28A)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .I1(\wrap_burst_total_reg_n_0_[1] ),
        .I2(\wrap_burst_total_reg_n_0_[2] ),
        .I3(\wrap_burst_total_reg_n_0_[0] ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2222F0FF2222F000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5] ),
        .I3(bram_addr_ld_en),
        .I4(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2 
       (.I0(\wrap_burst_total_reg_n_0_[1] ),
        .I1(\wrap_burst_total_reg_n_0_[2] ),
        .I2(\wrap_burst_total_reg_n_0_[0] ),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .I1(\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I4(Q[4]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h8000)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_3 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] ));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .I1(\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I4(Q[5]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .I1(\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I4(Q[6]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAAC0AACFAACFAAC0)) 
    \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .I1(\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9] ),
        .I2(bram_addr_ld_en),
        .I3(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I4(Q[7]),
        .I5(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] ),
        .O(D[7]));
  LUT1 #(
    .INIT(2'h1)) 
    bram_rst_b_INST_0
       (.I0(s_axi_aresetn),
        .O(SR));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[8]),
        .O(\save_init_bram_addr_ld[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[9]),
        .O(\save_init_bram_addr_ld[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8888888A88888888)) 
    \save_init_bram_addr_ld[12]_i_1__0 
       (.I0(axi_aresetn_d3),
        .I1(\save_init_bram_addr_ld[12]_i_3__0_n_0 ),
        .I2(\save_init_bram_addr_ld[12]_i_4__0_n_0 ),
        .I3(\save_init_bram_addr_ld[12]_i_5__0_n_0 ),
        .I4(\save_init_bram_addr_ld_reg[12]_1 ),
        .I5(last_bram_addr),
        .O(bram_addr_ld_en));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[12]_i_2__0 
       (.I0(\save_init_bram_addr_ld_reg[12]_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[10]),
        .O(\save_init_bram_addr_ld[12]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000054)) 
    \save_init_bram_addr_ld[12]_i_3__0 
       (.I0(rd_addr_sm_cs),
        .I1(axi_araddr_full),
        .I2(s_axi_arvalid),
        .I3(no_ar_ack),
        .I4(ar_active),
        .I5(pend_rd_op),
        .O(\save_init_bram_addr_ld[12]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \save_init_bram_addr_ld[12]_i_4__0 
       (.I0(brst_zero),
        .I1(axi_rvalid_int_reg),
        .I2(s_axi_rready),
        .O(\save_init_bram_addr_ld[12]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \save_init_bram_addr_ld[12]_i_5__0 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[1]),
        .I3(out[0]),
        .O(\save_init_bram_addr_ld[12]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFDFFFF)) 
    \save_init_bram_addr_ld[12]_i_6 
       (.I0(axi_araddr_full),
        .I1(\GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ),
        .I2(axi_arlen_pipe_1_or_2),
        .I3(disable_b2b_brst),
        .I4(axi_arsize_pipe_max),
        .O(\save_init_bram_addr_ld_reg[12]_1 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[3]_i_1__0 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[1]),
        .O(\save_init_bram_addr_ld[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[4]_i_1__0 
       (.I0(\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_2_n_0 ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[2]),
        .O(\save_init_bram_addr_ld[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \save_init_bram_addr_ld[5]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2_n_0 ),
        .I2(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I3(\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[3]),
        .O(\save_init_bram_addr_ld[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[4]),
        .O(\save_init_bram_addr_ld[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[5]),
        .O(\save_init_bram_addr_ld[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[6]),
        .O(\save_init_bram_addr_ld[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .I1(\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] ),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[7]),
        .O(\save_init_bram_addr_ld[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[10]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[11]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[12]_i_2__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg[12]_0 ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[3] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[3]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[4]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[5]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[6]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[7]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[8]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\save_init_bram_addr_ld[9]_i_1__0_n_0 ),
        .Q(\save_init_bram_addr_ld_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hE21D0000E2110000)) 
    \wrap_burst_total[0]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(axi_araddr_full),
        .I2(\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] [2]),
        .I3(\wrap_burst_total_reg[1]_1 ),
        .I4(\wrap_burst_total[0]_i_2_n_0 ),
        .I5(axi_arsize_pipe),
        .O(\wrap_burst_total[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000ACC0A)) 
    \wrap_burst_total[0]_i_2 
       (.I0(s_axi_arlen[0]),
        .I1(\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] [0]),
        .I2(s_axi_arlen[3]),
        .I3(axi_araddr_full),
        .I4(\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] [3]),
        .O(\wrap_burst_total[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0800F30000000000)) 
    \wrap_burst_total[1]_i_1 
       (.I0(\wrap_burst_total_reg[1]_0 ),
        .I1(axi_araddr_full),
        .I2(axi_arsize_pipe),
        .I3(\wrap_burst_total_reg[1]_1 ),
        .I4(\wrap_burst_total_reg[1]_2 ),
        .I5(\wrap_burst_total_reg[1]_3 ),
        .O(\wrap_burst_total[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_2 
       (.I0(\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] [2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[2]),
        .O(\wrap_burst_total_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_3 
       (.I0(\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] [1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[1]),
        .O(\wrap_burst_total_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_4 
       (.I0(\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] [3]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[3]),
        .O(\wrap_burst_total_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \wrap_burst_total[1]_i_5 
       (.I0(\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] [0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .O(\wrap_burst_total_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    \wrap_burst_total[2]_i_1 
       (.I0(\wrap_burst_total[2]_i_2_n_0 ),
        .I1(axi_arsize_pipe),
        .I2(axi_araddr_full),
        .O(\wrap_burst_total[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB800000000000000)) 
    \wrap_burst_total[2]_i_2 
       (.I0(\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] [0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .I3(\wrap_burst_total_reg[1]_1 ),
        .I4(\wrap_burst_total_reg[1]_2 ),
        .I5(\wrap_burst_total_reg[1]_0 ),
        .O(\wrap_burst_total[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[0]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[1]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\wrap_burst_total[2]_i_1_n_0 ),
        .Q(\wrap_burst_total_reg_n_0_[2] ),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
