-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity run_runTestAfterInit is
port (
    m_axi_gmem_AWVALID : OUT STD_LOGIC;
    m_axi_gmem_AWREADY : IN STD_LOGIC;
    m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WVALID : OUT STD_LOGIC;
    m_axi_gmem_WREADY : IN STD_LOGIC;
    m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
    m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_WLAST : OUT STD_LOGIC;
    m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARVALID : OUT STD_LOGIC;
    m_axi_gmem_ARREADY : IN STD_LOGIC;
    m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
    m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
    m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
    m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
    m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RVALID : IN STD_LOGIC;
    m_axi_gmem_RREADY : OUT STD_LOGIC;
    m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (511 downto 0);
    m_axi_gmem_RLAST : IN STD_LOGIC;
    m_axi_gmem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
    m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BVALID : IN STD_LOGIC;
    m_axi_gmem_BREADY : OUT STD_LOGIC;
    m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
    m_axi_gmem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
    m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
    inputAOV : IN STD_LOGIC_VECTOR (63 downto 0);
    outcomeInRam_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    outcomeInRam_ce0 : OUT STD_LOGIC;
    outcomeInRam_d0 : OUT STD_LOGIC_VECTOR (287 downto 0);
    outcomeInRam_q0 : IN STD_LOGIC_VECTOR (287 downto 0);
    outcomeInRam_we0 : OUT STD_LOGIC_VECTOR (35 downto 0);
    errorInTask_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    errorInTask_ce0 : OUT STD_LOGIC;
    errorInTask_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    errorInTask_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    errorInTask_we0 : OUT STD_LOGIC;
    n_regions_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    n_regions_V_ce0 : OUT STD_LOGIC;
    n_regions_V_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    n_regions_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    n_regions_V_we0 : OUT STD_LOGIC;
    n_regions_V_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    n_regions_V_ce1 : OUT STD_LOGIC;
    n_regions_V_d1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    n_regions_V_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    n_regions_V_we1 : OUT STD_LOGIC;
    regions_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_ce0 : OUT STD_LOGIC;
    regions_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    regions_we0 : OUT STD_LOGIC;
    regions_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_ce1 : OUT STD_LOGIC;
    regions_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    regions_we1 : OUT STD_LOGIC;
    regions_1_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_1_ce0 : OUT STD_LOGIC;
    regions_1_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    regions_1_we0 : OUT STD_LOGIC;
    regions_1_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_1_ce1 : OUT STD_LOGIC;
    regions_1_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_1_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    regions_1_we1 : OUT STD_LOGIC;
    regions_2_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_2_ce0 : OUT STD_LOGIC;
    regions_2_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_2_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    regions_2_we0 : OUT STD_LOGIC;
    regions_2_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_2_ce1 : OUT STD_LOGIC;
    regions_2_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_2_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    regions_2_we1 : OUT STD_LOGIC;
    regions_3_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_3_ce0 : OUT STD_LOGIC;
    regions_3_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_3_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    regions_3_we0 : OUT STD_LOGIC;
    regions_3_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    regions_3_ce1 : OUT STD_LOGIC;
    regions_3_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    regions_3_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    regions_3_we1 : OUT STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    inputAOV_ap_vld : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of run_runTestAfterInit is 
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv512_lc_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';

attribute shreg_extract : string;
    signal runTestAfterInit_Block_entry12_proc4_U0_ap_start : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_ap_done : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_ap_continue : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_ap_idle : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_ap_ready : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWVALID : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWID : STD_LOGIC_VECTOR (0 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WVALID : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WDATA : STD_LOGIC_VECTOR (511 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WSTRB : STD_LOGIC_VECTOR (63 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WLAST : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WID : STD_LOGIC_VECTOR (0 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARVALID : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARADDR : STD_LOGIC_VECTOR (63 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARID : STD_LOGIC_VECTOR (0 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARLEN : STD_LOGIC_VECTOR (31 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARSIZE : STD_LOGIC_VECTOR (2 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARBURST : STD_LOGIC_VECTOR (1 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARLOCK : STD_LOGIC_VECTOR (1 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARCACHE : STD_LOGIC_VECTOR (3 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARPROT : STD_LOGIC_VECTOR (2 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARQOS : STD_LOGIC_VECTOR (3 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARREGION : STD_LOGIC_VECTOR (3 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARUSER : STD_LOGIC_VECTOR (0 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_RREADY : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_BREADY : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_errorInTask_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_errorInTask_ce0 : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_errorInTask_we0 : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_errorInTask_d0 : STD_LOGIC_VECTOR (7 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_address0 : STD_LOGIC_VECTOR (3 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_ce0 : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_we0 : STD_LOGIC_VECTOR (35 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_d0 : STD_LOGIC_VECTOR (287 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_n_regions_V_address0 : STD_LOGIC_VECTOR (5 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_n_regions_V_ce0 : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_regions_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_regions_ce0 : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_regions_1_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_regions_1_ce0 : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_regions_2_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_regions_2_ce0 : STD_LOGIC;
    signal runTestAfterInit_Block_entry12_proc4_U0_regions_3_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal runTestAfterInit_Block_entry12_proc4_U0_regions_3_ce0 : STD_LOGIC;

    component run_runTestAfterInit_Block_entry12_proc4 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        inputAOV : IN STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_AWVALID : OUT STD_LOGIC;
        m_axi_gmem_AWREADY : IN STD_LOGIC;
        m_axi_gmem_AWADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_AWID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_AWLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem_AWSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_AWBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_AWLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_AWCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_AWPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_AWQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_AWREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_AWUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_WVALID : OUT STD_LOGIC;
        m_axi_gmem_WREADY : IN STD_LOGIC;
        m_axi_gmem_WDATA : OUT STD_LOGIC_VECTOR (511 downto 0);
        m_axi_gmem_WSTRB : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_WLAST : OUT STD_LOGIC;
        m_axi_gmem_WID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_WUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_ARVALID : OUT STD_LOGIC;
        m_axi_gmem_ARREADY : IN STD_LOGIC;
        m_axi_gmem_ARADDR : OUT STD_LOGIC_VECTOR (63 downto 0);
        m_axi_gmem_ARID : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_ARLEN : OUT STD_LOGIC_VECTOR (31 downto 0);
        m_axi_gmem_ARSIZE : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_ARBURST : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_ARLOCK : OUT STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_ARCACHE : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_ARPROT : OUT STD_LOGIC_VECTOR (2 downto 0);
        m_axi_gmem_ARQOS : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_ARREGION : OUT STD_LOGIC_VECTOR (3 downto 0);
        m_axi_gmem_ARUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_RVALID : IN STD_LOGIC;
        m_axi_gmem_RREADY : OUT STD_LOGIC;
        m_axi_gmem_RDATA : IN STD_LOGIC_VECTOR (511 downto 0);
        m_axi_gmem_RLAST : IN STD_LOGIC;
        m_axi_gmem_RID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_RFIFONUM : IN STD_LOGIC_VECTOR (8 downto 0);
        m_axi_gmem_RUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_RRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_BVALID : IN STD_LOGIC;
        m_axi_gmem_BREADY : OUT STD_LOGIC;
        m_axi_gmem_BRESP : IN STD_LOGIC_VECTOR (1 downto 0);
        m_axi_gmem_BID : IN STD_LOGIC_VECTOR (0 downto 0);
        m_axi_gmem_BUSER : IN STD_LOGIC_VECTOR (0 downto 0);
        errorInTask_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        errorInTask_ce0 : OUT STD_LOGIC;
        errorInTask_we0 : OUT STD_LOGIC;
        errorInTask_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
        errorInTask_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        outcomeInRam_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
        outcomeInRam_ce0 : OUT STD_LOGIC;
        outcomeInRam_we0 : OUT STD_LOGIC_VECTOR (35 downto 0);
        outcomeInRam_d0 : OUT STD_LOGIC_VECTOR (287 downto 0);
        n_regions_V_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
        n_regions_V_ce0 : OUT STD_LOGIC;
        n_regions_V_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
        regions_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        regions_ce0 : OUT STD_LOGIC;
        regions_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        regions_1_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        regions_1_ce0 : OUT STD_LOGIC;
        regions_1_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        regions_2_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        regions_2_ce0 : OUT STD_LOGIC;
        regions_2_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        regions_3_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        regions_3_ce0 : OUT STD_LOGIC;
        regions_3_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    runTestAfterInit_Block_entry12_proc4_U0 : component run_runTestAfterInit_Block_entry12_proc4
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => runTestAfterInit_Block_entry12_proc4_U0_ap_start,
        ap_done => runTestAfterInit_Block_entry12_proc4_U0_ap_done,
        ap_continue => runTestAfterInit_Block_entry12_proc4_U0_ap_continue,
        ap_idle => runTestAfterInit_Block_entry12_proc4_U0_ap_idle,
        ap_ready => runTestAfterInit_Block_entry12_proc4_U0_ap_ready,
        inputAOV => inputAOV,
        m_axi_gmem_AWVALID => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY => ap_const_logic_0,
        m_axi_gmem_AWADDR => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWADDR,
        m_axi_gmem_AWID => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWID,
        m_axi_gmem_AWLEN => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WVALID,
        m_axi_gmem_WREADY => ap_const_logic_0,
        m_axi_gmem_WDATA => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WLAST,
        m_axi_gmem_WID => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WID,
        m_axi_gmem_WUSER => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY => m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARADDR,
        m_axi_gmem_ARID => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARID,
        m_axi_gmem_ARLEN => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID => m_axi_gmem_RVALID,
        m_axi_gmem_RREADY => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_RREADY,
        m_axi_gmem_RDATA => m_axi_gmem_RDATA,
        m_axi_gmem_RLAST => m_axi_gmem_RLAST,
        m_axi_gmem_RID => m_axi_gmem_RID,
        m_axi_gmem_RFIFONUM => m_axi_gmem_RFIFONUM,
        m_axi_gmem_RUSER => m_axi_gmem_RUSER,
        m_axi_gmem_RRESP => m_axi_gmem_RRESP,
        m_axi_gmem_BVALID => ap_const_logic_0,
        m_axi_gmem_BREADY => runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_BREADY,
        m_axi_gmem_BRESP => ap_const_lv2_0,
        m_axi_gmem_BID => ap_const_lv1_0,
        m_axi_gmem_BUSER => ap_const_lv1_0,
        errorInTask_address0 => runTestAfterInit_Block_entry12_proc4_U0_errorInTask_address0,
        errorInTask_ce0 => runTestAfterInit_Block_entry12_proc4_U0_errorInTask_ce0,
        errorInTask_we0 => runTestAfterInit_Block_entry12_proc4_U0_errorInTask_we0,
        errorInTask_d0 => runTestAfterInit_Block_entry12_proc4_U0_errorInTask_d0,
        errorInTask_q0 => errorInTask_q0,
        outcomeInRam_address0 => runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_address0,
        outcomeInRam_ce0 => runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_ce0,
        outcomeInRam_we0 => runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_we0,
        outcomeInRam_d0 => runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_d0,
        n_regions_V_address0 => runTestAfterInit_Block_entry12_proc4_U0_n_regions_V_address0,
        n_regions_V_ce0 => runTestAfterInit_Block_entry12_proc4_U0_n_regions_V_ce0,
        n_regions_V_q0 => n_regions_V_q0,
        regions_address0 => runTestAfterInit_Block_entry12_proc4_U0_regions_address0,
        regions_ce0 => runTestAfterInit_Block_entry12_proc4_U0_regions_ce0,
        regions_q0 => regions_q0,
        regions_1_address0 => runTestAfterInit_Block_entry12_proc4_U0_regions_1_address0,
        regions_1_ce0 => runTestAfterInit_Block_entry12_proc4_U0_regions_1_ce0,
        regions_1_q0 => regions_1_q0,
        regions_2_address0 => runTestAfterInit_Block_entry12_proc4_U0_regions_2_address0,
        regions_2_ce0 => runTestAfterInit_Block_entry12_proc4_U0_regions_2_ce0,
        regions_2_q0 => regions_2_q0,
        regions_3_address0 => runTestAfterInit_Block_entry12_proc4_U0_regions_3_address0,
        regions_3_ce0 => runTestAfterInit_Block_entry12_proc4_U0_regions_3_ce0,
        regions_3_q0 => regions_3_q0);




    ap_done <= runTestAfterInit_Block_entry12_proc4_U0_ap_done;
    ap_idle <= runTestAfterInit_Block_entry12_proc4_U0_ap_idle;
    ap_ready <= runTestAfterInit_Block_entry12_proc4_U0_ap_ready;
    errorInTask_address0 <= runTestAfterInit_Block_entry12_proc4_U0_errorInTask_address0;
    errorInTask_ce0 <= runTestAfterInit_Block_entry12_proc4_U0_errorInTask_ce0;
    errorInTask_d0 <= runTestAfterInit_Block_entry12_proc4_U0_errorInTask_d0;
    errorInTask_we0 <= runTestAfterInit_Block_entry12_proc4_U0_errorInTask_we0;
    m_axi_gmem_ARADDR <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARADDR;
    m_axi_gmem_ARBURST <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARBURST;
    m_axi_gmem_ARCACHE <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARCACHE;
    m_axi_gmem_ARID <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARID;
    m_axi_gmem_ARLEN <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARLEN;
    m_axi_gmem_ARLOCK <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARLOCK;
    m_axi_gmem_ARPROT <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARPROT;
    m_axi_gmem_ARQOS <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARQOS;
    m_axi_gmem_ARREGION <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARREGION;
    m_axi_gmem_ARSIZE <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARSIZE;
    m_axi_gmem_ARUSER <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARUSER;
    m_axi_gmem_ARVALID <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_ARVALID;
    m_axi_gmem_AWADDR <= ap_const_lv64_0;
    m_axi_gmem_AWBURST <= ap_const_lv2_0;
    m_axi_gmem_AWCACHE <= ap_const_lv4_0;
    m_axi_gmem_AWID <= ap_const_lv1_0;
    m_axi_gmem_AWLEN <= ap_const_lv32_0;
    m_axi_gmem_AWLOCK <= ap_const_lv2_0;
    m_axi_gmem_AWPROT <= ap_const_lv3_0;
    m_axi_gmem_AWQOS <= ap_const_lv4_0;
    m_axi_gmem_AWREGION <= ap_const_lv4_0;
    m_axi_gmem_AWSIZE <= ap_const_lv3_0;
    m_axi_gmem_AWUSER <= ap_const_lv1_0;
    m_axi_gmem_AWVALID <= ap_const_logic_0;
    m_axi_gmem_BREADY <= ap_const_logic_0;
    m_axi_gmem_RREADY <= runTestAfterInit_Block_entry12_proc4_U0_m_axi_gmem_RREADY;
    m_axi_gmem_WDATA <= ap_const_lv512_lc_1;
    m_axi_gmem_WID <= ap_const_lv1_0;
    m_axi_gmem_WLAST <= ap_const_logic_0;
    m_axi_gmem_WSTRB <= ap_const_lv64_0;
    m_axi_gmem_WUSER <= ap_const_lv1_0;
    m_axi_gmem_WVALID <= ap_const_logic_0;
    n_regions_V_address0 <= runTestAfterInit_Block_entry12_proc4_U0_n_regions_V_address0;
    n_regions_V_address1 <= ap_const_lv6_0;
    n_regions_V_ce0 <= runTestAfterInit_Block_entry12_proc4_U0_n_regions_V_ce0;
    n_regions_V_ce1 <= ap_const_logic_0;
    n_regions_V_d0 <= ap_const_lv8_0;
    n_regions_V_d1 <= ap_const_lv8_0;
    n_regions_V_we0 <= ap_const_logic_0;
    n_regions_V_we1 <= ap_const_logic_0;
    outcomeInRam_address0 <= runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_address0;
    outcomeInRam_ce0 <= runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_ce0;
    outcomeInRam_d0 <= runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_d0;
    outcomeInRam_we0 <= runTestAfterInit_Block_entry12_proc4_U0_outcomeInRam_we0;
    regions_1_address0 <= runTestAfterInit_Block_entry12_proc4_U0_regions_1_address0;
    regions_1_address1 <= ap_const_lv12_0;
    regions_1_ce0 <= runTestAfterInit_Block_entry12_proc4_U0_regions_1_ce0;
    regions_1_ce1 <= ap_const_logic_0;
    regions_1_d0 <= ap_const_lv32_0;
    regions_1_d1 <= ap_const_lv32_0;
    regions_1_we0 <= ap_const_logic_0;
    regions_1_we1 <= ap_const_logic_0;
    regions_2_address0 <= runTestAfterInit_Block_entry12_proc4_U0_regions_2_address0;
    regions_2_address1 <= ap_const_lv12_0;
    regions_2_ce0 <= runTestAfterInit_Block_entry12_proc4_U0_regions_2_ce0;
    regions_2_ce1 <= ap_const_logic_0;
    regions_2_d0 <= ap_const_lv32_0;
    regions_2_d1 <= ap_const_lv32_0;
    regions_2_we0 <= ap_const_logic_0;
    regions_2_we1 <= ap_const_logic_0;
    regions_3_address0 <= runTestAfterInit_Block_entry12_proc4_U0_regions_3_address0;
    regions_3_address1 <= ap_const_lv12_0;
    regions_3_ce0 <= runTestAfterInit_Block_entry12_proc4_U0_regions_3_ce0;
    regions_3_ce1 <= ap_const_logic_0;
    regions_3_d0 <= ap_const_lv32_0;
    regions_3_d1 <= ap_const_lv32_0;
    regions_3_we0 <= ap_const_logic_0;
    regions_3_we1 <= ap_const_logic_0;
    regions_address0 <= runTestAfterInit_Block_entry12_proc4_U0_regions_address0;
    regions_address1 <= ap_const_lv12_0;
    regions_ce0 <= runTestAfterInit_Block_entry12_proc4_U0_regions_ce0;
    regions_ce1 <= ap_const_logic_0;
    regions_d0 <= ap_const_lv32_0;
    regions_d1 <= ap_const_lv32_0;
    regions_we0 <= ap_const_logic_0;
    regions_we1 <= ap_const_logic_0;
    runTestAfterInit_Block_entry12_proc4_U0_ap_continue <= ap_continue;
    runTestAfterInit_Block_entry12_proc4_U0_ap_start <= ap_start;
end behav;
