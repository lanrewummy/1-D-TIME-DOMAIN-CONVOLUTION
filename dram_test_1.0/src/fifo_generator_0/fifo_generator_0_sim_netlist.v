// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
// Date        : Sat Dec  9 19:22:02 2023
// Host        : ece-lnx-06 running 64-bit Red Hat Enterprise Linux Server release 7.9 (Maipo)
// Command     : write_verilog -force -mode funcsim
//               /ecel/UFAD/peter.forcha/ip_repo/dram_test_1.0/src/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_6,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [31:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [6:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "32" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "31" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "7" *) 
  (* C_RD_DEPTH = "128" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "7" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_6 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[6:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_generator_0_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_generator_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module fifo_generator_0_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
lYvhEjj3nb5oH8uSNLeXMIy7nJYVR9CgwYrS2YsK1wH0yG7GgJF3h7LWVAsRpUASOB7rHmuPVhb5
Ot5CFu1eFeE97Zpvi2xwlrFd2yOm/xOs4mKX3gkTIBIJmAKj42AUYk/LR9j6mOwXFIQmoZqYXHak
Pq2yC2ljr0hY1gwTFtI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z+2GQWpqmewONlHVkL658DHQ1gOkrvPjxsrm0NDcBmt2DgE1WctRC0/WtmZNRR2P9xNPEc1AnD3g
x2bmQ9ClncBm4tJJUerktYV7SZWaAFXLpL0mImalEctnoiL1emAUpqT2xWqYmc7/Up4fedi3U63/
6fZpFkfLPe1f/3mRlu+DKs00gVRP+t6V+01C1oWFsyvdyS5tDx/D7YWjpI8AZn7PAxGanwdNWWSB
/kAFPcC2bUzb0T91+nSe2x7K7ugumFrWpHW6iiuiY86OlLeqrAD5SZsqHhPT9GqJmSzj5PdAcMm2
1N7wj661ojPTxlfvw7ydkwisxeQEZRQ1H8LwwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
NWkv++1uc4OUvmLLmKamw2rSfdpVbwBET7oFkV2XGR6y3sZCnAwLR/UY8EXqGYSYtRzQMSec4n13
l7DB/8txjOrwXvZKfRBpPdz4pIT7HDh50CC1gJaraDaEr18dxcLyq6t0fo14o+JyrAxZm7/nDg78
7/uEhQnwCkDeOEnusng=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RPz1UvQF5/1bAGbmkE93ADh5aKEj2NdkJKJJhSjosDEbYcFH8ZSL5Ew53E1CBLn7KjAnpfOLAKVf
fX9beeVP5C5vU0n7ZMu9ISDuX947ttq4eCcbaV78UxB5l1Lj8hlouzML1BQecqW1z0mUCgW7CBoO
kvS93cLpph/VpfSwuTwO3q41V7Gxeshrw2U3zfZGHMUL2TI8fX+U+qCt5oG7UGDkIiE+SZRN8eQK
SY18ZEkuzeSrAbp1xn25WHjeUYF1dwHmcNf4wRKiww67b89Lqk9DBKAL9rsw0KWuua8qjESM8t3w
D+f6RYj2AciBO842MNa2LlXNkWM+oLq1CtukmQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QcQzkZp4Sch9TwvI82NYHoYu7Fu4A68g8HQ0GQQvhgP0VPOA5fVtIXlGeuCjshtvB9SbR/JdhJVW
H0AcjAKKgHxZK+en5z2azbfr9d1BbF03MjLpFIxdwUacvQfXpyvYKYFtjplThociLLWtOUmXj84s
4nP0l8PXdvTblIHap6SfZL6Dhv1jlcCTvUTUGoULVvQRU16E+vFCep9sJnLwhCCldBnB5vBZ5TCu
AXnNJpF2Gx4Y+BC9c7XyNRkVfKm11TUyI3pc5OcNWX+42CRvLbMSKG711f5VO+yZsWi9YEWqMTjN
RN18y3FwbJ9g/6K9ZswbGNgjRnn7l2PRbFrMKg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ic0gE1G8ZymuhdpWjbURYCva14oPCOYHWxeY1WbqEo4fRdhM6YimsmNp3RyJRpeG6TFY0iDQtGg1
f5g5G1LTD2KIG+dBZyfKNnTE/ZOWrLJOblPxV8gmBtOye+53NJXzi8+oEuZceCLJxPBg1t44/kD6
M9x687RC58J0HT1/+RsMdCvAGIhlkdNOkb4+dhOoGEPVtNJhV6u4ccNdcnLz1ZaIW6yGByR8UXna
8XH9yb/yWXZzxveULhlxfYe5edpqYlF99QdUnueTFFmCXxIYP4G0xwFM1S929iLWZUS13jbam+X4
5SLDsqw5epDM/DVK5Cv0VD4JajhRoM+fGT/I4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
W34Gq4IReWdH4guFD03wBoHFTA+s1wgkA3uEFz/xWEihtgcet7BzSoGE0K8FQKLVs+D+mR8yPD8Z
vuUkN7L+imyxs7FeoUUpCBNbo0z5XahETBApULQzISBGdsC2f/p8wwDdoHY5E0UjcHOTr+Pah6x+
Kb/OiJAA3/B3geutymFuXHhdGJVoLS30F7CpbZpHTVoZZBU1TgUTFXAySsVWu7k+NMAoSxDKr4k3
10DyqW8wuvTaTG+NdumVzlwtmHHXVSiGk0//Q/9EJmzEzH0Pi9m/wmiONCYRmb0c/K5YHCIs7xNF
nWpl/fzOUJQequCzR636PCmQz3/wSjGRil3HDQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
iEsUxC8JQZnRxQOm+O4jwBmkm5PoeeMBxaBqVOvKpTXSyjvbLGMDYSb0fxpNvdSJbtZpFIPnAww+
aq3rl7doHEf1kjM2dC4rjvZWa0jWRoJIANcbomcPl6IeiRfAUGCGIDrNDxK+Y3GNvZf2de79ApcB
dTaCVwgrbloNzIJwiJkRY1og57CtPhYfZGFMkwwQ1yHtCyOiuh1DFTM1HOr7jtC54Rj43wY2EpJp
V8vuUqRPQXW8kinGG+26i34AsoOI/xAYSbvXdBHrgwQSzEVIApd8q+QxH+P/twlQ/rFGh9QkEtsf
01rrVJSI2TzVwOQBjP9yRmeHw8y91krSW2dGHHjOd+HVO8Mpbdh4nOvQiYQjNK1lqwInPGOH2bM6
kuUfNcfP9+0NlRUDVuuhbzPVr++hGny3Hvo5Aq7bQqtKrYhqiaLWIWoY6mFPGyfIoZrbVClEO/oY
G2CKj5JTQTRFxNUtusbqdXg+69YwdnuXoF9oFfaVJwpFYlKtWBm5LeRv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YKagekiHOyMnMVPg7PmagWsOMo70GABOzboT0+MRxNHoWf+7KtPwFZmbZAZPMjbv2wgx5vSsG1VZ
GZlduGJPTey/Q2+Yx2fvgCJb2dlR/HDmPB+1X4vVosJEw5nD6m8yWJd0L+NZCG6gtRelGjAxjm68
yPC9qOiRc6jrOM91cmFC6Xi2jeY4t5FHi4zmBceasIzRWIBnat7p0fZ3CZaaY76+K02CE2jND22R
W0XlRGoYVtWNukn5s4Z4AkME8oKdQugjp9rNooVbn7sWp5td9RHT1ZxOWgINwiHb6D9MOnsOSGwz
2K1jXhGDdXe4TOnFPIn6VglS5Y05u1snfUxFlA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 85408)
`pragma protect data_block
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
LnWDMpQdg4BXO144frQRf18z83K/3Q==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
oESHD2Q5NORrmTVTCApB+YFZJwjA1ezq7U6VZh96by+ofPCvSFp06AIoCLvB4BhPvxfob6kIkBpR
xVCOLM7HsDk7nO1JVWiYIJ6okoWTA8hAlPj3sdGuMwRlZNSBKn/c6F+CW5Jl37TEGotkhycSB3Bg
B/uu1THUZwIG87RPahE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RovEhaqHrFqzjckk+DIWG8LQeqg2Y/nACQDyXKKtSav7YHlgpKmgHZnsxwwNpqrqVRGyjTecSQ+e
6Mr/Pi9au3AgJVPL6VOgwNVE0yj2LpA4LPyWzxLN3+DiSDmsaCBNCBlVQi2MRKUabou8nLaXldbL
+7pv4pYhQdcyjDzuC2dx3HmzADqstdEiyXeU3ktJ29CDLDmGwDWdmsrl90s4YQSfBV2nj4/Vut3L
p/8dzphf1htPaNMujMxxgp3z4JzUEDJJokDL+gNutEEHiaWpI3URIA5v22vJu+NPD+eEraSioHfL
DPKAajZTwK5FHnonu4O2D0co8GWqWW5cUqZz9A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jBQ6Th9yy7jtKQD1h235YLT6qO6XiBaBKGJrV1Z8H9M9ePJ9R/fA8E1okt4LyBvoWjR7tmCbIg7A
0/vuKOogkLtDE/BtTlp4z1iurO8rQrAcdZy/e+7GATawyJxFY7kZhnXASu9zB8TiOBELSlapkpxe
WuAzXLde9FBMBkq4RSc=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eucSNV2Zbm4zYc2tIGRlGmlVM8+WHY1NHe9drZdgDhGPOHz8PTqHapfnZ1kWuTLtPBLSMvcXNScn
UTvpULofBV6qD7WHLPg7UJcjpZVDL69lk88chgqrlc/RqaJXKNVv+Ubku53ZLU20uZK71bNymjSM
855RVWw5lvTHTCNC2MYIS94Fmrzuq8i0+tFh5qBKkHK2BC+fD7xVyyfuh4mZR2yr/hRs/emoI79E
IKoJnLiglVp6RXTsXFzZW4pIthbjWSuZlOQvoYkS2RMj8a0r9lyariphRQunoudc0bLO4Phk578c
40gusaaS/MI7idMT7k1Di96kvu5mHi23loRcZQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
E/syLaRG2Ss/xTTkuAkOKXzm53+rCptYO2DkVukWhvlLmEB2daHCPrXt4gKeuG+0hIGWedSwCiLJ
7KNtEAiTumJ/j+3p7s3oXN9ftCSRolXoACsCclEAmwYjVM0ubCXUx6JNFOGt0yDl2Jsd5+W10mSJ
bYEKvRKi7koXM/eYJqbhTrtsrHDwRJEY0JVUPh8EOkLLqaIKbnjb6ENEY6qZOamp5PaWsSS30gJM
N6fB8D1AmGKnFbfY+d5TexS55Z92aYcAHNX2XwHsKnm45az1vHeZ0rTEU/oONIaSZfikRni1iDBg
x2GOue6sLiwxTEHaVkTJsOVR4mx0VsfFxavwRg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
dSHHpkQiOEzzKs4D71WVyDXLpkKuR9h9h3pBLtnCq2bXiwE/eQHmk5HeQb+qREg0Yv193OukqaQz
RZyuF5GQcqOpqFHMxO62HQ2pdjdpMT5CC7gHvmgiw9qBkJJrXpihIHER4X7OF2iNUfeqxJ8eiSz3
C0V20NlIwKG7Mxg8MVj++xmb32KMUqL7ptikkym20vVdhecVMNvpPoXp8uvaGT7991enWP9HGKUC
9kLY2DEYwRGE71UJJLGWo4n49R50ExFRj91xWnYfvp7uJsMNwnBp5l3GTZiMELX2RkRVSPOHr7l1
n2p5Vq7Uee2drny1IxZ/4c0hYY6y3QWSEqpESw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HUtfqZ9dh5oZTOAt9a0ebo+wQbzg3izFQ0kVqZN81S4cBjQEF53WUiVlTKBDVjvLNUby4Se9WZjj
j86TQzuGJxLPDTohmbytErsg5JrlXHbHGwR4zGNGTbBs12X7PkxtS8wVCp+7b1rX6pOGOPqm6FoG
g6rZY/bTzVfGYF2CAOhjJUqUOXEAKnZRehspRyiBI28/ZZPSAUD/abKprW8PWCxMx2zPWztZz4No
R96jgvHezNzB1Ta8W7uRBFTMp+XVSToxTp2jzSXJZ0V5xJl+gdVjAMmf6+te2vqrK2wDWdMxk3Sf
iyLI4d0s25vCybcY2fZWacq5iO9pSlSaOQWgCA==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
vYYu2Kvhv3RZi0pFbjRTQ/BBwfilCrGpkMls+Dz6HBGTZvSaC/anWgymoDS0XnoSENGG3Pz3EBF0
19OqLbyna95IHFe2bA7f8RgU9SEUffZ8eXGigfOjAWpZCN07Q77RkhGUKal7okWe3Q6xHtZy83l2
kW8ma3kOYL7GzQjtpbP3lINHLMqpGEo0dzbOHiJ5r6W5U6DsILGsoLQOXcw+MwrevvNRB0KkSklj
QnL8K2AK8PIsJGM6F8dj5KwRYhSBYNb1opuVpiJWlbHgADoeM+dhiRxBLmnaDE8PWs1ReY6uMzzH
SvvO6UEyxQtvS/Smm/uogr1eUFedUaBHPMEXnYlTAv/SKrh942GeknsqfrjGkZxWTN2NEnvpRUwT
fS0pyd/Err0s94b0srmcTYyxZfJGRUct2T8MCphZFaScAlhn655pxW9RaHMfcvDJUHpW8Qa+KhRt
9CWYScPIH6YNDByLQbhKL5BTpAYMNYPF2W7vM2ZzDob2NB7m6GGeKRr3

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QSNmIeTT4pBji+CTjknWXN6sH9Wff8+t8KF+AC3fIoIw08jtLtShcB9ZGeEKG02RGCO4lNIUf5YB
2TVYk6EJ5XyCav12qDhc60n56UVrnpfo7drorY0NmOypuxECgO43h6SDWp9W7px3r4CJnQ4+X2Mj
943GdP30WfL5kbWHZJC1Dz9cBIqRa1EbNXvvAqBvRPS2+aXBXAPOC4rNVZGeIUspn/33IW3yJLSp
Jm5GIct87ZuSoz8+DXhUvsTj4hq8lgirVhfz1qhHm8SfODcE91FGUPw3vbpGWXsBX73t2zxFC1Hz
/6m4YqQJVxd+H5iGE4kbHxHyHnH7FIerqc8Phw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UhfxKxECbuHK/o9ZExa2zP/MIPmFXuDNZwgpiawuBmPeRI1nJsYB7vzbBGMPKny4yIHLT8mHrQRc
fs05atkjIAbLea4+WNoCdCeg7/0PzuodM1ol3it6BHQ6Yzq4mnZbzlk8Xtwmk8ACAbzOr2SYxYWX
ueuUlimUSRusIe4+NiPvzbfHMAOVPjdmSY7zaSyeJuhdAR+fUGeHy5B23Xe2X6cDPeJ75IqcBeul
ox3dTXi3L8r/s1bTKX3FhxRyPZuh/xCWuEajsF2fEYdwWHKtLX6IQniLBJ5ZnVSS8D7IYPsvV4t0
9rWJqto5O1n3rAM44OvKvc9pOYXJupuv7g3gWg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fmo66vhS7nigYtLDMjdj7hgUnDG/fnO+cIaY/3qHrcwT7u/paj5enLuWHovegu9O9WRq3pPNnjuN
6vZRpuCgz5p4VAV7dVg9fuzg99BAjThp1Q/+HIPfdQ2LM14ZpTh4FXxthHGkTyS5PJArvZ3/UMpW
zwfdYd5+k2/emJ4/nuqoJHQG8k+O5EjSprLTvNZ/wrE1cT/fW/Lu2pxI4msHqVVYAXz7sJ13cQ+C
7tKxCV8vTyf0rpStdE+kZXg+jrc7vFKuPJO0U9axMsC0nXyeYx2jzfAHptGWKvfQaPg/Eo9mgLyN
qSJfFS6aIycuxNmg7L82WK401aWhnUn7GNrudg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25248)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
