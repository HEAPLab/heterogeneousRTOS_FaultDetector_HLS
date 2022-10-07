set moduleName run
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {run}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem int 512 regular {axi_master 0}  }
	{ errorInTask int 8 regular {axi_slave 1}  }
	{ outcomeInRam int 288 regular {axi_slave 1}  }
	{ inputAOV int 64 regular {axi_slave 0}  }
	{ accel_mode int 8 regular {axi_slave 0}  }
	{ trainedRegion_i int 768 regular {axi_slave 0}  }
	{ trainedRegion_o int 768 regular {axi_slave 1}  }
	{ IOCheckIdx int 8 regular {axi_slave 0}  }
	{ IORegionIdx int 8 regular {axi_slave 0}  }
	{ n_regions_in int 8 regular {axi_slave 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "inputAOV","offset": { "type": "dynamic","port_name": "inputAOV","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "errorInTask", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "WRITEONLY", "offset" : {"out":16}, "offset_end" : {"out":31}} , 
 	{ "Name" : "outcomeInRam", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 288, "direction" : "WRITEONLY", "offset" : {"out":1024}, "offset_end" : {"out":2047}} , 
 	{ "Name" : "inputAOV", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":43}} , 
 	{ "Name" : "accel_mode", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":44}, "offset_end" : {"in":51}} , 
 	{ "Name" : "trainedRegion_i", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 768, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":151}} , 
 	{ "Name" : "trainedRegion_o", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 768, "direction" : "WRITEONLY", "offset" : {"out":152}, "offset_end" : {"out":251}} , 
 	{ "Name" : "IOCheckIdx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":352}, "offset_end" : {"in":359}} , 
 	{ "Name" : "IORegionIdx", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READONLY", "offset" : {"in":360}, "offset_end" : {"in":367}} , 
 	{ "Name" : "n_regions_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 8, "direction" : "READWRITE", "offset" : {"in":368, "out":376}, "offset_end" : {"in":375, "out":383}} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 0 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 11 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 11 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"continue","value":"0","valid_bit":"4"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"inputAOV","role":"data","value":"32"},{"name":"accel_mode","role":"data","value":"44"},{"name":"trainedRegion_i","role":"data","value":"52"},{"name":"IOCheckIdx","role":"data","value":"352"},{"name":"IORegionIdx","role":"data","value":"360"},{"name":"n_regions_in","role":"data","value":"368"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"run","role":"start","value":"0","valid_bit":"0"},{"name":"run","role":"done","value":"0","valid_bit":"1"},{"name":"run","role":"idle","value":"0","valid_bit":"2"},{"name":"run","role":"ready","value":"0","valid_bit":"3"},{"name":"run","role":"auto_start","value":"0","valid_bit":"7"},{"name":"errorInTask","role":"data","value":"16"},{"name":"trainedRegion_o","role":"data","value":"152"},{"name":"n_regions_in","role":"data","value":"376"},{"name":"outcomeInRam","role":"data","value":"1024"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "run",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_1101", "Port" : "gmem", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_1101", "Port" : "errorInTask", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_1101", "Port" : "outcomeInRam", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "accel_mode", "Type" : "None", "Direction" : "I"},
			{"Name" : "trainedRegion_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "trainedRegion_o", "Type" : "None", "Direction" : "O"},
			{"Name" : "IOCheckIdx", "Type" : "None", "Direction" : "I"},
			{"Name" : "IORegionIdx", "Type" : "None", "Direction" : "I"},
			{"Name" : "n_regions_in", "Type" : "None", "Direction" : "IO"},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_1101", "Port" : "regions", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_1101", "Port" : "regions_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_1101", "Port" : "regions_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_1101", "Port" : "regions_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_runTestAfterInit_fu_1101", "Port" : "n_regions_V", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_4_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regions_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.n_regions_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101", "Parent" : "0", "Child" : ["9", "10", "21", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47"],
		"CDFG" : "runTestAfterInit",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "90", "EstimateLatencyMax" : "656",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "9", "Name" : "runTestAfterInit_Block_entry10_proc_U0"},
			{"ID" : "10", "Name" : "run_test_U0"}],
		"OutputProcess" : [
			{"ID" : "21", "Name" : "writeOutcome_U0"}],
		"Port" : [
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "runTestAfterInit_Block_entry10_proc_U0", "Port" : "gmem"}]},
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "writeOutcome_U0", "Port" : "outcomeInRam"}]},
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "writeOutcome_U0", "Port" : "errorInTask"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "runTestAfterInit_Block_entry10_proc_U0", "Port" : "n_regions_V"}]},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "run_test_U0", "Port" : "regions"}]},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "run_test_U0", "Port" : "regions_1"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "run_test_U0", "Port" : "regions_2"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "run_test_U0", "Port" : "regions_3"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.runTestAfterInit_Block_entry10_proc_U0", "Parent" : "8",
		"CDFG" : "runTestAfterInit_Block_entry10_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "72", "EstimateLatencyMax" : "72",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "inputAOV", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "n_regions_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0", "Parent" : "8", "Child" : ["11", "16", "20"],
		"CDFG" : "run_test",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "583",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "regions", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_245", "Port" : "regions", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_245", "Port" : "regions_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_245", "Port" : "regions_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_245", "Port" : "regions_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "30", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "31", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "32", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "33", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "34", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "35", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "36", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "38", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "contr_AOV_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "39", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "40", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_3_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "42", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_3_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_4_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_4_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_5_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_5_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_6_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_6_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_7_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["21"], "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_7_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0.grp_run_test_Pipeline_is_valid_label2_fu_225", "Parent" : "10", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "run_test_Pipeline_is_valid_label2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "is_valid_label2", "PipelineType" : "NotSupport"}]},
	{"ID" : "12", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0.grp_run_test_Pipeline_is_valid_label2_fu_225.fcmp_32ns_32ns_1_2_no_dsp_1_U5", "Parent" : "11"},
	{"ID" : "13", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0.grp_run_test_Pipeline_is_valid_label2_fu_225.fcmp_32ns_32ns_1_2_no_dsp_1_U6", "Parent" : "11"},
	{"ID" : "14", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0.grp_run_test_Pipeline_is_valid_label2_fu_225.mux_84_32_1_1_U7", "Parent" : "11"},
	{"ID" : "15", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0.grp_run_test_Pipeline_is_valid_label2_fu_225.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0.grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_245", "Parent" : "10", "Child" : ["17", "18", "19"],
		"CDFG" : "run_test_Pipeline_VITIS_LOOP_72_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bitcast_ln76_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln76_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "regions", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "regions_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bitcast_ln76_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "icmp_ln76_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "17", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0.grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_245.mux_21_32_1_1_U19", "Parent" : "16"},
	{"ID" : "18", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0.grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_245.mux_21_32_1_1_U20", "Parent" : "16"},
	{"ID" : "19", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0.grp_run_test_Pipeline_VITIS_LOOP_72_1_fu_245.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.run_test_U0.fcmp_32ns_32ns_1_2_no_dsp_1_U52", "Parent" : "10"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.writeOutcome_U0", "Parent" : "8", "Child" : ["22", "23"],
		"CDFG" : "writeOutcome",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "errorInTask", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "28", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "27", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["9"], "DependentChan" : "29", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "47", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "outcomeInRam", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "contr_AOV", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "39", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "40", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "41", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_3", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "42", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_4", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "43", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_5", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_6", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "contr_AOV_7", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["10"], "DependentChan" : "46", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "contr_AOV_7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.writeOutcome_U0.outcome_AOV_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.writeOutcome_U0.grp_writeOutcome_Pipeline_1_fu_269", "Parent" : "21", "Child" : ["24", "25"],
		"CDFG" : "writeOutcome_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "contr_AOV_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_2_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_3_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_4_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_5_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_6_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "contr_AOV_7_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "outcome_AOV", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.writeOutcome_U0.grp_writeOutcome_Pipeline_1_fu_269.mux_84_32_1_1_U76", "Parent" : "23"},
	{"ID" : "25", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.writeOutcome_U0.grp_writeOutcome_Pipeline_1_fu_269.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.agg_tmp8_0_cast_loc_channel_U", "Parent" : "8"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.agg_tmp8_0_loc_channel_U", "Parent" : "8"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.tmp_21_cast_loc_channel_U", "Parent" : "8"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.agg_tmp12_loc_channel_U", "Parent" : "8"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.n_regions_V_load_loc_channel_U", "Parent" : "8"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_c17_channel_U", "Parent" : "8"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_1_c18_channel_U", "Parent" : "8"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_2_c19_channel_U", "Parent" : "8"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_3_c20_channel_U", "Parent" : "8"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_4_c21_channel_U", "Parent" : "8"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_5_c22_channel_U", "Parent" : "8"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_6_c23_channel_U", "Parent" : "8"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_7_c24_channel_U", "Parent" : "8"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_c_U", "Parent" : "8"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_1_c_U", "Parent" : "8"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_2_c_U", "Parent" : "8"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_3_c_U", "Parent" : "8"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_4_c_U", "Parent" : "8"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_5_c_U", "Parent" : "8"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_6_c_U", "Parent" : "8"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.contr_AOV_7_c_U", "Parent" : "8"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_runTestAfterInit_fu_1101.error_U", "Parent" : "8"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U132", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U133", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U134", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U135", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U136", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U137", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	run {
		gmem {Type I LastRead 70 FirstWrite -1}
		errorInTask {Type O LastRead -1 FirstWrite 7}
		outcomeInRam {Type O LastRead -1 FirstWrite 6}
		inputAOV {Type I LastRead 0 FirstWrite -1}
		accel_mode {Type I LastRead 0 FirstWrite -1}
		trainedRegion_i {Type I LastRead 0 FirstWrite -1}
		trainedRegion_o {Type O LastRead -1 FirstWrite 4}
		IOCheckIdx {Type I LastRead 0 FirstWrite -1}
		IORegionIdx {Type I LastRead 0 FirstWrite -1}
		n_regions_in {Type IO LastRead 3 FirstWrite 1}
		regions {Type IO LastRead -1 FirstWrite -1}
		regions_2 {Type IO LastRead -1 FirstWrite -1}
		regions_4 {Type IO LastRead -1 FirstWrite -1}
		regions_1 {Type IO LastRead -1 FirstWrite -1}
		regions_3 {Type IO LastRead -1 FirstWrite -1}
		regions_5 {Type IO LastRead -1 FirstWrite -1}
		n_regions_V {Type IO LastRead -1 FirstWrite -1}}
	runTestAfterInit {
		gmem {Type I LastRead 70 FirstWrite -1}
		inputAOV {Type I LastRead 0 FirstWrite -1}
		outcomeInRam {Type O LastRead -1 FirstWrite 6}
		errorInTask {Type O LastRead -1 FirstWrite 7}
		n_regions_V {Type I LastRead 71 FirstWrite -1}
		regions {Type I LastRead 28 FirstWrite -1}
		regions_1 {Type I LastRead 28 FirstWrite -1}
		regions_2 {Type I LastRead 30 FirstWrite -1}
		regions_3 {Type I LastRead 30 FirstWrite -1}}
	runTestAfterInit_Block_entry10_proc {
		inputAOV {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 70 FirstWrite -1}
		n_regions_V {Type I LastRead 71 FirstWrite -1}}
	run_test {
		regions {Type I LastRead 28 FirstWrite -1}
		p_read1 {Type I LastRead 1 FirstWrite -1}
		regions_1 {Type I LastRead 28 FirstWrite -1}
		regions_2 {Type I LastRead 30 FirstWrite -1}
		regions_3 {Type I LastRead 30 FirstWrite -1}
		p_read2 {Type I LastRead 1 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		contr_AOV_c {Type O LastRead -1 FirstWrite 0}
		contr_AOV_1_c {Type O LastRead -1 FirstWrite 0}
		contr_AOV_2_c {Type O LastRead -1 FirstWrite 0}
		contr_AOV_3_c {Type O LastRead -1 FirstWrite 0}
		contr_AOV_4_c {Type O LastRead -1 FirstWrite 0}
		contr_AOV_5_c {Type O LastRead -1 FirstWrite 0}
		contr_AOV_6_c {Type O LastRead -1 FirstWrite 0}
		contr_AOV_7_c {Type O LastRead -1 FirstWrite 0}}
	run_test_Pipeline_is_valid_label2 {
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}}
	run_test_Pipeline_VITIS_LOOP_72_1 {
		p_read2 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_15 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_22 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_13 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_19 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_11 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_15 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_9 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_14 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_7 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_11 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_5 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_7 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		bitcast_ln76_3 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_6 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		zext_ln76_1 {Type I LastRead 0 FirstWrite -1}
		regions {Type I LastRead 28 FirstWrite -1}
		regions_1 {Type I LastRead 28 FirstWrite -1}
		regions_2 {Type I LastRead 30 FirstWrite -1}
		regions_3 {Type I LastRead 30 FirstWrite -1}
		bitcast_ln76_1 {Type I LastRead 0 FirstWrite -1}
		icmp_ln76_3 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}}
	writeOutcome {
		errorInTask {Type O LastRead -1 FirstWrite 7}
		p_read {Type I LastRead 7 FirstWrite -1}
		p_read1 {Type I LastRead 6 FirstWrite -1}
		p_read2 {Type I LastRead 6 FirstWrite -1}
		p_read3 {Type I LastRead 7 FirstWrite -1}
		outcomeInRam {Type O LastRead -1 FirstWrite 6}
		contr_AOV {Type I LastRead 0 FirstWrite -1}
		contr_AOV_1 {Type I LastRead 0 FirstWrite -1}
		contr_AOV_2 {Type I LastRead 0 FirstWrite -1}
		contr_AOV_3 {Type I LastRead 0 FirstWrite -1}
		contr_AOV_4 {Type I LastRead 0 FirstWrite -1}
		contr_AOV_5 {Type I LastRead 0 FirstWrite -1}
		contr_AOV_6 {Type I LastRead 0 FirstWrite -1}
		contr_AOV_7 {Type I LastRead 0 FirstWrite -1}}
	writeOutcome_Pipeline_1 {
		contr_AOV_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_1_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_2_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_3_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_4_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_5_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_6_load {Type I LastRead 0 FirstWrite -1}
		contr_AOV_7_load {Type I LastRead 0 FirstWrite -1}
		outcome_AOV {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "659"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "660"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 512 }  { m_axi_gmem_WSTRB STRB 1 64 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 512 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}