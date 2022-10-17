// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module run_writeOutcome (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        bubble,
        errorInTask_address0,
        errorInTask_ce0,
        errorInTask_we0,
        errorInTask_d0,
        errorInTask_q0,
        errorInTask1,
        p_read,
        failedTaskExecutionId_read,
        checkId,
        taskId,
        executionId,
        uniId,
        error,
        outcomeInRam_address0,
        outcomeInRam_ce0,
        outcomeInRam_we0,
        outcomeInRam_d0,
        p_read1,
        p_read2,
        p_read3,
        p_read4,
        p_read5,
        p_read6,
        p_read7,
        p_read8,
        failedTask,
        failedTask_ap_vld,
        failedTask_ap_ack,
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
output  [3:0] errorInTask_address0;
output   errorInTask_ce0;
output   errorInTask_we0;
output  [7:0] errorInTask_d0;
input  [7:0] errorInTask_q0;
input  [3:0] errorInTask1;
input  [7:0] p_read;
input  [7:0] failedTaskExecutionId_read;
input  [7:0] checkId;
input  [7:0] taskId;
input  [7:0] executionId;
input  [15:0] uniId;
input  [0:0] error;
output  [3:0] outcomeInRam_address0;
output   outcomeInRam_ce0;
output  [35:0] outcomeInRam_we0;
output  [287:0] outcomeInRam_d0;
input  [31:0] p_read1;
input  [31:0] p_read2;
input  [31:0] p_read3;
input  [31:0] p_read4;
input  [31:0] p_read5;
input  [31:0] p_read6;
input  [31:0] p_read7;
input  [31:0] p_read8;
output  [15:0] failedTask;
output   failedTask_ap_vld;
input   failedTask_ap_ack;
output  [7:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[3:0] errorInTask_address0;
reg errorInTask_ce0;
reg errorInTask_we0;
reg outcomeInRam_ce0;
reg[35:0] outcomeInRam_we0;
reg failedTask_ap_vld;
reg[7:0] ap_return;

(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    failedTask_blk_n;
wire    ap_CS_fsm_state8;
wire   [0:0] error_read_read_fu_166_p2;
wire   [63:0] errorInTask1_cast_fu_346_p1;
reg   [63:0] errorInTask1_cast_reg_554;
reg   [3:0] errorInTask_addr_reg_569;
wire    ap_CS_fsm_state2;
wire   [0:0] exitcond3_fu_363_p2;
wire   [0:0] icmp_ln1065_fu_395_p2;
reg   [0:0] icmp_ln1065_reg_574;
wire    ap_CS_fsm_state3;
wire   [0:0] and_ln444_fu_405_p2;
wire   [31:0] outcome_AOV_q1;
reg   [31:0] outcome_AOV_load_reg_592;
wire    ap_CS_fsm_state4;
wire   [31:0] outcome_AOV_q0;
reg   [31:0] outcome_AOV_load_1_reg_597;
reg   [31:0] outcome_AOV_load_2_reg_612;
wire    ap_CS_fsm_state5;
reg   [31:0] outcome_AOV_load_3_reg_617;
reg   [31:0] outcome_AOV_load_4_reg_632;
wire    ap_CS_fsm_state6;
reg   [31:0] outcome_AOV_load_5_reg_637;
wire    ap_CS_fsm_state7;
reg   [2:0] outcome_AOV_address0;
reg    outcome_AOV_ce0;
reg    outcome_AOV_we0;
reg   [2:0] outcome_AOV_address1;
reg    outcome_AOV_ce1;
reg   [7:0] phi_ln457_reg_333;
wire   [0:0] bubble_read_read_fu_214_p2;
reg    ap_block_state8;
reg    ap_block_state8_io;
wire   [63:0] loop_index3_cast_fu_358_p1;
reg   [3:0] loop_index3_fu_114;
wire   [3:0] empty_fu_369_p2;
wire   [31:0] tmp_fu_375_p10;
wire   [0:0] icmp_ln444_fu_399_p2;
wire   [31:0] empty_58_fu_436_p1;
wire   [31:0] empty_57_fu_432_p1;
wire   [31:0] empty_56_fu_429_p1;
wire   [31:0] empty_55_fu_426_p1;
wire   [31:0] empty_54_fu_423_p1;
wire   [31:0] empty_53_fu_420_p1;
wire   [31:0] empty_52_fu_417_p1;
wire   [31:0] empty_51_fu_414_p1;
reg   [7:0] ap_return_preg;
wire    ap_CS_fsm_state9;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_return_preg = 8'd0;
end

run_writeOutcome_outcome_AOV_RAM_AUTO_1R1W #(
    .DataWidth( 32 ),
    .AddressRange( 8 ),
    .AddressWidth( 3 ))
outcome_AOV_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(outcome_AOV_address0),
    .ce0(outcome_AOV_ce0),
    .we0(outcome_AOV_we0),
    .d0(tmp_fu_375_p10),
    .q0(outcome_AOV_q0),
    .address1(outcome_AOV_address1),
    .ce1(outcome_AOV_ce1),
    .q1(outcome_AOV_q1)
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
mux_84_32_1_1_U143(
    .din0(p_read1),
    .din1(p_read2),
    .din2(p_read3),
    .din3(p_read4),
    .din4(p_read5),
    .din5(p_read6),
    .din6(p_read7),
    .din7(p_read8),
    .din8(loop_index3_fu_114),
    .dout(tmp_fu_375_p10)
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
        ap_return_preg <= 8'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            ap_return_preg <= phi_ln457_reg_333;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (bubble_read_read_fu_214_p2 == 1'd0) & (ap_start == 1'b1))) begin
        loop_index3_fu_114 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_363_p2 == 1'd0))) begin
        loop_index3_fu_114 <= empty_fu_369_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((~((1'b1 == ap_block_state8_io) | ((error == 1'd1) & (failedTask_ap_ack == 1'b0))) & (error == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        phi_ln457_reg_333 <= executionId;
    end else if ((((1'b1 == ap_CS_fsm_state1) & (bubble_read_read_fu_214_p2 == 1'd1) & (ap_start == 1'b1)) | (~((1'b1 == ap_block_state8_io) | ((error == 1'd1) & (failedTask_ap_ack == 1'b0))) & (error_read_read_fu_166_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8)) | ((1'd1 == and_ln444_fu_405_p2) & (1'b1 == ap_CS_fsm_state3)))) begin
        phi_ln457_reg_333 <= p_read;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        errorInTask1_cast_reg_554[3 : 0] <= errorInTask1_cast_fu_346_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_363_p2 == 1'd1))) begin
        errorInTask_addr_reg_569 <= errorInTask1_cast_reg_554;
        icmp_ln1065_reg_574 <= icmp_ln1065_fu_395_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        outcome_AOV_load_1_reg_597 <= outcome_AOV_q0;
        outcome_AOV_load_reg_592 <= outcome_AOV_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        outcome_AOV_load_2_reg_612 <= outcome_AOV_q0;
        outcome_AOV_load_3_reg_617 <= outcome_AOV_q1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        outcome_AOV_load_4_reg_632 <= outcome_AOV_q0;
        outcome_AOV_load_5_reg_637 <= outcome_AOV_q1;
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

always @ (*) begin
    if (((1'b1 == ap_block_state8_io) | ((error == 1'd1) & (failedTask_ap_ack == 1'b0)))) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end

assign ap_ST_fsm_state9_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((1'b1 == ap_CS_fsm_state9)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        ap_return = phi_ln457_reg_333;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        errorInTask_address0 = errorInTask_addr_reg_569;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        errorInTask_address0 = errorInTask1_cast_reg_554;
    end else begin
        errorInTask_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        errorInTask_ce0 = 1'b1;
    end else begin
        errorInTask_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (1'd0 == and_ln444_fu_405_p2))) begin
        errorInTask_we0 = 1'b1;
    end else begin
        errorInTask_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((1'b1 == ap_block_state8_io) | ((error == 1'd1) & (failedTask_ap_ack == 1'b0))) & (error == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        failedTask_ap_vld = 1'b1;
    end else begin
        failedTask_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((error == 1'd1) & (1'b1 == ap_CS_fsm_state8))) begin
        failedTask_blk_n = failedTask_ap_ack;
    end else begin
        failedTask_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (~((1'b1 == ap_block_state8_io) | ((error == 1'd1) & (failedTask_ap_ack == 1'b0))) & (1'b1 == ap_CS_fsm_state8)))) begin
        outcomeInRam_ce0 = 1'b1;
    end else begin
        outcomeInRam_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        outcomeInRam_we0 = 36'd68719476735;
    end else begin
        outcomeInRam_we0 = 36'd0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        outcome_AOV_address0 = 64'd6;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        outcome_AOV_address0 = 64'd4;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        outcome_AOV_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        outcome_AOV_address0 = 64'd1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        outcome_AOV_address0 = loop_index3_cast_fu_358_p1;
    end else begin
        outcome_AOV_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        outcome_AOV_address1 = 64'd7;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        outcome_AOV_address1 = 64'd5;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        outcome_AOV_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        outcome_AOV_address1 = 64'd0;
    end else begin
        outcome_AOV_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state2))) begin
        outcome_AOV_ce0 = 1'b1;
    end else begin
        outcome_AOV_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        outcome_AOV_ce1 = 1'b1;
    end else begin
        outcome_AOV_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_363_p2 == 1'd0))) begin
        outcome_AOV_we0 = 1'b1;
    end else begin
        outcome_AOV_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (bubble_read_read_fu_214_p2 == 1'd0) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else if (((1'b1 == ap_CS_fsm_state1) & (bubble_read_read_fu_214_p2 == 1'd1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (exitcond3_fu_363_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'd1 == and_ln444_fu_405_p2) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if ((~((1'b1 == ap_block_state8_io) | ((error == 1'd1) & (failedTask_ap_ack == 1'b0))) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign and_ln444_fu_405_p2 = (icmp_ln444_fu_399_p2 & icmp_ln1065_reg_574);

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
    ap_block_state8 = ((error == 1'd1) & (failedTask_ap_ack == 1'b0));
end

always @ (*) begin
    ap_block_state8_io = ((error == 1'd1) & (failedTask_ap_ack == 1'b0));
end

assign bubble_read_read_fu_214_p2 = bubble;

assign empty_51_fu_414_p1 = outcome_AOV_load_reg_592;

assign empty_52_fu_417_p1 = outcome_AOV_load_1_reg_597;

assign empty_53_fu_420_p1 = outcome_AOV_load_2_reg_612;

assign empty_54_fu_423_p1 = outcome_AOV_load_3_reg_617;

assign empty_55_fu_426_p1 = outcome_AOV_load_4_reg_632;

assign empty_56_fu_429_p1 = outcome_AOV_load_5_reg_637;

assign empty_57_fu_432_p1 = outcome_AOV_q0;

assign empty_58_fu_436_p1 = outcome_AOV_q1;

assign empty_fu_369_p2 = (loop_index3_fu_114 + 4'd1);

assign errorInTask1_cast_fu_346_p1 = errorInTask1;

assign errorInTask_d0 = error;

assign error_read_read_fu_166_p2 = error;

assign exitcond3_fu_363_p2 = ((loop_index3_fu_114 == 4'd8) ? 1'b1 : 1'b0);

assign failedTask = {{executionId}, {taskId}};

assign icmp_ln1065_fu_395_p2 = ((failedTaskExecutionId_read == executionId) ? 1'b1 : 1'b0);

assign icmp_ln444_fu_399_p2 = ((errorInTask_q0 != 8'd0) ? 1'b1 : 1'b0);

assign loop_index3_cast_fu_358_p1 = loop_index3_fu_114;

assign outcomeInRam_address0 = 64'd0;

assign outcomeInRam_d0 = {{{{{{{{{{{empty_58_fu_436_p1}, {empty_57_fu_432_p1}}, {empty_56_fu_429_p1}}, {empty_55_fu_426_p1}}, {empty_54_fu_423_p1}}, {empty_53_fu_420_p1}}, {empty_52_fu_417_p1}}, {empty_51_fu_414_p1}}, {uniId}}, {executionId}}, {checkId}};

always @ (posedge ap_clk) begin
    errorInTask1_cast_reg_554[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end

endmodule //run_writeOutcome
