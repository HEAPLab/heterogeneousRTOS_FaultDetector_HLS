// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module run_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 11,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire                          flush,
    input  wire                          flush_done,
    output wire [7:0]                    accel_mode,
    output wire [7:0]                    data_in_vld_i,
    input  wire [7:0]                    data_in_vld_o,
    input  wire                          data_in_vld_o_ap_vld,
    output wire [63:0]                   inputData,
    output wire [7:0]                    IOCheckIdx,
    input  wire [3:0]                    errorInTask_address0,
    input  wire                          errorInTask_ce0,
    input  wire                          errorInTask_we0,
    input  wire [7:0]                    errorInTask_d0,
    output wire [7:0]                    errorInTask_q0,
    output wire [767:0]                  trainedRegion_i,
    input  wire [767:0]                  trainedRegion_o,
    output wire [7:0]                    IORegionIdx,
    output wire [7:0]                    n_regions_in_i,
    input  wire [7:0]                    n_regions_in_o,
    input  wire [3:0]                    outcomeInRam_address0,
    input  wire                          outcomeInRam_ce0,
    input  wire [35:0]                   outcomeInRam_we0,
    input  wire [287:0]                  outcomeInRam_d0,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle,
    output wire                          sw_reset
);
//------------------------Address Info-------------------
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read/COR)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 5  - flush (Read/Write)
//         bit 6  - flush_done (Read)
//         bit 7  - auto_restart (Read/Write)
//         bit 8  - sw_reset (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/COR)
//         bit 0 - ap_done (Read/COR)
//         bit 1 - ap_ready (Read/COR)
//         others - reserved
// 0x010 : Data signal of accel_mode
//         bit 7~0 - accel_mode[7:0] (Read/Write)
//         others  - reserved
// 0x014 : reserved
// 0x018 : Data signal of data_in_vld_i
//         bit 7~0 - data_in_vld_i[7:0] (Read/Write)
//         others  - reserved
// 0x01c : reserved
// 0x020 : Data signal of data_in_vld_o
//         bit 7~0 - data_in_vld_o[7:0] (Read)
//         others  - reserved
// 0x024 : Control signal of data_in_vld_o
//         bit 0  - data_in_vld_o_ap_vld (Read/COR)
//         others - reserved
// 0x028 : Data signal of inputData
//         bit 31~0 - inputData[31:0] (Read/Write)
// 0x02c : Data signal of inputData
//         bit 31~0 - inputData[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of IOCheckIdx
//         bit 7~0 - IOCheckIdx[7:0] (Read/Write)
//         others  - reserved
// 0x038 : reserved
// 0x050 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[31:0] (Read/Write)
// 0x054 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[63:32] (Read/Write)
// 0x058 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[95:64] (Read/Write)
// 0x05c : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[127:96] (Read/Write)
// 0x060 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[159:128] (Read/Write)
// 0x064 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[191:160] (Read/Write)
// 0x068 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[223:192] (Read/Write)
// 0x06c : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[255:224] (Read/Write)
// 0x070 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[287:256] (Read/Write)
// 0x074 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[319:288] (Read/Write)
// 0x078 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[351:320] (Read/Write)
// 0x07c : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[383:352] (Read/Write)
// 0x080 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[415:384] (Read/Write)
// 0x084 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[447:416] (Read/Write)
// 0x088 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[479:448] (Read/Write)
// 0x08c : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[511:480] (Read/Write)
// 0x090 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[543:512] (Read/Write)
// 0x094 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[575:544] (Read/Write)
// 0x098 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[607:576] (Read/Write)
// 0x09c : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[639:608] (Read/Write)
// 0x0a0 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[671:640] (Read/Write)
// 0x0a4 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[703:672] (Read/Write)
// 0x0a8 : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[735:704] (Read/Write)
// 0x0ac : Data signal of trainedRegion_i
//         bit 31~0 - trainedRegion_i[767:736] (Read/Write)
// 0x0b0 : reserved
// 0x0b4 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[31:0] (Read)
// 0x0b8 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[63:32] (Read)
// 0x0bc : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[95:64] (Read)
// 0x0c0 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[127:96] (Read)
// 0x0c4 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[159:128] (Read)
// 0x0c8 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[191:160] (Read)
// 0x0cc : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[223:192] (Read)
// 0x0d0 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[255:224] (Read)
// 0x0d4 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[287:256] (Read)
// 0x0d8 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[319:288] (Read)
// 0x0dc : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[351:320] (Read)
// 0x0e0 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[383:352] (Read)
// 0x0e4 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[415:384] (Read)
// 0x0e8 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[447:416] (Read)
// 0x0ec : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[479:448] (Read)
// 0x0f0 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[511:480] (Read)
// 0x0f4 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[543:512] (Read)
// 0x0f8 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[575:544] (Read)
// 0x0fc : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[607:576] (Read)
// 0x100 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[639:608] (Read)
// 0x104 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[671:640] (Read)
// 0x108 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[703:672] (Read)
// 0x10c : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[735:704] (Read)
// 0x110 : Data signal of trainedRegion_o
//         bit 31~0 - trainedRegion_o[767:736] (Read)
// 0x114 : reserved
// 0x17c : Data signal of IORegionIdx
//         bit 7~0 - IORegionIdx[7:0] (Read/Write)
//         others  - reserved
// 0x180 : reserved
// 0x184 : Data signal of n_regions_in_i
//         bit 7~0 - n_regions_in_i[7:0] (Read/Write)
//         others  - reserved
// 0x188 : reserved
// 0x18c : Data signal of n_regions_in_o
//         bit 7~0 - n_regions_in_o[7:0] (Read)
//         others  - reserved
// 0x190 : reserved
// 0x040 ~
// 0x04f : Memory 'errorInTask' (16 * 8b)
//         Word n : bit [ 7: 0] - errorInTask[4n]
//                  bit [15: 8] - errorInTask[4n+1]
//                  bit [23:16] - errorInTask[4n+2]
//                  bit [31:24] - errorInTask[4n+3]
// 0x400 ~
// 0x7ff : Memory 'outcomeInRam' (16 * 288b)
//         Word 16n  : bit [31:0] - outcomeInRam[n][31: 0]
//         Word 16n+1 : bit [31:0] - outcomeInRam[n][63:32]
//         Word 16n+2 : bit [31:0] - outcomeInRam[n][95:64]
//         Word 16n+3 : bit [31:0] - outcomeInRam[n][127:96]
//         Word 16n+4 : bit [31:0] - outcomeInRam[n][159:128]
//         Word 16n+5 : bit [31:0] - outcomeInRam[n][191:160]
//         Word 16n+6 : bit [31:0] - outcomeInRam[n][223:192]
//         Word 16n+7 : bit [31:0] - outcomeInRam[n][255:224]
//         Word 16n+8 : bit [31:0] - outcomeInRam[n][287:256]
//         Word 16n+9 : bit [31:0] - reserved
//         Word 16n+10 : bit [31:0] - reserved
//         Word 16n+11 : bit [31:0] - reserved
//         Word 16n+12 : bit [31:0] - reserved
//         Word 16n+13 : bit [31:0] - reserved
//         Word 16n+14 : bit [31:0] - reserved
//         Word 16n+15 : bit [31:0] - reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                 = 11'h000,
    ADDR_GIE                     = 11'h004,
    ADDR_IER                     = 11'h008,
    ADDR_ISR                     = 11'h00c,
    ADDR_ACCEL_MODE_DATA_0       = 11'h010,
    ADDR_ACCEL_MODE_CTRL         = 11'h014,
    ADDR_DATA_IN_VLD_I_DATA_0    = 11'h018,
    ADDR_DATA_IN_VLD_I_CTRL      = 11'h01c,
    ADDR_DATA_IN_VLD_O_DATA_0    = 11'h020,
    ADDR_DATA_IN_VLD_O_CTRL      = 11'h024,
    ADDR_INPUTDATA_DATA_0        = 11'h028,
    ADDR_INPUTDATA_DATA_1        = 11'h02c,
    ADDR_INPUTDATA_CTRL          = 11'h030,
    ADDR_IOCHECKIDX_DATA_0       = 11'h034,
    ADDR_IOCHECKIDX_CTRL         = 11'h038,
    ADDR_TRAINEDREGION_I_DATA_0  = 11'h050,
    ADDR_TRAINEDREGION_I_DATA_1  = 11'h054,
    ADDR_TRAINEDREGION_I_DATA_2  = 11'h058,
    ADDR_TRAINEDREGION_I_DATA_3  = 11'h05c,
    ADDR_TRAINEDREGION_I_DATA_4  = 11'h060,
    ADDR_TRAINEDREGION_I_DATA_5  = 11'h064,
    ADDR_TRAINEDREGION_I_DATA_6  = 11'h068,
    ADDR_TRAINEDREGION_I_DATA_7  = 11'h06c,
    ADDR_TRAINEDREGION_I_DATA_8  = 11'h070,
    ADDR_TRAINEDREGION_I_DATA_9  = 11'h074,
    ADDR_TRAINEDREGION_I_DATA_10 = 11'h078,
    ADDR_TRAINEDREGION_I_DATA_11 = 11'h07c,
    ADDR_TRAINEDREGION_I_DATA_12 = 11'h080,
    ADDR_TRAINEDREGION_I_DATA_13 = 11'h084,
    ADDR_TRAINEDREGION_I_DATA_14 = 11'h088,
    ADDR_TRAINEDREGION_I_DATA_15 = 11'h08c,
    ADDR_TRAINEDREGION_I_DATA_16 = 11'h090,
    ADDR_TRAINEDREGION_I_DATA_17 = 11'h094,
    ADDR_TRAINEDREGION_I_DATA_18 = 11'h098,
    ADDR_TRAINEDREGION_I_DATA_19 = 11'h09c,
    ADDR_TRAINEDREGION_I_DATA_20 = 11'h0a0,
    ADDR_TRAINEDREGION_I_DATA_21 = 11'h0a4,
    ADDR_TRAINEDREGION_I_DATA_22 = 11'h0a8,
    ADDR_TRAINEDREGION_I_DATA_23 = 11'h0ac,
    ADDR_TRAINEDREGION_I_CTRL    = 11'h0b0,
    ADDR_TRAINEDREGION_O_DATA_0  = 11'h0b4,
    ADDR_TRAINEDREGION_O_DATA_1  = 11'h0b8,
    ADDR_TRAINEDREGION_O_DATA_2  = 11'h0bc,
    ADDR_TRAINEDREGION_O_DATA_3  = 11'h0c0,
    ADDR_TRAINEDREGION_O_DATA_4  = 11'h0c4,
    ADDR_TRAINEDREGION_O_DATA_5  = 11'h0c8,
    ADDR_TRAINEDREGION_O_DATA_6  = 11'h0cc,
    ADDR_TRAINEDREGION_O_DATA_7  = 11'h0d0,
    ADDR_TRAINEDREGION_O_DATA_8  = 11'h0d4,
    ADDR_TRAINEDREGION_O_DATA_9  = 11'h0d8,
    ADDR_TRAINEDREGION_O_DATA_10 = 11'h0dc,
    ADDR_TRAINEDREGION_O_DATA_11 = 11'h0e0,
    ADDR_TRAINEDREGION_O_DATA_12 = 11'h0e4,
    ADDR_TRAINEDREGION_O_DATA_13 = 11'h0e8,
    ADDR_TRAINEDREGION_O_DATA_14 = 11'h0ec,
    ADDR_TRAINEDREGION_O_DATA_15 = 11'h0f0,
    ADDR_TRAINEDREGION_O_DATA_16 = 11'h0f4,
    ADDR_TRAINEDREGION_O_DATA_17 = 11'h0f8,
    ADDR_TRAINEDREGION_O_DATA_18 = 11'h0fc,
    ADDR_TRAINEDREGION_O_DATA_19 = 11'h100,
    ADDR_TRAINEDREGION_O_DATA_20 = 11'h104,
    ADDR_TRAINEDREGION_O_DATA_21 = 11'h108,
    ADDR_TRAINEDREGION_O_DATA_22 = 11'h10c,
    ADDR_TRAINEDREGION_O_DATA_23 = 11'h110,
    ADDR_TRAINEDREGION_O_CTRL    = 11'h114,
    ADDR_IOREGIONIDX_DATA_0      = 11'h17c,
    ADDR_IOREGIONIDX_CTRL        = 11'h180,
    ADDR_N_REGIONS_IN_I_DATA_0   = 11'h184,
    ADDR_N_REGIONS_IN_I_CTRL     = 11'h188,
    ADDR_N_REGIONS_IN_O_DATA_0   = 11'h18c,
    ADDR_N_REGIONS_IN_O_CTRL     = 11'h190,
    ADDR_ERRORINTASK_BASE        = 11'h040,
    ADDR_ERRORINTASK_HIGH        = 11'h04f,
    ADDR_OUTCOMEINRAM_BASE       = 11'h400,
    ADDR_OUTCOMEINRAM_HIGH       = 11'h7ff,
    WRIDLE                       = 2'd0,
    WRDATA                       = 2'd1,
    WRRESP                       = 2'd2,
    WRRESET                      = 2'd3,
    RDIDLE                       = 2'd0,
    RDDATA                       = 2'd1,
    RDRESET                      = 2'd2,
    ADDR_BITS                = 11;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_sw_reset = 1'b0;
    reg                           int_ap_idle;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_flush = 1'b0;
    reg                           int_flush_done = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [7:0]                    int_accel_mode = 'b0;
    reg  [7:0]                    int_data_in_vld_i = 'b0;
    reg                           int_data_in_vld_o_ap_vld;
    reg  [7:0]                    int_data_in_vld_o = 'b0;
    reg  [63:0]                   int_inputData = 'b0;
    reg  [7:0]                    int_IOCheckIdx = 'b0;
    reg  [767:0]                  int_trainedRegion_i = 'b0;
    reg  [767:0]                  int_trainedRegion_o = 'b0;
    reg  [7:0]                    int_IORegionIdx = 'b0;
    reg  [7:0]                    int_n_regions_in_i = 'b0;
    reg  [7:0]                    int_n_regions_in_o = 'b0;
    // memory signals
    wire [1:0]                    int_errorInTask_address0;
    wire                          int_errorInTask_ce0;
    wire [3:0]                    int_errorInTask_be0;
    wire [31:0]                   int_errorInTask_d0;
    wire [31:0]                   int_errorInTask_q0;
    wire [1:0]                    int_errorInTask_address1;
    wire                          int_errorInTask_ce1;
    wire                          int_errorInTask_we1;
    wire [3:0]                    int_errorInTask_be1;
    wire [31:0]                   int_errorInTask_d1;
    wire [31:0]                   int_errorInTask_q1;
    reg                           int_errorInTask_read;
    reg                           int_errorInTask_write;
    reg  [1:0]                    int_errorInTask_shift0;
    wire [3:0]                    int_outcomeInRam_address0;
    wire                          int_outcomeInRam_ce0;
    wire [35:0]                   int_outcomeInRam_be0;
    wire [287:0]                  int_outcomeInRam_d0;
    wire [3:0]                    int_outcomeInRam_address1;
    wire                          int_outcomeInRam_ce1;
    wire [287:0]                  int_outcomeInRam_q1;
    reg                           int_outcomeInRam_read;
    reg                           int_outcomeInRam_write;
    reg  [3:0]                    int_outcomeInRam_shift1;

//------------------------Instantiation------------------
// int_errorInTask
run_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "T2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 4 )
) int_errorInTask (
    .clk0      ( ACLK ),
    .address0  ( int_errorInTask_address0 ),
    .ce0       ( int_errorInTask_ce0 ),
    .we0       ( int_errorInTask_be0 ),
    .d0        ( int_errorInTask_d0 ),
    .q0        ( int_errorInTask_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_errorInTask_address1 ),
    .ce1       ( int_errorInTask_ce1 ),
    .we1       ( int_errorInTask_be1 ),
    .d1        ( int_errorInTask_d1 ),
    .q1        ( int_errorInTask_q1 )
);
// int_outcomeInRam
run_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "S2P" ),
    .BYTES     ( 36 ),
    .DEPTH     ( 16 )
) int_outcomeInRam (
    .clk0      ( ACLK ),
    .address0  ( int_outcomeInRam_address0 ),
    .ce0       ( int_outcomeInRam_ce0 ),
    .we0       ( int_outcomeInRam_be0 ),
    .d0        ( int_outcomeInRam_d0 ),
    .q0        (  ),
    .clk1      ( ACLK ),
    .address1  ( int_outcomeInRam_address1 ),
    .ce1       ( int_outcomeInRam_ce1 ),
    .we1       ( {36{1'b0}} ),
    .d1        ( {288{1'b0}} ),
    .q1        ( int_outcomeInRam_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (w_hs)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_errorInTask_read & !int_outcomeInRam_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[5] <= int_flush;
                    rdata[6] <= int_flush_done;
                    rdata[7] <= int_auto_restart;
                    rdata[8] <= int_sw_reset;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_ACCEL_MODE_DATA_0: begin
                    rdata <= int_accel_mode[7:0];
                end
                ADDR_DATA_IN_VLD_I_DATA_0: begin
                    rdata <= int_data_in_vld_i[7:0];
                end
                ADDR_DATA_IN_VLD_O_DATA_0: begin
                    rdata <= int_data_in_vld_o[7:0];
                end
                ADDR_DATA_IN_VLD_O_CTRL: begin
                    rdata[0] <= int_data_in_vld_o_ap_vld;
                end
                ADDR_INPUTDATA_DATA_0: begin
                    rdata <= int_inputData[31:0];
                end
                ADDR_INPUTDATA_DATA_1: begin
                    rdata <= int_inputData[63:32];
                end
                ADDR_IOCHECKIDX_DATA_0: begin
                    rdata <= int_IOCheckIdx[7:0];
                end
                ADDR_TRAINEDREGION_I_DATA_0: begin
                    rdata <= int_trainedRegion_i[31:0];
                end
                ADDR_TRAINEDREGION_I_DATA_1: begin
                    rdata <= int_trainedRegion_i[63:32];
                end
                ADDR_TRAINEDREGION_I_DATA_2: begin
                    rdata <= int_trainedRegion_i[95:64];
                end
                ADDR_TRAINEDREGION_I_DATA_3: begin
                    rdata <= int_trainedRegion_i[127:96];
                end
                ADDR_TRAINEDREGION_I_DATA_4: begin
                    rdata <= int_trainedRegion_i[159:128];
                end
                ADDR_TRAINEDREGION_I_DATA_5: begin
                    rdata <= int_trainedRegion_i[191:160];
                end
                ADDR_TRAINEDREGION_I_DATA_6: begin
                    rdata <= int_trainedRegion_i[223:192];
                end
                ADDR_TRAINEDREGION_I_DATA_7: begin
                    rdata <= int_trainedRegion_i[255:224];
                end
                ADDR_TRAINEDREGION_I_DATA_8: begin
                    rdata <= int_trainedRegion_i[287:256];
                end
                ADDR_TRAINEDREGION_I_DATA_9: begin
                    rdata <= int_trainedRegion_i[319:288];
                end
                ADDR_TRAINEDREGION_I_DATA_10: begin
                    rdata <= int_trainedRegion_i[351:320];
                end
                ADDR_TRAINEDREGION_I_DATA_11: begin
                    rdata <= int_trainedRegion_i[383:352];
                end
                ADDR_TRAINEDREGION_I_DATA_12: begin
                    rdata <= int_trainedRegion_i[415:384];
                end
                ADDR_TRAINEDREGION_I_DATA_13: begin
                    rdata <= int_trainedRegion_i[447:416];
                end
                ADDR_TRAINEDREGION_I_DATA_14: begin
                    rdata <= int_trainedRegion_i[479:448];
                end
                ADDR_TRAINEDREGION_I_DATA_15: begin
                    rdata <= int_trainedRegion_i[511:480];
                end
                ADDR_TRAINEDREGION_I_DATA_16: begin
                    rdata <= int_trainedRegion_i[543:512];
                end
                ADDR_TRAINEDREGION_I_DATA_17: begin
                    rdata <= int_trainedRegion_i[575:544];
                end
                ADDR_TRAINEDREGION_I_DATA_18: begin
                    rdata <= int_trainedRegion_i[607:576];
                end
                ADDR_TRAINEDREGION_I_DATA_19: begin
                    rdata <= int_trainedRegion_i[639:608];
                end
                ADDR_TRAINEDREGION_I_DATA_20: begin
                    rdata <= int_trainedRegion_i[671:640];
                end
                ADDR_TRAINEDREGION_I_DATA_21: begin
                    rdata <= int_trainedRegion_i[703:672];
                end
                ADDR_TRAINEDREGION_I_DATA_22: begin
                    rdata <= int_trainedRegion_i[735:704];
                end
                ADDR_TRAINEDREGION_I_DATA_23: begin
                    rdata <= int_trainedRegion_i[767:736];
                end
                ADDR_TRAINEDREGION_O_DATA_0: begin
                    rdata <= int_trainedRegion_o[31:0];
                end
                ADDR_TRAINEDREGION_O_DATA_1: begin
                    rdata <= int_trainedRegion_o[63:32];
                end
                ADDR_TRAINEDREGION_O_DATA_2: begin
                    rdata <= int_trainedRegion_o[95:64];
                end
                ADDR_TRAINEDREGION_O_DATA_3: begin
                    rdata <= int_trainedRegion_o[127:96];
                end
                ADDR_TRAINEDREGION_O_DATA_4: begin
                    rdata <= int_trainedRegion_o[159:128];
                end
                ADDR_TRAINEDREGION_O_DATA_5: begin
                    rdata <= int_trainedRegion_o[191:160];
                end
                ADDR_TRAINEDREGION_O_DATA_6: begin
                    rdata <= int_trainedRegion_o[223:192];
                end
                ADDR_TRAINEDREGION_O_DATA_7: begin
                    rdata <= int_trainedRegion_o[255:224];
                end
                ADDR_TRAINEDREGION_O_DATA_8: begin
                    rdata <= int_trainedRegion_o[287:256];
                end
                ADDR_TRAINEDREGION_O_DATA_9: begin
                    rdata <= int_trainedRegion_o[319:288];
                end
                ADDR_TRAINEDREGION_O_DATA_10: begin
                    rdata <= int_trainedRegion_o[351:320];
                end
                ADDR_TRAINEDREGION_O_DATA_11: begin
                    rdata <= int_trainedRegion_o[383:352];
                end
                ADDR_TRAINEDREGION_O_DATA_12: begin
                    rdata <= int_trainedRegion_o[415:384];
                end
                ADDR_TRAINEDREGION_O_DATA_13: begin
                    rdata <= int_trainedRegion_o[447:416];
                end
                ADDR_TRAINEDREGION_O_DATA_14: begin
                    rdata <= int_trainedRegion_o[479:448];
                end
                ADDR_TRAINEDREGION_O_DATA_15: begin
                    rdata <= int_trainedRegion_o[511:480];
                end
                ADDR_TRAINEDREGION_O_DATA_16: begin
                    rdata <= int_trainedRegion_o[543:512];
                end
                ADDR_TRAINEDREGION_O_DATA_17: begin
                    rdata <= int_trainedRegion_o[575:544];
                end
                ADDR_TRAINEDREGION_O_DATA_18: begin
                    rdata <= int_trainedRegion_o[607:576];
                end
                ADDR_TRAINEDREGION_O_DATA_19: begin
                    rdata <= int_trainedRegion_o[639:608];
                end
                ADDR_TRAINEDREGION_O_DATA_20: begin
                    rdata <= int_trainedRegion_o[671:640];
                end
                ADDR_TRAINEDREGION_O_DATA_21: begin
                    rdata <= int_trainedRegion_o[703:672];
                end
                ADDR_TRAINEDREGION_O_DATA_22: begin
                    rdata <= int_trainedRegion_o[735:704];
                end
                ADDR_TRAINEDREGION_O_DATA_23: begin
                    rdata <= int_trainedRegion_o[767:736];
                end
                ADDR_IOREGIONIDX_DATA_0: begin
                    rdata <= int_IORegionIdx[7:0];
                end
                ADDR_N_REGIONS_IN_I_DATA_0: begin
                    rdata <= int_n_regions_in_i[7:0];
                end
                ADDR_N_REGIONS_IN_O_DATA_0: begin
                    rdata <= int_n_regions_in_o[7:0];
                end
            endcase
        end
        else if (int_errorInTask_read) begin
            rdata <= int_errorInTask_q1;
        end
        else if (int_outcomeInRam_read) begin
            rdata <= int_outcomeInRam_q1 >> (int_outcomeInRam_shift1 * 32);
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign flush             = int_flush;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign sw_reset          = int_sw_reset && int_flush_done;
assign accel_mode        = int_accel_mode;
assign data_in_vld_i     = int_data_in_vld_i;
assign inputData         = int_inputData;
assign IOCheckIdx        = int_IOCheckIdx;
assign trainedRegion_i   = int_trainedRegion_i;
assign IORegionIdx       = int_IORegionIdx;
assign n_regions_in_i    = int_n_regions_in_i;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_flush
always @(posedge ACLK) begin
    if (ARESET)
        int_flush <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[5])
            int_flush <= 1'b1;
        else if (int_sw_reset)
            int_flush <= 1'b1;
    end
end

// int_flush_done
always @(posedge ACLK) begin
    if (ARESET)
        int_flush_done <= 1'b0;
    else if (ACLK_EN) begin
        if (flush_done)
            int_flush_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_flush_done <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_sw_reset
always @(posedge ACLK) begin
    if (ARESET)
        int_sw_reset <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[1] && WDATA[8])
            int_sw_reset <= 1'b1;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (ar_hs && raddr == ADDR_ISR)
            int_isr[0] <= 1'b0; // clear on read
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (ar_hs && raddr == ADDR_ISR)
            int_isr[1] <= 1'b0; // clear on read
    end
end

// int_accel_mode[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_accel_mode[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_ACCEL_MODE_DATA_0)
            int_accel_mode[7:0] <= (WDATA[31:0] & wmask) | (int_accel_mode[7:0] & ~wmask);
    end
end

// int_data_in_vld_i[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_data_in_vld_i[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DATA_IN_VLD_I_DATA_0)
            int_data_in_vld_i[7:0] <= (WDATA[31:0] & wmask) | (int_data_in_vld_i[7:0] & ~wmask);
    end
end

// int_data_in_vld_o
always @(posedge ACLK) begin
    if (ARESET)
        int_data_in_vld_o <= 0;
    else if (ACLK_EN) begin
        if (data_in_vld_o_ap_vld)
            int_data_in_vld_o <= data_in_vld_o;
    end
end

// int_data_in_vld_o_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_data_in_vld_o_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (data_in_vld_o_ap_vld)
            int_data_in_vld_o_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_DATA_IN_VLD_O_CTRL)
            int_data_in_vld_o_ap_vld <= 1'b0; // clear on read
    end
end

// int_inputData[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_inputData[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUTDATA_DATA_0)
            int_inputData[31:0] <= (WDATA[31:0] & wmask) | (int_inputData[31:0] & ~wmask);
    end
end

// int_inputData[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_inputData[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUTDATA_DATA_1)
            int_inputData[63:32] <= (WDATA[31:0] & wmask) | (int_inputData[63:32] & ~wmask);
    end
end

// int_IOCheckIdx[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_IOCheckIdx[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IOCHECKIDX_DATA_0)
            int_IOCheckIdx[7:0] <= (WDATA[31:0] & wmask) | (int_IOCheckIdx[7:0] & ~wmask);
    end
end

// int_trainedRegion_i[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_0)
            int_trainedRegion_i[31:0] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[31:0] & ~wmask);
    end
end

// int_trainedRegion_i[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_1)
            int_trainedRegion_i[63:32] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[63:32] & ~wmask);
    end
end

// int_trainedRegion_i[95:64]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[95:64] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_2)
            int_trainedRegion_i[95:64] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[95:64] & ~wmask);
    end
end

// int_trainedRegion_i[127:96]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[127:96] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_3)
            int_trainedRegion_i[127:96] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[127:96] & ~wmask);
    end
end

// int_trainedRegion_i[159:128]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[159:128] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_4)
            int_trainedRegion_i[159:128] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[159:128] & ~wmask);
    end
end

// int_trainedRegion_i[191:160]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[191:160] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_5)
            int_trainedRegion_i[191:160] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[191:160] & ~wmask);
    end
end

// int_trainedRegion_i[223:192]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[223:192] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_6)
            int_trainedRegion_i[223:192] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[223:192] & ~wmask);
    end
end

// int_trainedRegion_i[255:224]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[255:224] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_7)
            int_trainedRegion_i[255:224] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[255:224] & ~wmask);
    end
end

// int_trainedRegion_i[287:256]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[287:256] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_8)
            int_trainedRegion_i[287:256] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[287:256] & ~wmask);
    end
end

// int_trainedRegion_i[319:288]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[319:288] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_9)
            int_trainedRegion_i[319:288] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[319:288] & ~wmask);
    end
end

// int_trainedRegion_i[351:320]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[351:320] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_10)
            int_trainedRegion_i[351:320] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[351:320] & ~wmask);
    end
end

// int_trainedRegion_i[383:352]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[383:352] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_11)
            int_trainedRegion_i[383:352] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[383:352] & ~wmask);
    end
end

// int_trainedRegion_i[415:384]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[415:384] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_12)
            int_trainedRegion_i[415:384] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[415:384] & ~wmask);
    end
end

// int_trainedRegion_i[447:416]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[447:416] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_13)
            int_trainedRegion_i[447:416] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[447:416] & ~wmask);
    end
end

// int_trainedRegion_i[479:448]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[479:448] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_14)
            int_trainedRegion_i[479:448] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[479:448] & ~wmask);
    end
end

// int_trainedRegion_i[511:480]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[511:480] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_15)
            int_trainedRegion_i[511:480] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[511:480] & ~wmask);
    end
end

// int_trainedRegion_i[543:512]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[543:512] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_16)
            int_trainedRegion_i[543:512] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[543:512] & ~wmask);
    end
end

// int_trainedRegion_i[575:544]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[575:544] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_17)
            int_trainedRegion_i[575:544] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[575:544] & ~wmask);
    end
end

// int_trainedRegion_i[607:576]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[607:576] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_18)
            int_trainedRegion_i[607:576] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[607:576] & ~wmask);
    end
end

// int_trainedRegion_i[639:608]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[639:608] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_19)
            int_trainedRegion_i[639:608] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[639:608] & ~wmask);
    end
end

// int_trainedRegion_i[671:640]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[671:640] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_20)
            int_trainedRegion_i[671:640] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[671:640] & ~wmask);
    end
end

// int_trainedRegion_i[703:672]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[703:672] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_21)
            int_trainedRegion_i[703:672] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[703:672] & ~wmask);
    end
end

// int_trainedRegion_i[735:704]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[735:704] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_22)
            int_trainedRegion_i[735:704] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[735:704] & ~wmask);
    end
end

// int_trainedRegion_i[767:736]
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_i[767:736] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TRAINEDREGION_I_DATA_23)
            int_trainedRegion_i[767:736] <= (WDATA[31:0] & wmask) | (int_trainedRegion_i[767:736] & ~wmask);
    end
end

// int_trainedRegion_o
always @(posedge ACLK) begin
    if (ARESET)
        int_trainedRegion_o <= 0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_trainedRegion_o <= trainedRegion_o;
    end
end

// int_IORegionIdx[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_IORegionIdx[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IOREGIONIDX_DATA_0)
            int_IORegionIdx[7:0] <= (WDATA[31:0] & wmask) | (int_IORegionIdx[7:0] & ~wmask);
    end
end

// int_n_regions_in_i[7:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_n_regions_in_i[7:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_N_REGIONS_IN_I_DATA_0)
            int_n_regions_in_i[7:0] <= (WDATA[31:0] & wmask) | (int_n_regions_in_i[7:0] & ~wmask);
    end
end

// int_n_regions_in_o
always @(posedge ACLK) begin
    if (ARESET)
        int_n_regions_in_o <= 0;
    else if (ACLK_EN) begin
        if (ap_done)
            int_n_regions_in_o <= n_regions_in_o;
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------
// errorInTask
assign int_errorInTask_address0  = errorInTask_address0 >> 2;
assign int_errorInTask_ce0       = errorInTask_ce0;
assign int_errorInTask_be0       = errorInTask_we0 << errorInTask_address0[1:0];
assign int_errorInTask_d0        = {4{errorInTask_d0}};
assign errorInTask_q0            = int_errorInTask_q0 >> (int_errorInTask_shift0 * 8);
assign int_errorInTask_address1  = ar_hs? raddr[3:2] : waddr[3:2];
assign int_errorInTask_ce1       = ar_hs | (int_errorInTask_write & WVALID);
assign int_errorInTask_we1       = int_errorInTask_write & w_hs;
assign int_errorInTask_be1       = int_errorInTask_we1 ? WSTRB : 'b0;
assign int_errorInTask_d1        = WDATA;
// outcomeInRam
assign int_outcomeInRam_address0 = outcomeInRam_address0;
assign int_outcomeInRam_ce0      = outcomeInRam_ce0;
assign int_outcomeInRam_be0      = outcomeInRam_we0;
assign int_outcomeInRam_d0       = outcomeInRam_d0;
assign int_outcomeInRam_address1 = ar_hs? raddr[9:6] : waddr[9:6];
assign int_outcomeInRam_ce1      = ar_hs | (int_outcomeInRam_write & WVALID);
// int_errorInTask_read
always @(posedge ACLK) begin
    if (ARESET)
        int_errorInTask_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_ERRORINTASK_BASE && raddr <= ADDR_ERRORINTASK_HIGH)
            int_errorInTask_read <= 1'b1;
        else
            int_errorInTask_read <= 1'b0;
    end
end

// int_errorInTask_write
always @(posedge ACLK) begin
    if (ARESET)
        int_errorInTask_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_ERRORINTASK_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_ERRORINTASK_HIGH)
            int_errorInTask_write <= 1'b1;
        else if (w_hs)
            int_errorInTask_write <= 1'b0;
    end
end

// int_errorInTask_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_errorInTask_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (errorInTask_ce0)
            int_errorInTask_shift0 <= errorInTask_address0[1:0];
    end
end

// int_outcomeInRam_read
always @(posedge ACLK) begin
    if (ARESET)
        int_outcomeInRam_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_OUTCOMEINRAM_BASE && raddr <= ADDR_OUTCOMEINRAM_HIGH)
            int_outcomeInRam_read <= 1'b1;
        else
            int_outcomeInRam_read <= 1'b0;
    end
end

// int_outcomeInRam_shift1
always @(posedge ACLK) begin
    if (ARESET)
        int_outcomeInRam_shift1 <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs)
            int_outcomeInRam_shift1 <= raddr[5:2];
    end
end


endmodule


`timescale 1ns/1ps

module run_control_s_axi_ram
#(parameter
    MEM_STYLE = "auto",
    MEM_TYPE  = "S2P",
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire [BYTES-1:0]   we0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire [BYTES-1:0]   we1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------ Parameters -------------------
localparam
    BYTE_WIDTH = 8,
    PORT0 = (MEM_TYPE == "S2P") ? "WO" : ((MEM_TYPE == "2P") ? "RO" : "RW"),
    PORT1 = (MEM_TYPE == "S2P") ? "RO" : "RW";
//------------------------Local signal-------------------
(* ram_style = MEM_STYLE*)
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
wire re0, re1;
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
generate
    if (MEM_STYLE == "hls_ultra" && PORT0 == "RW") begin
        assign re0 = ce0 & ~|we0;
    end else begin
        assign re0 = ce0;
    end
endgenerate

generate
    if (MEM_STYLE == "hls_ultra" && PORT1 == "RW") begin
        assign re1 = ce1 & ~|we1;
    end else begin
        assign re1 = ce1;
    end
endgenerate

// read port 0
generate if (PORT0 != "WO") begin
    always @(posedge clk0) begin
        if (re0) q0 <= mem[address0];
    end
end
endgenerate

// read port 1
generate if (PORT1 != "WO") begin
    always @(posedge clk1) begin
        if (re1) q1 <= mem[address1];
    end
end
endgenerate

integer i;
// write port 0
generate if (PORT0 != "RO") begin
    always @(posedge clk0) begin
        if (ce0)
        for (i = 0; i < BYTES; i = i + 1)
            if (we0[i])
                mem[address0][i*BYTE_WIDTH +: BYTE_WIDTH] <= d0[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

// write port 1
generate if (PORT1 != "RO") begin
    always @(posedge clk1) begin
        if (ce1)
        for (i = 0; i < BYTES; i = i + 1)
            if (we1[i])
                mem[address1][i*BYTE_WIDTH +: BYTE_WIDTH] <= d1[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

endmodule

