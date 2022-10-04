# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
errorInTask { 
	dir IO
	width 1
	depth 16
	mode ap_memory
	offset 16
	offset_end 31
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
inputAOV { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
copyInputAOV_i { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
copyInputAOV_o { 
	dir O
	width 8
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
n_regions_in { 
	dir I
	width 8
	depth 64
	mode ap_memory
	offset 64
	offset_end 127
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
outcomeInRam { 
	dir O
	width 288
	depth 16
	mode ap_memory
	offset 1024
	offset_end 2047
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 1
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
trainedRegions { 
	dir I
	width 32
	depth 24576
	mode ap_memory
	offset 131072
	offset_end 262143
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


