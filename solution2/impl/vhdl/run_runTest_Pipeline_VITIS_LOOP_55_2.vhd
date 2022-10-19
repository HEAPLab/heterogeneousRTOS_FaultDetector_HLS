-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
-- Version: 2021.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity run_runTest_Pipeline_VITIS_LOOP_55_2 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    tmp_18 : IN STD_LOGIC_VECTOR (11 downto 0);
    trunc_ln3 : IN STD_LOGIC_VECTOR (0 downto 0);
    p_reload158 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload159 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload160 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload161 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload162 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload163 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload164 : IN STD_LOGIC_VECTOR (31 downto 0);
    p_reload : IN STD_LOGIC_VECTOR (31 downto 0);
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
    regions_3_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_return : OUT STD_LOGIC_VECTOR (1 downto 0);
    grp_fu_2132_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_2132_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_2132_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_2132_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_2132_p_ce : OUT STD_LOGIC );
end;


architecture behav of run_runTest_Pipeline_VITIS_LOOP_55_2 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_pp0_stage4 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv64_7 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000111";
    constant ap_const_lv5_5 : STD_LOGIC_VECTOR (4 downto 0) := "00101";
    constant ap_const_lv5_3 : STD_LOGIC_VECTOR (4 downto 0) := "00011";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln60_fu_398_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln59_2_fu_392_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln59_1_reg_512 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage4 : signal is "none";
    signal ap_block_state5_pp0_stage4_iter0 : BOOLEAN;
    signal ap_block_pp0_stage4_subdone : BOOLEAN;
    signal merge_reg_194 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_1_reg_465 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal regions_2_addr_reg_481 : STD_LOGIC_VECTOR (11 downto 0);
    signal regions_3_addr_reg_486 : STD_LOGIC_VECTOR (11 downto 0);
    signal tmp_1_fu_238_p10 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_1_reg_491 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_252_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_state3_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal icmp_ln59_fu_280_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_reg_502 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_1_fu_286_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_1_reg_507 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln59_1_fu_337_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_block_state4_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal add_ln55_fu_343_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal add_ln55_reg_516 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_348_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage4_11001 : BOOLEAN;
    signal icmp_ln59_4_fu_376_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_4_reg_526 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_5_fu_382_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_5_reg_531 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_phi_mux_merge_phi_fu_198_p6 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln59_fu_230_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal j_fu_80 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal grp_fu_209_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal ap_block_pp0_stage4 : BOOLEAN;
    signal trunc_ln59_fu_221_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln59_fu_225_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal bitcast_ln59_fu_262_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_266_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln59_1_fu_276_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal bitcast_ln59_1_fu_292_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_3_fu_295_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln59_2_fu_305_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln59_3_fu_319_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln59_2_fu_313_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln59_fu_309_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln59_1_fu_325_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln59_fu_331_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal bitcast_ln59_2_fu_358_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_5_fu_362_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln59_3_fu_372_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal or_ln59_2_fu_388_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_fu_209_opcode : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_pp0_stage2_00001 : BOOLEAN;
    signal ap_block_pp0_stage4_00001 : BOOLEAN;
    signal ap_return_preg : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_idle_pp0_1to1 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_condition_444 : BOOLEAN;
    signal ap_condition_450 : BOOLEAN;
    signal ap_condition_455 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component run_fcmp_32ns_32ns_1_2_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component run_mux_864_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        din3 : IN STD_LOGIC_VECTOR (31 downto 0);
        din4 : IN STD_LOGIC_VECTOR (31 downto 0);
        din5 : IN STD_LOGIC_VECTOR (31 downto 0);
        din6 : IN STD_LOGIC_VECTOR (31 downto 0);
        din7 : IN STD_LOGIC_VECTOR (31 downto 0);
        din8 : IN STD_LOGIC_VECTOR (63 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component run_mux_21_32_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        din2 : IN STD_LOGIC_VECTOR (0 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component run_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_864_32_1_1_U24 : component run_mux_864_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 32,
        din3_WIDTH => 32,
        din4_WIDTH => 32,
        din5_WIDTH => 32,
        din6_WIDTH => 32,
        din7_WIDTH => 32,
        din8_WIDTH => 64,
        dout_WIDTH => 32)
    port map (
        din0 => p_reload158,
        din1 => p_reload159,
        din2 => p_reload160,
        din3 => p_reload161,
        din4 => p_reload162,
        din5 => p_reload163,
        din6 => p_reload164,
        din7 => p_reload,
        din8 => j_fu_80,
        dout => tmp_1_fu_238_p10);

    mux_21_32_1_1_U25 : component run_mux_21_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 1,
        dout_WIDTH => 32)
    port map (
        din0 => regions_q0,
        din1 => regions_1_q0,
        din2 => trunc_ln3,
        dout => tmp_fu_252_p4);

    mux_21_32_1_1_U26 : component run_mux_21_32_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 32,
        din1_WIDTH => 32,
        din2_WIDTH => 1,
        dout_WIDTH => 32)
    port map (
        din0 => regions_2_q0,
        din1 => regions_3_q0,
        din2 => trunc_ln3,
        dout => tmp_2_fu_348_p4);

    flow_control_loop_pipe_sequential_init_U : component run_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0) or ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage4_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                end if; 
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv2_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and ((ap_const_lv1_0 = and_ln59_1_reg_512) or ((ap_const_lv1_0 = and_ln59_2_fu_392_p2) or (icmp_ln60_fu_398_p2 = ap_const_lv1_1))))) then 
                    ap_return_preg <= ap_phi_mux_merge_phi_fu_198_p6;
                end if; 
            end if;
        end if;
    end process;


    j_fu_80_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if ((ap_loop_init = ap_const_logic_1)) then 
                    j_fu_80 <= ap_const_lv64_0;
                elsif ((ap_const_boolean_1 = ap_condition_455)) then 
                    j_fu_80 <= add_ln55_reg_516;
                end if;
            end if; 
        end if;
    end process;

    merge_reg_194_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_0 = and_ln59_2_fu_392_p2) and (ap_const_lv1_1 = and_ln59_1_reg_512) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                merge_reg_194 <= ap_const_lv2_2;
            elsif (((ap_const_lv1_1 = and_ln59_1_reg_512) and (ap_const_lv1_1 = and_ln59_2_fu_392_p2) and (icmp_ln60_fu_398_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                merge_reg_194 <= ap_const_lv2_1;
            elsif (((ap_const_lv1_0 = and_ln59_1_fu_337_p2) and (ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
                merge_reg_194 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then
                add_ln55_reg_516 <= add_ln55_fu_343_p2;
                and_ln59_1_reg_512 <= and_ln59_1_fu_337_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                icmp_ln59_1_reg_507 <= icmp_ln59_1_fu_286_p2;
                icmp_ln59_reg_502 <= icmp_ln59_fu_280_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = and_ln59_1_reg_512) and (ap_const_boolean_0 = ap_block_pp0_stage4_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4))) then
                icmp_ln59_4_reg_526 <= icmp_ln59_4_fu_376_p2;
                icmp_ln59_5_reg_531 <= icmp_ln59_5_fu_382_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                j_1_reg_465 <= j_fu_80;
                regions_2_addr_reg_481 <= zext_ln59_fu_230_p1(12 - 1 downto 0);
                regions_3_addr_reg_486 <= zext_ln59_fu_230_p1(12 - 1 downto 0);
                tmp_1_reg_491 <= tmp_1_fu_238_p10;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_block_pp0_stage0_subdone, ap_condition_exit_pp0_iter1_stage0, ap_block_pp0_stage4_subdone, ap_idle_pp0_1to1, ap_block_pp0_stage1_subdone, ap_block_pp0_stage2_subdone, ap_block_pp0_stage3_subdone, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((not(((ap_start_int = ap_const_logic_0) and (ap_idle_pp0_1to1 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when ap_ST_fsm_pp0_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage4;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                end if;
            when ap_ST_fsm_pp0_stage4 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage4_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage4;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    add_ln55_fu_343_p2 <= std_logic_vector(unsigned(j_1_reg_465) + unsigned(ap_const_lv64_1));
    add_ln59_fu_225_p2 <= std_logic_vector(unsigned(tmp_18) + unsigned(trunc_ln59_fu_221_p1));
    and_ln59_1_fu_337_p2 <= (grp_fu_2132_p_dout0 and and_ln59_fu_331_p2);
    and_ln59_2_fu_392_p2 <= (or_ln59_2_fu_388_p2 and grp_fu_2132_p_dout0);
    and_ln59_fu_331_p2 <= (or_ln59_fu_309_p2 and or_ln59_1_fu_325_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(3);
    ap_CS_fsm_pp0_stage4 <= ap_CS_fsm(4);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage2_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage3_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage4_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage4_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage4_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage2_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage3_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage4_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_444_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, and_ln59_1_reg_512, ap_block_pp0_stage0)
    begin
                ap_condition_444 <= ((ap_const_lv1_1 = and_ln59_1_reg_512) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0));
    end process;


    ap_condition_450_assign_proc : process(and_ln59_1_reg_512, ap_CS_fsm_pp0_stage4, ap_block_pp0_stage4_00001)
    begin
                ap_condition_450 <= ((ap_const_lv1_1 = and_ln59_1_reg_512) and (ap_const_boolean_0 = ap_block_pp0_stage4_00001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4));
    end process;


    ap_condition_455_assign_proc : process(ap_enable_reg_pp0_iter1, icmp_ln60_fu_398_p2, and_ln59_2_fu_392_p2, and_ln59_1_reg_512)
    begin
                ap_condition_455 <= ((ap_const_lv1_1 = and_ln59_1_reg_512) and (ap_const_lv1_1 = and_ln59_2_fu_392_p2) and (icmp_ln60_fu_398_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, icmp_ln60_fu_398_p2, and_ln59_2_fu_392_p2, and_ln59_1_reg_512)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and ((ap_const_lv1_0 = and_ln59_1_reg_512) or ((ap_const_lv1_0 = and_ln59_2_fu_392_p2) or (icmp_ln60_fu_398_p2 = ap_const_lv1_1))))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg, ap_start_int)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start_int;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_1to1_assign_proc : process(ap_enable_reg_pp0_iter1)
    begin
        if ((ap_enable_reg_pp0_iter1 = ap_const_logic_0)) then 
            ap_idle_pp0_1to1 <= ap_const_logic_1;
        else 
            ap_idle_pp0_1to1 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_phi_mux_merge_phi_fu_198_p6_assign_proc : process(icmp_ln60_fu_398_p2, and_ln59_2_fu_392_p2, merge_reg_194, ap_condition_444)
    begin
        if ((ap_const_boolean_1 = ap_condition_444)) then
            if ((ap_const_lv1_0 = and_ln59_2_fu_392_p2)) then 
                ap_phi_mux_merge_phi_fu_198_p6 <= ap_const_lv2_2;
            elsif (((ap_const_lv1_1 = and_ln59_2_fu_392_p2) and (icmp_ln60_fu_398_p2 = ap_const_lv1_1))) then 
                ap_phi_mux_merge_phi_fu_198_p6 <= ap_const_lv2_1;
            else 
                ap_phi_mux_merge_phi_fu_198_p6 <= merge_reg_194;
            end if;
        else 
            ap_phi_mux_merge_phi_fu_198_p6 <= merge_reg_194;
        end if; 
    end process;


    ap_ready_int_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, ap_block_pp0_stage4_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage4_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_pp0_stage0, icmp_ln60_fu_398_p2, and_ln59_2_fu_392_p2, and_ln59_1_reg_512, ap_block_pp0_stage0_11001, ap_phi_mux_merge_phi_fu_198_p6, ap_return_preg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and ((ap_const_lv1_0 = and_ln59_1_reg_512) or ((ap_const_lv1_0 = and_ln59_2_fu_392_p2) or (icmp_ln60_fu_398_p2 = ap_const_lv1_1))))) then 
            ap_return <= ap_phi_mux_merge_phi_fu_198_p6;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;

    bitcast_ln59_1_fu_292_p1 <= tmp_1_reg_491;
    bitcast_ln59_2_fu_358_p1 <= tmp_2_fu_348_p4;
    bitcast_ln59_fu_262_p1 <= tmp_fu_252_p4;

    grp_fu_209_opcode_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2_00001, ap_condition_450)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if ((ap_const_boolean_1 = ap_condition_450)) then 
                grp_fu_209_opcode <= ap_const_lv5_3;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage2_00001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                grp_fu_209_opcode <= ap_const_lv5_5;
            else 
                grp_fu_209_opcode <= "XXXXX";
            end if;
        else 
            grp_fu_209_opcode <= "XXXXX";
        end if; 
    end process;


    grp_fu_209_p0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage4, tmp_fu_252_p4, ap_CS_fsm_pp0_stage2, tmp_2_fu_348_p4, ap_block_pp0_stage2, ap_block_pp0_stage4)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage4) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage4))) then 
                grp_fu_209_p0 <= tmp_2_fu_348_p4;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage2) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then 
                grp_fu_209_p0 <= tmp_fu_252_p4;
            else 
                grp_fu_209_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            grp_fu_209_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_2132_p_ce <= ap_const_logic_1;
    grp_fu_2132_p_din0 <= grp_fu_209_p0;
    grp_fu_2132_p_din1 <= tmp_1_reg_491;
    grp_fu_2132_p_opcode <= grp_fu_209_opcode;
    icmp_ln59_1_fu_286_p2 <= "1" when (trunc_ln59_1_fu_276_p1 = ap_const_lv23_0) else "0";
    icmp_ln59_2_fu_313_p2 <= "0" when (tmp_3_fu_295_p4 = ap_const_lv8_FF) else "1";
    icmp_ln59_3_fu_319_p2 <= "1" when (trunc_ln59_2_fu_305_p1 = ap_const_lv23_0) else "0";
    icmp_ln59_4_fu_376_p2 <= "0" when (tmp_5_fu_362_p4 = ap_const_lv8_FF) else "1";
    icmp_ln59_5_fu_382_p2 <= "1" when (trunc_ln59_3_fu_372_p1 = ap_const_lv23_0) else "0";
    icmp_ln59_fu_280_p2 <= "0" when (tmp_s_fu_266_p4 = ap_const_lv8_FF) else "1";
    icmp_ln60_fu_398_p2 <= "1" when (j_1_reg_465 = ap_const_lv64_7) else "0";
    or_ln59_1_fu_325_p2 <= (icmp_ln59_3_fu_319_p2 or icmp_ln59_2_fu_313_p2);
    or_ln59_2_fu_388_p2 <= (icmp_ln59_5_reg_531 or icmp_ln59_4_reg_526);
    or_ln59_fu_309_p2 <= (icmp_ln59_reg_502 or icmp_ln59_1_reg_507);
    regions_1_address0 <= zext_ln59_fu_230_p1(12 - 1 downto 0);

    regions_1_ce0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            regions_1_ce0 <= ap_const_logic_1;
        else 
            regions_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_2_address0 <= regions_2_addr_reg_481;

    regions_2_ce0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            regions_2_ce0 <= ap_const_logic_1;
        else 
            regions_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_3_address0 <= regions_3_addr_reg_486;

    regions_3_ce0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage3, ap_block_pp0_stage3_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            regions_3_ce0 <= ap_const_logic_1;
        else 
            regions_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    regions_address0 <= zext_ln59_fu_230_p1(12 - 1 downto 0);

    regions_ce0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
            regions_ce0 <= ap_const_logic_1;
        else 
            regions_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_3_fu_295_p4 <= bitcast_ln59_1_fu_292_p1(30 downto 23);
    tmp_5_fu_362_p4 <= bitcast_ln59_2_fu_358_p1(30 downto 23);
    tmp_s_fu_266_p4 <= bitcast_ln59_fu_262_p1(30 downto 23);
    trunc_ln59_1_fu_276_p1 <= bitcast_ln59_fu_262_p1(23 - 1 downto 0);
    trunc_ln59_2_fu_305_p1 <= bitcast_ln59_1_fu_292_p1(23 - 1 downto 0);
    trunc_ln59_3_fu_372_p1 <= bitcast_ln59_2_fu_358_p1(23 - 1 downto 0);
    trunc_ln59_fu_221_p1 <= j_fu_80(12 - 1 downto 0);
    zext_ln59_fu_230_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln59_fu_225_p2),64));
end behav;
