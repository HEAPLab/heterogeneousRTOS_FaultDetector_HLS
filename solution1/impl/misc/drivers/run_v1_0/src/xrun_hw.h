// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00000 : Control signals
//           bit 0  - ap_start (Read/Write/COH)
//           bit 1  - ap_done (Read)
//           bit 2  - ap_idle (Read)
//           bit 3  - ap_ready (Read/COR)
//           bit 4  - ap_continue (Read/Write/SC)
//           bit 7  - auto_restart (Read/Write)
//           bit 9  - interrupt (Read)
//           others - reserved
// 0x00004 : Global Interrupt Enable Register
//           bit 0  - Global Interrupt Enable (Read/Write)
//           others - reserved
// 0x00008 : IP Interrupt Enable Register (Read/Write)
//           bit 0 - enable ap_done interrupt (Read/Write)
//           bit 1 - enable ap_ready interrupt (Read/Write)
//           others - reserved
// 0x0000c : IP Interrupt Status Register (Read/COR)
//           bit 0 - ap_done (Read/COR)
//           bit 1 - ap_ready (Read/COR)
//           others - reserved
// 0x00010 : Data signal of contr
//           bit 31~0 - contr[31:0] (Read/Write)
// 0x00014 : reserved
// 0x00018 : Data signal of sharedMem
//           bit 31~0 - sharedMem[31:0] (Read/Write)
// 0x0001c : Data signal of sharedMem
//           bit 31~0 - sharedMem[63:32] (Read/Write)
// 0x00020 : reserved
// 0x00080 ~
// 0x000ff : Memory 'realTaskId' (128 * 8b)
//           Word n : bit [ 7: 0] - realTaskId[4n]
//                    bit [15: 8] - realTaskId[4n+1]
//                    bit [23:16] - realTaskId[4n+2]
//                    bit [31:24] - realTaskId[4n+3]
// 0x00100 ~
// 0x001ff : Memory 'n_regions_in' (128 * 16b)
//           Word n : bit [15: 0] - n_regions_in[2n]
//                    bit [31:16] - n_regions_in[2n+1]
// 0x40000 ~
// 0x7ffff : Memory 'trainedRegions' (49152 * 32b)
//           Word n : bit [31:0] - trainedRegions[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XRUN_CONTROL_ADDR_AP_CTRL             0x00000
#define XRUN_CONTROL_ADDR_GIE                 0x00004
#define XRUN_CONTROL_ADDR_IER                 0x00008
#define XRUN_CONTROL_ADDR_ISR                 0x0000c
#define XRUN_CONTROL_ADDR_CONTR_DATA          0x00010
#define XRUN_CONTROL_BITS_CONTR_DATA          32
#define XRUN_CONTROL_ADDR_SHAREDMEM_DATA      0x00018
#define XRUN_CONTROL_BITS_SHAREDMEM_DATA      64
#define XRUN_CONTROL_ADDR_REALTASKID_BASE     0x00080
#define XRUN_CONTROL_ADDR_REALTASKID_HIGH     0x000ff
#define XRUN_CONTROL_WIDTH_REALTASKID         8
#define XRUN_CONTROL_DEPTH_REALTASKID         128
#define XRUN_CONTROL_ADDR_N_REGIONS_IN_BASE   0x00100
#define XRUN_CONTROL_ADDR_N_REGIONS_IN_HIGH   0x001ff
#define XRUN_CONTROL_WIDTH_N_REGIONS_IN       16
#define XRUN_CONTROL_DEPTH_N_REGIONS_IN       128
#define XRUN_CONTROL_ADDR_TRAINEDREGIONS_BASE 0x40000
#define XRUN_CONTROL_ADDR_TRAINEDREGIONS_HIGH 0x7ffff
#define XRUN_CONTROL_WIDTH_TRAINEDREGIONS     32
#define XRUN_CONTROL_DEPTH_TRAINEDREGIONS     49152
