// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module run_run_test (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        bubble,
        p_read,
        regions_min_0_address0,
        regions_min_0_ce0,
        regions_min_0_q0,
        regions_min_0_offset,
        regions_min_1_address0,
        regions_min_1_ce0,
        regions_min_1_q0,
        regions_min_1_offset,
        regions_max_0_address0,
        regions_max_0_ce0,
        regions_max_0_q0,
        regions_max_0_offset,
        regions_max_1_address0,
        regions_max_1_ce0,
        regions_max_1_q0,
        regions_max_1_offset,
        n_regions,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        ap_return
);

parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] bubble;
input  [0:0] p_read;
output  [11:0] regions_min_0_address0;
output   regions_min_0_ce0;
input  [31:0] regions_min_0_q0;
input  [5:0] regions_min_0_offset;
output  [11:0] regions_min_1_address0;
output   regions_min_1_ce0;
input  [31:0] regions_min_1_q0;
input  [5:0] regions_min_1_offset;
output  [11:0] regions_max_0_address0;
output   regions_max_0_ce0;
input  [31:0] regions_max_0_q0;
input  [5:0] regions_max_0_offset;
output  [11:0] regions_max_1_address0;
output   regions_max_1_ce0;
input  [31:0] regions_max_1_q0;
input  [5:0] regions_max_1_offset;
input  [7:0] n_regions;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read4;
input  [31:0] p_read5;
input  [31:0] p_read6;
input  [31:0] p_read7;
input  [31:0] p_read8;
output  [0:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg regions_min_0_ce0;
reg regions_min_1_ce0;
reg regions_max_0_ce0;
reg regions_max_1_ce0;
reg[0:0] ap_return;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] bubble_read_read_fu_208_p2;
wire   [8:0] tmp_5_fu_310_p3;
reg   [8:0] tmp_5_reg_817;
wire   [8:0] tmp_11_fu_318_p3;
reg   [8:0] tmp_11_reg_822;
wire   [8:0] tmp_12_fu_326_p3;
reg   [8:0] tmp_12_reg_827;
wire   [8:0] tmp_13_fu_334_p3;
reg   [8:0] tmp_13_reg_832;
wire   [0:0] icmp_ln76_fu_350_p2;
reg   [0:0] icmp_ln76_reg_844;
wire    ap_CS_fsm_state2;
wire   [3:0] add_ln76_fu_356_p2;
reg   [3:0] add_ln76_reg_848;
wire   [31:0] p_x_assign_fu_362_p10;
wire   [0:0] icmp_ln79_fu_397_p2;
reg   [0:0] icmp_ln79_reg_860;
wire   [0:0] icmp_ln79_1_fu_403_p2;
reg   [0:0] icmp_ln79_1_reg_865;
wire   [0:0] icmp_ln1073_fu_409_p2;
reg   [0:0] icmp_ln1073_reg_870;
wire   [0:0] trunc_ln1073_fu_448_p1;
reg   [0:0] trunc_ln1073_reg_884;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln1073_1_fu_452_p2;
reg   [0:0] icmp_ln1073_1_reg_890;
wire   [7:0] add_ln55_fu_457_p2;
reg   [7:0] add_ln55_reg_894;
wire   [11:0] tmp_15_fu_482_p3;
reg   [11:0] tmp_15_reg_899;
wire   [11:0] tmp_16_fu_499_p3;
reg   [11:0] tmp_16_reg_904;
wire   [11:0] tmp_17_fu_516_p3;
reg   [11:0] tmp_17_reg_909;
wire   [11:0] tmp_18_fu_533_p3;
reg   [11:0] tmp_18_reg_914;
wire    ap_CS_fsm_state5;
wire   [11:0] add_ln65_6_fu_565_p2;
reg   [11:0] add_ln65_6_reg_929;
wire   [11:0] add_ln65_7_fu_570_p2;
reg   [11:0] add_ln65_7_reg_934;
wire   [31:0] tmp_1_fu_575_p10;
reg   [31:0] tmp_1_reg_939;
wire   [63:0] add_ln61_fu_589_p2;
reg   [63:0] add_ln61_reg_945;
wire   [31:0] tmp_fu_595_p4;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln65_fu_623_p2;
reg   [0:0] icmp_ln65_reg_955;
wire   [0:0] icmp_ln65_1_fu_629_p2;
reg   [0:0] icmp_ln65_1_reg_960;
wire    ap_CS_fsm_state7;
wire   [0:0] and_ln65_1_fu_688_p2;
reg   [0:0] and_ln65_1_reg_975;
wire   [31:0] tmp_2_fu_694_p4;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln65_4_fu_722_p2;
reg   [0:0] icmp_ln65_4_reg_984;
wire   [0:0] icmp_ln65_5_fu_728_p2;
reg   [0:0] icmp_ln65_5_reg_989;
reg   [63:0] j_reg_266;
wire    ap_CS_fsm_state9;
wire   [0:0] and_ln65_2_fu_738_p2;
wire   [0:0] icmp_ln66_fu_744_p2;
reg   [0:0] ap_phi_mux_phi_ln464_phi_fu_282_p8;
reg   [0:0] phi_ln464_reg_278;
wire    ap_CS_fsm_state3;
wire   [0:0] or_ln79_1_fu_435_p2;
wire   [63:0] zext_ln65_4_fu_550_p1;
wire   [63:0] zext_ln65_5_fu_560_p1;
wire   [63:0] zext_ln65_6_fu_635_p1;
wire   [63:0] zext_ln65_7_fu_639_p1;
reg   [3:0] i_fu_116;
reg   [7:0] i_1_fu_120;
reg   [31:0] grp_fu_295_p0;
reg   [31:0] grp_fu_295_p1;
wire   [31:0] bitcast_ln79_fu_379_p1;
wire   [7:0] tmp_3_fu_383_p4;
wire   [22:0] trunc_ln79_fu_393_p1;
wire   [0:0] grp_fu_300_p2;
wire   [0:0] grp_fu_305_p2;
wire   [0:0] or_ln79_fu_419_p2;
wire   [0:0] or_ln79_2_fu_423_p2;
wire   [0:0] and_ln79_fu_429_p2;
wire   [0:0] grp_fu_295_p2;
wire   [6:0] tmp_14_fu_463_p4;
wire   [8:0] zext_ln65_fu_473_p1;
wire   [8:0] add_ln65_fu_477_p2;
wire   [8:0] zext_ln65_1_fu_490_p1;
wire   [8:0] add_ln65_1_fu_494_p2;
wire   [8:0] zext_ln65_2_fu_507_p1;
wire   [8:0] add_ln65_2_fu_511_p2;
wire   [8:0] zext_ln65_3_fu_524_p1;
wire   [8:0] add_ln65_3_fu_528_p2;
wire   [11:0] trunc_ln65_fu_541_p1;
wire   [11:0] add_ln65_4_fu_545_p2;
wire   [11:0] add_ln65_5_fu_555_p2;
wire   [31:0] bitcast_ln65_fu_605_p1;
wire   [7:0] tmp_7_fu_609_p4;
wire   [22:0] trunc_ln65_1_fu_619_p1;
wire   [31:0] bitcast_ln65_1_fu_643_p1;
wire   [7:0] tmp_8_fu_646_p4;
wire   [22:0] trunc_ln65_2_fu_656_p1;
wire   [0:0] icmp_ln65_3_fu_670_p2;
wire   [0:0] icmp_ln65_2_fu_664_p2;
wire   [0:0] or_ln65_fu_660_p2;
wire   [0:0] or_ln65_1_fu_676_p2;
wire   [0:0] and_ln65_fu_682_p2;
wire   [31:0] bitcast_ln65_2_fu_704_p1;
wire   [7:0] tmp_s_fu_708_p4;
wire   [22:0] trunc_ln65_3_fu_718_p1;
wire   [0:0] or_ln65_2_fu_734_p2;
reg   [4:0] grp_fu_295_opcode;
reg   [0:0] ap_return_preg;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_condition_593;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_return_preg = 1'd0;
end

run_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U116(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_295_p0),
    .din1(grp_fu_295_p1),
    .ce(1'b1),
    .opcode(grp_fu_295_opcode),
    .dout(grp_fu_295_p2)
);

run_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U117(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_x_assign_fu_362_p10),
    .din1(32'd2139095040),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_300_p2)
);

run_fcmp_32ns_32ns_1_2_no_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 1 ))
fcmp_32ns_32ns_1_2_no_dsp_1_U118(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(p_x_assign_fu_362_p10),
    .din1(32'd4286578688),
    .ce(1'b1),
    .opcode(5'd1),
    .dout(grp_fu_305_p2)
);

run_mux_84_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 4 ),
    .dout_WIDTH( 32 ))
mux_84_32_1_1_U119(
    .din0(p_read1),
    .din1(p_read2),
    .din2(p_read3),
    .din3(p_read4),
    .din4(p_read5),
    .din5(p_read6),
    .din6(p_read7),
    .din7(p_read8),
    .din8(i_fu_116),
    .dout(p_x_assign_fu_362_p10)
);

run_mux_864_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 64 ),
    .dout_WIDTH( 32 ))
mux_864_32_1_1_U120(
    .din0(p_read1),
    .din1(p_read2),
    .din2(p_read3),
    .din3(p_read4),
    .din4(p_read5),
    .din5(p_read6),
    .din6(p_read7),
    .din7(p_read8),
    .din8(j_reg_266),
    .dout(tmp_1_fu_575_p10)
);

run_mux_21_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 1 ),
    .dout_WIDTH( 32 ))
mux_21_32_1_1_U121(
    .din0(regions_min_0_q0),
    .din1(regions_min_1_q0),
    .din2(trunc_ln1073_reg_884),
    .dout(tmp_fu_595_p4)
);

run_mux_21_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 1 ),
    .dout_WIDTH( 32 ))
mux_21_32_1_1_U122(
    .din0(regions_max_0_q0),
    .din1(regions_max_1_q0),
    .din2(trunc_ln1073_reg_884),
    .dout(tmp_2_fu_694_p4)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state9) & ((bubble_read_read_fu_208_p2 == 1'd1) | ((icmp_ln76_reg_844 == 1'd0) | ((icmp_ln1073_reg_870 == 1'd1) | ((icmp_ln1073_1_reg_890 == 1'd0) | ((icmp_ln66_fu_744_p2 == 1'd1) & (1'd1 == and_ln65_2_fu_738_p2) & (1'd1 == and_ln65_1_reg_975)))))))) begin
            ap_return_preg <= ap_phi_mux_phi_ln464_phi_fu_282_p8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln76_fu_350_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln1073_fu_409_p2 == 1'd0))) begin
        i_1_fu_120 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state9) & (((bubble_read_read_fu_208_p2 == 1'd0) & (icmp_ln1073_1_reg_890 == 1'd1) & (icmp_ln1073_reg_870 == 1'd0) & (1'd0 == and_ln65_1_reg_975) & (icmp_ln76_reg_844 == 1'd1)) | ((bubble_read_read_fu_208_p2 == 1'd0) & (icmp_ln1073_1_reg_890 == 1'd1) & (icmp_ln1073_reg_870 == 1'd0) & (1'd0 == and_ln65_2_fu_738_p2) & (icmp_ln76_reg_844 == 1'd1))))) begin
        i_1_fu_120 <= add_ln55_reg_894;
    end
end

always @ (posedge ap_clk) begin
    if (((bubble_read_read_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_116 <= 4'd0;
    end else if (((or_ln79_1_fu_435_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        i_fu_116 <= add_ln76_reg_848;
    end
end

always @ (posedge ap_clk) begin
    if ((icmp_ln1073_reg_870 == 1'd0)) begin
        if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1073_1_fu_452_p2 == 1'd1))) begin
            j_reg_266 <= 64'd0;
        end else if ((1'b1 == ap_condition_593)) begin
            j_reg_266 <= add_ln61_reg_945;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((bubble_read_read_fu_208_p2 == 1'd0) & (icmp_ln66_fu_744_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9) & (icmp_ln1073_1_reg_890 == 1'd1) & (1'd1 == and_ln65_2_fu_738_p2) & (1'd1 == and_ln65_1_reg_975) & (icmp_ln1073_reg_870 == 1'd0) & (icmp_ln76_reg_844 == 1'd1))) begin
        phi_ln464_reg_278 <= 1'd0;
    end else if ((((or_ln79_1_fu_435_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((1'b1 == ap_CS_fsm_state4) & ((icmp_ln1073_1_fu_452_p2 == 1'd0) | (icmp_ln1073_reg_870 == 1'd1))))) begin
        phi_ln464_reg_278 <= 1'd1;
    end else if (((bubble_read_read_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        phi_ln464_reg_278 <= p_read;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1073_reg_870 == 1'd0))) begin
        add_ln55_reg_894 <= add_ln55_fu_457_p2;
        icmp_ln1073_1_reg_890 <= icmp_ln1073_1_fu_452_p2;
        trunc_ln1073_reg_884 <= trunc_ln1073_fu_448_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        add_ln61_reg_945 <= add_ln61_fu_589_p2;
        add_ln65_6_reg_929 <= add_ln65_6_fu_565_p2;
        add_ln65_7_reg_934 <= add_ln65_7_fu_570_p2;
        tmp_1_reg_939 <= tmp_1_fu_575_p10;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln76_reg_848 <= add_ln76_fu_356_p2;
        icmp_ln76_reg_844 <= icmp_ln76_fu_350_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        and_ln65_1_reg_975 <= and_ln65_1_fu_688_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln76_fu_350_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln1073_reg_870 <= icmp_ln1073_fu_409_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        icmp_ln65_1_reg_960 <= icmp_ln65_1_fu_629_p2;
        icmp_ln65_reg_955 <= icmp_ln65_fu_623_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        icmp_ln65_4_reg_984 <= icmp_ln65_4_fu_722_p2;
        icmp_ln65_5_reg_989 <= icmp_ln65_5_fu_728_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln76_fu_350_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        icmp_ln79_1_reg_865 <= icmp_ln79_1_fu_403_p2;
        icmp_ln79_reg_860 <= icmp_ln79_fu_397_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        tmp_11_reg_822[8 : 3] <= tmp_11_fu_318_p3[8 : 3];
        tmp_12_reg_827[8 : 3] <= tmp_12_fu_326_p3[8 : 3];
        tmp_13_reg_832[8 : 3] <= tmp_13_fu_334_p3[8 : 3];
        tmp_5_reg_817[8 : 3] <= tmp_5_fu_310_p3[8 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1073_1_fu_452_p2 == 1'd1) & (icmp_ln1073_reg_870 == 1'd0))) begin
        tmp_15_reg_899[11 : 3] <= tmp_15_fu_482_p3[11 : 3];
        tmp_16_reg_904[11 : 3] <= tmp_16_fu_499_p3[11 : 3];
        tmp_17_reg_909[11 : 3] <= tmp_17_fu_516_p3[11 : 3];
        tmp_18_reg_914[11 : 3] <= tmp_18_fu_533_p3[11 : 3];
    end
end

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state9) & ((bubble_read_read_fu_208_p2 == 1'd1) | ((icmp_ln76_reg_844 == 1'd0) | ((icmp_ln1073_reg_870 == 1'd1) | ((icmp_ln1073_1_reg_890 == 1'd0) | ((icmp_ln66_fu_744_p2 == 1'd1) & (1'd1 == and_ln65_2_fu_738_p2) & (1'd1 == and_ln65_1_reg_975))))))))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((bubble_read_read_fu_208_p2 == 1'd0) & (icmp_ln66_fu_744_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state9) & (icmp_ln1073_1_reg_890 == 1'd1) & (1'd1 == and_ln65_2_fu_738_p2) & (1'd1 == and_ln65_1_reg_975) & (icmp_ln1073_reg_870 == 1'd0) & (icmp_ln76_reg_844 == 1'd1))) begin
        ap_phi_mux_phi_ln464_phi_fu_282_p8 = 1'd0;
    end else begin
        ap_phi_mux_phi_ln464_phi_fu_282_p8 = phi_ln464_reg_278;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & ((bubble_read_read_fu_208_p2 == 1'd1) | ((icmp_ln76_reg_844 == 1'd0) | ((icmp_ln1073_reg_870 == 1'd1) | ((icmp_ln1073_1_reg_890 == 1'd0) | ((icmp_ln66_fu_744_p2 == 1'd1) & (1'd1 == and_ln65_2_fu_738_p2) & (1'd1 == and_ln65_1_reg_975)))))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & ((bubble_read_read_fu_208_p2 == 1'd1) | ((icmp_ln76_reg_844 == 1'd0) | ((icmp_ln1073_reg_870 == 1'd1) | ((icmp_ln1073_1_reg_890 == 1'd0) | ((icmp_ln66_fu_744_p2 == 1'd1) & (1'd1 == and_ln65_2_fu_738_p2) & (1'd1 == and_ln65_1_reg_975)))))))) begin
        ap_return = ap_phi_mux_phi_ln464_phi_fu_282_p8;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_295_opcode = 5'd3;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_295_opcode = 5'd5;
    end else if (((icmp_ln76_fu_350_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_fu_295_opcode = 5'd8;
    end else begin
        grp_fu_295_opcode = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_295_p0 = tmp_2_fu_694_p4;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_295_p0 = tmp_fu_595_p4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_295_p0 = p_x_assign_fu_362_p10;
    end else begin
        grp_fu_295_p0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        grp_fu_295_p1 = tmp_1_reg_939;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_295_p1 = 32'd0;
    end else begin
        grp_fu_295_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        regions_max_0_ce0 = 1'b1;
    end else begin
        regions_max_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        regions_max_1_ce0 = 1'b1;
    end else begin
        regions_max_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        regions_min_0_ce0 = 1'b1;
    end else begin
        regions_min_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        regions_min_1_ce0 = 1'b1;
    end else begin
        regions_min_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((bubble_read_read_fu_208_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((bubble_read_read_fu_208_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln76_fu_350_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((or_ln79_1_fu_435_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & ((icmp_ln1073_1_fu_452_p2 == 1'd0) | (icmp_ln1073_reg_870 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (1'd0 == and_ln65_1_fu_688_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & ((bubble_read_read_fu_208_p2 == 1'd1) | ((icmp_ln76_reg_844 == 1'd0) | ((icmp_ln1073_reg_870 == 1'd1) | ((icmp_ln1073_1_reg_890 == 1'd0) | ((icmp_ln66_fu_744_p2 == 1'd1) & (1'd1 == and_ln65_2_fu_738_p2) & (1'd1 == and_ln65_1_reg_975)))))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state9) & (((bubble_read_read_fu_208_p2 == 1'd0) & (icmp_ln1073_1_reg_890 == 1'd1) & (icmp_ln1073_reg_870 == 1'd0) & (1'd0 == and_ln65_1_reg_975) & (icmp_ln76_reg_844 == 1'd1)) | ((bubble_read_read_fu_208_p2 == 1'd0) & (icmp_ln1073_1_reg_890 == 1'd1) & (icmp_ln1073_reg_870 == 1'd0) & (1'd0 == and_ln65_2_fu_738_p2) & (icmp_ln76_reg_844 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln55_fu_457_p2 = (i_1_fu_120 + 8'd1);

assign add_ln61_fu_589_p2 = (j_reg_266 + 64'd1);

assign add_ln65_1_fu_494_p2 = (tmp_12_reg_827 + zext_ln65_1_fu_490_p1);

assign add_ln65_2_fu_511_p2 = (tmp_11_reg_822 + zext_ln65_2_fu_507_p1);

assign add_ln65_3_fu_528_p2 = (tmp_5_reg_817 + zext_ln65_3_fu_524_p1);

assign add_ln65_4_fu_545_p2 = (tmp_15_reg_899 + trunc_ln65_fu_541_p1);

assign add_ln65_5_fu_555_p2 = (tmp_16_reg_904 + trunc_ln65_fu_541_p1);

assign add_ln65_6_fu_565_p2 = (tmp_17_reg_909 + trunc_ln65_fu_541_p1);

assign add_ln65_7_fu_570_p2 = (tmp_18_reg_914 + trunc_ln65_fu_541_p1);

assign add_ln65_fu_477_p2 = (tmp_13_reg_832 + zext_ln65_fu_473_p1);

assign add_ln76_fu_356_p2 = (i_fu_116 + 4'd1);

assign and_ln65_1_fu_688_p2 = (grp_fu_295_p2 & and_ln65_fu_682_p2);

assign and_ln65_2_fu_738_p2 = (or_ln65_2_fu_734_p2 & grp_fu_295_p2);

assign and_ln65_fu_682_p2 = (or_ln65_fu_660_p2 & or_ln65_1_fu_676_p2);

assign and_ln79_fu_429_p2 = (or_ln79_fu_419_p2 & or_ln79_2_fu_423_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_condition_593 = ((bubble_read_read_fu_208_p2 == 1'd0) & (icmp_ln66_fu_744_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state9) & (icmp_ln1073_1_reg_890 == 1'd1) & (1'd1 == and_ln65_2_fu_738_p2) & (1'd1 == and_ln65_1_reg_975) & (icmp_ln76_reg_844 == 1'd1));
end

assign bitcast_ln65_1_fu_643_p1 = tmp_1_reg_939;

assign bitcast_ln65_2_fu_704_p1 = tmp_2_fu_694_p4;

assign bitcast_ln65_fu_605_p1 = tmp_fu_595_p4;

assign bitcast_ln79_fu_379_p1 = p_x_assign_fu_362_p10;

assign bubble_read_read_fu_208_p2 = bubble;

assign icmp_ln1073_1_fu_452_p2 = ((i_1_fu_120 < n_regions) ? 1'b1 : 1'b0);

assign icmp_ln1073_fu_409_p2 = ((n_regions == 8'd0) ? 1'b1 : 1'b0);

assign icmp_ln65_1_fu_629_p2 = ((trunc_ln65_1_fu_619_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln65_2_fu_664_p2 = ((tmp_8_fu_646_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln65_3_fu_670_p2 = ((trunc_ln65_2_fu_656_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln65_4_fu_722_p2 = ((tmp_s_fu_708_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln65_5_fu_728_p2 = ((trunc_ln65_3_fu_718_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln65_fu_623_p2 = ((tmp_7_fu_609_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln66_fu_744_p2 = ((j_reg_266 == 64'd7) ? 1'b1 : 1'b0);

assign icmp_ln76_fu_350_p2 = ((i_fu_116 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln79_1_fu_403_p2 = ((trunc_ln79_fu_393_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln79_fu_397_p2 = ((tmp_3_fu_383_p4 != 8'd255) ? 1'b1 : 1'b0);

assign or_ln65_1_fu_676_p2 = (icmp_ln65_3_fu_670_p2 | icmp_ln65_2_fu_664_p2);

assign or_ln65_2_fu_734_p2 = (icmp_ln65_5_reg_989 | icmp_ln65_4_reg_984);

assign or_ln65_fu_660_p2 = (icmp_ln65_reg_955 | icmp_ln65_1_reg_960);

assign or_ln79_1_fu_435_p2 = (grp_fu_295_p2 | and_ln79_fu_429_p2);

assign or_ln79_2_fu_423_p2 = (grp_fu_305_p2 | grp_fu_300_p2);

assign or_ln79_fu_419_p2 = (icmp_ln79_reg_860 | icmp_ln79_1_reg_865);

assign regions_max_0_address0 = zext_ln65_6_fu_635_p1;

assign regions_max_1_address0 = zext_ln65_7_fu_639_p1;

assign regions_min_0_address0 = zext_ln65_4_fu_550_p1;

assign regions_min_1_address0 = zext_ln65_5_fu_560_p1;

assign tmp_11_fu_318_p3 = {{regions_max_0_offset}, {3'd0}};

assign tmp_12_fu_326_p3 = {{regions_min_1_offset}, {3'd0}};

assign tmp_13_fu_334_p3 = {{regions_min_0_offset}, {3'd0}};

assign tmp_14_fu_463_p4 = {{i_1_fu_120[7:1]}};

assign tmp_15_fu_482_p3 = {{add_ln65_fu_477_p2}, {3'd0}};

assign tmp_16_fu_499_p3 = {{add_ln65_1_fu_494_p2}, {3'd0}};

assign tmp_17_fu_516_p3 = {{add_ln65_2_fu_511_p2}, {3'd0}};

assign tmp_18_fu_533_p3 = {{add_ln65_3_fu_528_p2}, {3'd0}};

assign tmp_3_fu_383_p4 = {{bitcast_ln79_fu_379_p1[30:23]}};

assign tmp_5_fu_310_p3 = {{regions_max_1_offset}, {3'd0}};

assign tmp_7_fu_609_p4 = {{bitcast_ln65_fu_605_p1[30:23]}};

assign tmp_8_fu_646_p4 = {{bitcast_ln65_1_fu_643_p1[30:23]}};

assign tmp_s_fu_708_p4 = {{bitcast_ln65_2_fu_704_p1[30:23]}};

assign trunc_ln1073_fu_448_p1 = i_1_fu_120[0:0];

assign trunc_ln65_1_fu_619_p1 = bitcast_ln65_fu_605_p1[22:0];

assign trunc_ln65_2_fu_656_p1 = bitcast_ln65_1_fu_643_p1[22:0];

assign trunc_ln65_3_fu_718_p1 = bitcast_ln65_2_fu_704_p1[22:0];

assign trunc_ln65_fu_541_p1 = j_reg_266[11:0];

assign trunc_ln79_fu_393_p1 = bitcast_ln79_fu_379_p1[22:0];

assign zext_ln65_1_fu_490_p1 = tmp_14_fu_463_p4;

assign zext_ln65_2_fu_507_p1 = tmp_14_fu_463_p4;

assign zext_ln65_3_fu_524_p1 = tmp_14_fu_463_p4;

assign zext_ln65_4_fu_550_p1 = add_ln65_4_fu_545_p2;

assign zext_ln65_5_fu_560_p1 = add_ln65_5_fu_555_p2;

assign zext_ln65_6_fu_635_p1 = add_ln65_6_reg_929;

assign zext_ln65_7_fu_639_p1 = add_ln65_7_reg_934;

assign zext_ln65_fu_473_p1 = tmp_14_fu_463_p4;

always @ (posedge ap_clk) begin
    tmp_5_reg_817[2:0] <= 3'b000;
    tmp_11_reg_822[2:0] <= 3'b000;
    tmp_12_reg_827[2:0] <= 3'b000;
    tmp_13_reg_832[2:0] <= 3'b000;
    tmp_15_reg_899[2:0] <= 3'b000;
    tmp_16_reg_904[2:0] <= 3'b000;
    tmp_17_reg_909[2:0] <= 3'b000;
    tmp_18_reg_914[2:0] <= 3'b000;
end

endmodule //run_run_test
