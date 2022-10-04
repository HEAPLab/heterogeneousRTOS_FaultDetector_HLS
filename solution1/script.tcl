############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project detector_solid
set_top run
add_files detector_solid/abs_solid_detector.cpp
add_files detector_solid/parameters.h
add_files detector_solid/region.h
open_solution "solution1" -flow_target vitis
set_part {xc7z020-clg484-1}
create_clock -period 20 -name default
config_export -vivado_clock 20
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512 -s_axilite_auto_restart_counter 1 -s_axilite_sw_reset
config_rtl -register_reset_num 3
source "./detector_solid/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow syn -rtl verilog -format ip_catalog
