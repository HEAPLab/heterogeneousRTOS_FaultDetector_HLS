# This script segment is generated automatically by AutoPilot

# FIFO definition: 
set ID 167
set FifoName run_fifo_w320_d1_S
set InstName copyDest_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 1
set DataWd 320
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 1
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# FIFO definition: 
set ID 168
set FifoName run_fifo_w288_d1_S
set InstName outcomeStream_U
set CoreName ap_simcore_fifo
set NumOfStage 2
set DualClock 0
set Depth 1
set DataWd 288
set AddrWd 1
set FullThresh 0
set FanoutToFrp 0
set FanoutToFrpRdOutII 1
set EmptyThresh 0
set RegisterMode registered
set impl_style shiftReg
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_fifo] == "ap_gen_simcore_fifo"} {
eval "ap_gen_simcore_fifo { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}    corename ${CoreName} \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0\
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
}"
} else {
puts "@W \[IMPL-106\] Cannot find ap_gen_simcore_fifo, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $FifoName BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {$InstName}
}


if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_FIFO] == "::AESL_LIB_VIRTEX::xil_gen_FIFO"} {
eval "::AESL_LIB_VIRTEX::xil_gen_FIFO { \
    id ${ID} \
    name ${FifoName} \
    instname ${InstName}
    corename FIFO_SRL \
    op fifo \
    stage_num ${NumOfStage} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    reset_level 1 \
    sync_rst true \
    dual_clk 0 \
    depth ${Depth} \
    fanout_to_frp ${FanoutToFrp} \
    with_num_data_valid ${FanoutToFrpRdOutII} \
    empty_thresh ${EmptyThresh} \
    full_thresh ${FullThresh} \
    register_mode ${RegisterMode} \
    style ${impl_style} \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_FIFO, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 237 \
    name regions \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions \
    op interface \
    ports { regions_address0 { O 12 vector } regions_ce0 { O 1 bit } regions_d0 { O 32 vector } regions_q0 { I 32 vector } regions_we0 { O 1 bit } regions_address1 { O 12 vector } regions_ce1 { O 1 bit } regions_d1 { O 32 vector } regions_q1 { I 32 vector } regions_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 238 \
    name regions_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_1 \
    op interface \
    ports { regions_1_address0 { O 12 vector } regions_1_ce0 { O 1 bit } regions_1_d0 { O 32 vector } regions_1_q0 { I 32 vector } regions_1_we0 { O 1 bit } regions_1_address1 { O 12 vector } regions_1_ce1 { O 1 bit } regions_1_d1 { O 32 vector } regions_1_q1 { I 32 vector } regions_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 239 \
    name regions_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_2 \
    op interface \
    ports { regions_2_address0 { O 12 vector } regions_2_ce0 { O 1 bit } regions_2_d0 { O 32 vector } regions_2_q0 { I 32 vector } regions_2_we0 { O 1 bit } regions_2_address1 { O 12 vector } regions_2_ce1 { O 1 bit } regions_2_d1 { O 32 vector } regions_2_q1 { I 32 vector } regions_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 240 \
    name regions_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_3 \
    op interface \
    ports { regions_3_address0 { O 12 vector } regions_3_ce0 { O 1 bit } regions_3_d0 { O 32 vector } regions_3_q0 { I 32 vector } regions_3_we0 { O 1 bit } regions_3_address1 { O 12 vector } regions_3_ce1 { O 1 bit } regions_3_d1 { O 32 vector } regions_3_q1 { I 32 vector } regions_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 241 \
    name regions_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_4 \
    op interface \
    ports { regions_4_address0 { O 12 vector } regions_4_ce0 { O 1 bit } regions_4_d0 { O 32 vector } regions_4_q0 { I 32 vector } regions_4_we0 { O 1 bit } regions_4_address1 { O 12 vector } regions_4_ce1 { O 1 bit } regions_4_d1 { O 32 vector } regions_4_q1 { I 32 vector } regions_4_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 242 \
    name regions_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename regions_5 \
    op interface \
    ports { regions_5_address0 { O 12 vector } regions_5_ce0 { O 1 bit } regions_5_d0 { O 32 vector } regions_5_q0 { I 32 vector } regions_5_we0 { O 1 bit } regions_5_address1 { O 12 vector } regions_5_ce1 { O 1 bit } regions_5_d1 { O 32 vector } regions_5_q1 { I 32 vector } regions_5_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'regions_5'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name gmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 512 vector } m_axi_gmem_WSTRB { O 64 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 512 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RFIFONUM { I 9 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name inputAOV \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_inputAOV \
    op interface \
    ports { inputAOV { I 64 vector } inputAOV_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name startCopy \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_startCopy \
    op interface \
    ports { startCopy { I 8 vector } startCopy_ap_vld { I 1 bit } startCopy_ap_ack { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name copying \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_copying \
    op interface \
    ports { copying { O 8 vector } copying_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name p_ZL9n_regions_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_0 \
    op interface \
    ports { p_ZL9n_regions_0_i { I 8 vector } p_ZL9n_regions_0_o { O 8 vector } p_ZL9n_regions_0_i_ap_vld { I 1 bit } p_ZL9n_regions_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name p_ZL9n_regions_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_1 \
    op interface \
    ports { p_ZL9n_regions_1_i { I 8 vector } p_ZL9n_regions_1_o { O 8 vector } p_ZL9n_regions_1_i_ap_vld { I 1 bit } p_ZL9n_regions_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name p_ZL9n_regions_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_2 \
    op interface \
    ports { p_ZL9n_regions_2_i { I 8 vector } p_ZL9n_regions_2_o { O 8 vector } p_ZL9n_regions_2_i_ap_vld { I 1 bit } p_ZL9n_regions_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name p_ZL9n_regions_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_3 \
    op interface \
    ports { p_ZL9n_regions_3_i { I 8 vector } p_ZL9n_regions_3_o { O 8 vector } p_ZL9n_regions_3_i_ap_vld { I 1 bit } p_ZL9n_regions_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name p_ZL9n_regions_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_4 \
    op interface \
    ports { p_ZL9n_regions_4_i { I 8 vector } p_ZL9n_regions_4_o { O 8 vector } p_ZL9n_regions_4_i_ap_vld { I 1 bit } p_ZL9n_regions_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name p_ZL9n_regions_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_5 \
    op interface \
    ports { p_ZL9n_regions_5_i { I 8 vector } p_ZL9n_regions_5_o { O 8 vector } p_ZL9n_regions_5_i_ap_vld { I 1 bit } p_ZL9n_regions_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name p_ZL9n_regions_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_6 \
    op interface \
    ports { p_ZL9n_regions_6_i { I 8 vector } p_ZL9n_regions_6_o { O 8 vector } p_ZL9n_regions_6_i_ap_vld { I 1 bit } p_ZL9n_regions_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name p_ZL9n_regions_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_7 \
    op interface \
    ports { p_ZL9n_regions_7_i { I 8 vector } p_ZL9n_regions_7_o { O 8 vector } p_ZL9n_regions_7_i_ap_vld { I 1 bit } p_ZL9n_regions_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name p_ZL9n_regions_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_8 \
    op interface \
    ports { p_ZL9n_regions_8_i { I 8 vector } p_ZL9n_regions_8_o { O 8 vector } p_ZL9n_regions_8_i_ap_vld { I 1 bit } p_ZL9n_regions_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name p_ZL9n_regions_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_9 \
    op interface \
    ports { p_ZL9n_regions_9_i { I 8 vector } p_ZL9n_regions_9_o { O 8 vector } p_ZL9n_regions_9_i_ap_vld { I 1 bit } p_ZL9n_regions_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name p_ZL9n_regions_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_10 \
    op interface \
    ports { p_ZL9n_regions_10_i { I 8 vector } p_ZL9n_regions_10_o { O 8 vector } p_ZL9n_regions_10_i_ap_vld { I 1 bit } p_ZL9n_regions_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name p_ZL9n_regions_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_11 \
    op interface \
    ports { p_ZL9n_regions_11_i { I 8 vector } p_ZL9n_regions_11_o { O 8 vector } p_ZL9n_regions_11_i_ap_vld { I 1 bit } p_ZL9n_regions_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name p_ZL9n_regions_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_12 \
    op interface \
    ports { p_ZL9n_regions_12_i { I 8 vector } p_ZL9n_regions_12_o { O 8 vector } p_ZL9n_regions_12_i_ap_vld { I 1 bit } p_ZL9n_regions_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name p_ZL9n_regions_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_13 \
    op interface \
    ports { p_ZL9n_regions_13_i { I 8 vector } p_ZL9n_regions_13_o { O 8 vector } p_ZL9n_regions_13_i_ap_vld { I 1 bit } p_ZL9n_regions_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name p_ZL9n_regions_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_14 \
    op interface \
    ports { p_ZL9n_regions_14_i { I 8 vector } p_ZL9n_regions_14_o { O 8 vector } p_ZL9n_regions_14_i_ap_vld { I 1 bit } p_ZL9n_regions_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name p_ZL9n_regions_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_15 \
    op interface \
    ports { p_ZL9n_regions_15_i { I 8 vector } p_ZL9n_regions_15_o { O 8 vector } p_ZL9n_regions_15_i_ap_vld { I 1 bit } p_ZL9n_regions_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name p_ZL9n_regions_16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_16 \
    op interface \
    ports { p_ZL9n_regions_16_i { I 8 vector } p_ZL9n_regions_16_o { O 8 vector } p_ZL9n_regions_16_i_ap_vld { I 1 bit } p_ZL9n_regions_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name p_ZL9n_regions_17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_17 \
    op interface \
    ports { p_ZL9n_regions_17_i { I 8 vector } p_ZL9n_regions_17_o { O 8 vector } p_ZL9n_regions_17_i_ap_vld { I 1 bit } p_ZL9n_regions_17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name p_ZL9n_regions_18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_18 \
    op interface \
    ports { p_ZL9n_regions_18_i { I 8 vector } p_ZL9n_regions_18_o { O 8 vector } p_ZL9n_regions_18_i_ap_vld { I 1 bit } p_ZL9n_regions_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name p_ZL9n_regions_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_19 \
    op interface \
    ports { p_ZL9n_regions_19_i { I 8 vector } p_ZL9n_regions_19_o { O 8 vector } p_ZL9n_regions_19_i_ap_vld { I 1 bit } p_ZL9n_regions_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name p_ZL9n_regions_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_20 \
    op interface \
    ports { p_ZL9n_regions_20_i { I 8 vector } p_ZL9n_regions_20_o { O 8 vector } p_ZL9n_regions_20_i_ap_vld { I 1 bit } p_ZL9n_regions_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name p_ZL9n_regions_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_21 \
    op interface \
    ports { p_ZL9n_regions_21_i { I 8 vector } p_ZL9n_regions_21_o { O 8 vector } p_ZL9n_regions_21_i_ap_vld { I 1 bit } p_ZL9n_regions_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name p_ZL9n_regions_22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_22 \
    op interface \
    ports { p_ZL9n_regions_22_i { I 8 vector } p_ZL9n_regions_22_o { O 8 vector } p_ZL9n_regions_22_i_ap_vld { I 1 bit } p_ZL9n_regions_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name p_ZL9n_regions_23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_23 \
    op interface \
    ports { p_ZL9n_regions_23_i { I 8 vector } p_ZL9n_regions_23_o { O 8 vector } p_ZL9n_regions_23_i_ap_vld { I 1 bit } p_ZL9n_regions_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name p_ZL9n_regions_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_24 \
    op interface \
    ports { p_ZL9n_regions_24_i { I 8 vector } p_ZL9n_regions_24_o { O 8 vector } p_ZL9n_regions_24_i_ap_vld { I 1 bit } p_ZL9n_regions_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name p_ZL9n_regions_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_25 \
    op interface \
    ports { p_ZL9n_regions_25_i { I 8 vector } p_ZL9n_regions_25_o { O 8 vector } p_ZL9n_regions_25_i_ap_vld { I 1 bit } p_ZL9n_regions_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name p_ZL9n_regions_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_26 \
    op interface \
    ports { p_ZL9n_regions_26_i { I 8 vector } p_ZL9n_regions_26_o { O 8 vector } p_ZL9n_regions_26_i_ap_vld { I 1 bit } p_ZL9n_regions_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name p_ZL9n_regions_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_27 \
    op interface \
    ports { p_ZL9n_regions_27_i { I 8 vector } p_ZL9n_regions_27_o { O 8 vector } p_ZL9n_regions_27_i_ap_vld { I 1 bit } p_ZL9n_regions_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name p_ZL9n_regions_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_28 \
    op interface \
    ports { p_ZL9n_regions_28_i { I 8 vector } p_ZL9n_regions_28_o { O 8 vector } p_ZL9n_regions_28_i_ap_vld { I 1 bit } p_ZL9n_regions_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name p_ZL9n_regions_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_29 \
    op interface \
    ports { p_ZL9n_regions_29_i { I 8 vector } p_ZL9n_regions_29_o { O 8 vector } p_ZL9n_regions_29_i_ap_vld { I 1 bit } p_ZL9n_regions_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name p_ZL9n_regions_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_30 \
    op interface \
    ports { p_ZL9n_regions_30_i { I 8 vector } p_ZL9n_regions_30_o { O 8 vector } p_ZL9n_regions_30_i_ap_vld { I 1 bit } p_ZL9n_regions_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name p_ZL9n_regions_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_31 \
    op interface \
    ports { p_ZL9n_regions_31_i { I 8 vector } p_ZL9n_regions_31_o { O 8 vector } p_ZL9n_regions_31_i_ap_vld { I 1 bit } p_ZL9n_regions_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name p_ZL9n_regions_32 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_32 \
    op interface \
    ports { p_ZL9n_regions_32_i { I 8 vector } p_ZL9n_regions_32_o { O 8 vector } p_ZL9n_regions_32_i_ap_vld { I 1 bit } p_ZL9n_regions_32_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name p_ZL9n_regions_33 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_33 \
    op interface \
    ports { p_ZL9n_regions_33_i { I 8 vector } p_ZL9n_regions_33_o { O 8 vector } p_ZL9n_regions_33_i_ap_vld { I 1 bit } p_ZL9n_regions_33_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name p_ZL9n_regions_34 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_34 \
    op interface \
    ports { p_ZL9n_regions_34_i { I 8 vector } p_ZL9n_regions_34_o { O 8 vector } p_ZL9n_regions_34_i_ap_vld { I 1 bit } p_ZL9n_regions_34_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name p_ZL9n_regions_35 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_35 \
    op interface \
    ports { p_ZL9n_regions_35_i { I 8 vector } p_ZL9n_regions_35_o { O 8 vector } p_ZL9n_regions_35_i_ap_vld { I 1 bit } p_ZL9n_regions_35_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name p_ZL9n_regions_36 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_36 \
    op interface \
    ports { p_ZL9n_regions_36_i { I 8 vector } p_ZL9n_regions_36_o { O 8 vector } p_ZL9n_regions_36_i_ap_vld { I 1 bit } p_ZL9n_regions_36_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name p_ZL9n_regions_37 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_37 \
    op interface \
    ports { p_ZL9n_regions_37_i { I 8 vector } p_ZL9n_regions_37_o { O 8 vector } p_ZL9n_regions_37_i_ap_vld { I 1 bit } p_ZL9n_regions_37_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name p_ZL9n_regions_38 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_38 \
    op interface \
    ports { p_ZL9n_regions_38_i { I 8 vector } p_ZL9n_regions_38_o { O 8 vector } p_ZL9n_regions_38_i_ap_vld { I 1 bit } p_ZL9n_regions_38_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name p_ZL9n_regions_39 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_39 \
    op interface \
    ports { p_ZL9n_regions_39_i { I 8 vector } p_ZL9n_regions_39_o { O 8 vector } p_ZL9n_regions_39_i_ap_vld { I 1 bit } p_ZL9n_regions_39_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name p_ZL9n_regions_40 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_40 \
    op interface \
    ports { p_ZL9n_regions_40_i { I 8 vector } p_ZL9n_regions_40_o { O 8 vector } p_ZL9n_regions_40_i_ap_vld { I 1 bit } p_ZL9n_regions_40_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name p_ZL9n_regions_41 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_41 \
    op interface \
    ports { p_ZL9n_regions_41_i { I 8 vector } p_ZL9n_regions_41_o { O 8 vector } p_ZL9n_regions_41_i_ap_vld { I 1 bit } p_ZL9n_regions_41_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name p_ZL9n_regions_42 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_42 \
    op interface \
    ports { p_ZL9n_regions_42_i { I 8 vector } p_ZL9n_regions_42_o { O 8 vector } p_ZL9n_regions_42_i_ap_vld { I 1 bit } p_ZL9n_regions_42_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name p_ZL9n_regions_43 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_43 \
    op interface \
    ports { p_ZL9n_regions_43_i { I 8 vector } p_ZL9n_regions_43_o { O 8 vector } p_ZL9n_regions_43_i_ap_vld { I 1 bit } p_ZL9n_regions_43_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name p_ZL9n_regions_44 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_44 \
    op interface \
    ports { p_ZL9n_regions_44_i { I 8 vector } p_ZL9n_regions_44_o { O 8 vector } p_ZL9n_regions_44_i_ap_vld { I 1 bit } p_ZL9n_regions_44_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name p_ZL9n_regions_45 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_45 \
    op interface \
    ports { p_ZL9n_regions_45_i { I 8 vector } p_ZL9n_regions_45_o { O 8 vector } p_ZL9n_regions_45_i_ap_vld { I 1 bit } p_ZL9n_regions_45_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name p_ZL9n_regions_46 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_46 \
    op interface \
    ports { p_ZL9n_regions_46_i { I 8 vector } p_ZL9n_regions_46_o { O 8 vector } p_ZL9n_regions_46_i_ap_vld { I 1 bit } p_ZL9n_regions_46_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name p_ZL9n_regions_47 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_47 \
    op interface \
    ports { p_ZL9n_regions_47_i { I 8 vector } p_ZL9n_regions_47_o { O 8 vector } p_ZL9n_regions_47_i_ap_vld { I 1 bit } p_ZL9n_regions_47_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name p_ZL9n_regions_48 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_48 \
    op interface \
    ports { p_ZL9n_regions_48_i { I 8 vector } p_ZL9n_regions_48_o { O 8 vector } p_ZL9n_regions_48_i_ap_vld { I 1 bit } p_ZL9n_regions_48_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name p_ZL9n_regions_49 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_49 \
    op interface \
    ports { p_ZL9n_regions_49_i { I 8 vector } p_ZL9n_regions_49_o { O 8 vector } p_ZL9n_regions_49_i_ap_vld { I 1 bit } p_ZL9n_regions_49_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name p_ZL9n_regions_50 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_50 \
    op interface \
    ports { p_ZL9n_regions_50_i { I 8 vector } p_ZL9n_regions_50_o { O 8 vector } p_ZL9n_regions_50_i_ap_vld { I 1 bit } p_ZL9n_regions_50_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name p_ZL9n_regions_51 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_51 \
    op interface \
    ports { p_ZL9n_regions_51_i { I 8 vector } p_ZL9n_regions_51_o { O 8 vector } p_ZL9n_regions_51_i_ap_vld { I 1 bit } p_ZL9n_regions_51_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name p_ZL9n_regions_52 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_52 \
    op interface \
    ports { p_ZL9n_regions_52_i { I 8 vector } p_ZL9n_regions_52_o { O 8 vector } p_ZL9n_regions_52_i_ap_vld { I 1 bit } p_ZL9n_regions_52_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name p_ZL9n_regions_53 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_53 \
    op interface \
    ports { p_ZL9n_regions_53_i { I 8 vector } p_ZL9n_regions_53_o { O 8 vector } p_ZL9n_regions_53_i_ap_vld { I 1 bit } p_ZL9n_regions_53_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name p_ZL9n_regions_54 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_54 \
    op interface \
    ports { p_ZL9n_regions_54_i { I 8 vector } p_ZL9n_regions_54_o { O 8 vector } p_ZL9n_regions_54_i_ap_vld { I 1 bit } p_ZL9n_regions_54_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name p_ZL9n_regions_55 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_55 \
    op interface \
    ports { p_ZL9n_regions_55_i { I 8 vector } p_ZL9n_regions_55_o { O 8 vector } p_ZL9n_regions_55_i_ap_vld { I 1 bit } p_ZL9n_regions_55_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name p_ZL9n_regions_56 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_56 \
    op interface \
    ports { p_ZL9n_regions_56_i { I 8 vector } p_ZL9n_regions_56_o { O 8 vector } p_ZL9n_regions_56_i_ap_vld { I 1 bit } p_ZL9n_regions_56_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name p_ZL9n_regions_57 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_57 \
    op interface \
    ports { p_ZL9n_regions_57_i { I 8 vector } p_ZL9n_regions_57_o { O 8 vector } p_ZL9n_regions_57_i_ap_vld { I 1 bit } p_ZL9n_regions_57_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name p_ZL9n_regions_58 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_58 \
    op interface \
    ports { p_ZL9n_regions_58_i { I 8 vector } p_ZL9n_regions_58_o { O 8 vector } p_ZL9n_regions_58_i_ap_vld { I 1 bit } p_ZL9n_regions_58_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name p_ZL9n_regions_59 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_59 \
    op interface \
    ports { p_ZL9n_regions_59_i { I 8 vector } p_ZL9n_regions_59_o { O 8 vector } p_ZL9n_regions_59_i_ap_vld { I 1 bit } p_ZL9n_regions_59_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name p_ZL9n_regions_60 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_60 \
    op interface \
    ports { p_ZL9n_regions_60_i { I 8 vector } p_ZL9n_regions_60_o { O 8 vector } p_ZL9n_regions_60_i_ap_vld { I 1 bit } p_ZL9n_regions_60_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name p_ZL9n_regions_61 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_61 \
    op interface \
    ports { p_ZL9n_regions_61_i { I 8 vector } p_ZL9n_regions_61_o { O 8 vector } p_ZL9n_regions_61_i_ap_vld { I 1 bit } p_ZL9n_regions_61_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name p_ZL9n_regions_62 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_62 \
    op interface \
    ports { p_ZL9n_regions_62_i { I 8 vector } p_ZL9n_regions_62_o { O 8 vector } p_ZL9n_regions_62_i_ap_vld { I 1 bit } p_ZL9n_regions_62_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name p_ZL9n_regions_63 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_ZL9n_regions_63 \
    op interface \
    ports { p_ZL9n_regions_63_i { I 8 vector } p_ZL9n_regions_63_o { O 8 vector } p_ZL9n_regions_63_i_ap_vld { I 1 bit } p_ZL9n_regions_63_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


