# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# ==============================================================
proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XRun" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_CONTROL_R_BASEADDR" \
        "C_S_AXI_CONTROL_R_HIGHADDR"

    xdefine_config_file $drv_handle "xrun_g.c" "XRun" \
        "DEVICE_ID" \
        "C_S_AXI_CONTROL_R_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XRun" \
        "DEVICE_ID" \
        "C_S_AXI_CONTROL_R_BASEADDR" \
        "C_S_AXI_CONTROL_R_HIGHADDR"
}

