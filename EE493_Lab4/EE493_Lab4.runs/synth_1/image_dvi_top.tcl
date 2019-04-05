# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param synth.incrementalSynthesisCache C:/Users/Shuyu/AppData/Roaming/Xilinx/Vivado/.Xil/Vivado-33052-DESKTOP-L28RN3T/incrSyn
set_msg_config -id {Common 17-41} -limit 10000000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.cache/wt [current_project]
set_property parent.project_path O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo o:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4_MATLAB/Huangshan_entire.coe
read_vhdl -library xil_defaultlib {
  O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/imports/src/ClockGen.vhd
  O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/imports/src/DVI_Constants.vhd
  O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/imports/src/OutputSERDES.vhd
  O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/imports/src/SyncAsync.vhd
  O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/imports/src/SyncAsyncReset.vhd
  O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/imports/src/TMDS_Encoder.vhd
  O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/new/color_8bit_24bit_1920_1080.vhd
  O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/imports/src/rgb2dvi.vhd
  O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/new/vga_ctrl_1920_1080.vhd
  O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/new/image_dvi_top.vhd
}
add_files O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/bd/picture/picture.bd
set_property used_in_implementation false [get_files -all o:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/bd/picture/ip/picture_blk_mem_gen_0_0/picture_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/bd/picture/picture_ooc.xdc]

add_files O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/bd/clk_148MHz/clk_148MHz.bd
set_property used_in_implementation false [get_files -all o:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/bd/clk_148MHz/ip/clk_148MHz_clk_wiz_0_0/clk_148MHz_clk_wiz_0_0_board.xdc]
set_property used_in_implementation false [get_files -all o:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/bd/clk_148MHz/ip/clk_148MHz_clk_wiz_0_0/clk_148MHz_clk_wiz_0_0.xdc]
set_property used_in_implementation false [get_files -all o:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/bd/clk_148MHz/ip/clk_148MHz_clk_wiz_0_0/clk_148MHz_clk_wiz_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/sources_1/bd/clk_148MHz/clk_148MHz_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/img_hdmi/new/img_dvi_top.xdc
set_property used_in_implementation false [get_files O:/Documents/EE493_VHDL/EE493_Lab4/EE493_Lab4.srcs/img_hdmi/new/img_dvi_top.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top image_dvi_top -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef image_dvi_top.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file image_dvi_top_utilization_synth.rpt -pb image_dvi_top_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
