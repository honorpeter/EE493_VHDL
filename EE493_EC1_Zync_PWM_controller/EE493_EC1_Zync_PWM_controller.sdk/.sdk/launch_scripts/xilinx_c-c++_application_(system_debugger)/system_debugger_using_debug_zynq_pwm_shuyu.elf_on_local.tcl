connect -url tcp:127.0.0.1:3121
source G:/Documents/EE493_VHDL/EE493_EC1_Zync_PWM_controller/EE493_EC1_Zync_PWM_controller.sdk/Zync_PWM_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A81A14A"} -index 0
loadhw -hw G:/Documents/EE493_VHDL/EE493_EC1_Zync_PWM_controller/EE493_EC1_Zync_PWM_controller.sdk/Zync_PWM_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A81A14A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A81A14A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A81A14A"} -index 0
dow G:/Documents/EE493_VHDL/EE493_EC1_Zync_PWM_controller/EE493_EC1_Zync_PWM_controller.sdk/Zynq_PWM_shuyu/Debug/Zynq_PWM_shuyu.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A81A14A"} -index 0
con
