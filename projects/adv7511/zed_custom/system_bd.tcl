
source $ad_hdl_dir/projects/common/zed/zed_system_bd.tcl
source $ad_hdl_dir/projects/scripts/adi_pd.tcl

#system ID
ad_ip_parameter axi_sysid_0 CONFIG.ROM_ADDR_BITS 9
ad_ip_parameter rom_sys_0 CONFIG.PATH_TO_FILE "[pwd]/mem_init_sys.txt"
ad_ip_parameter rom_sys_0 CONFIG.ROM_ADDR_BITS 9

#add the new IP: axi_led_control
create_bd_cell -type ip -vlnv analog.com:user:axi_led_control:1.0 axi_led_control_0
make_bd_pins_external  [get_bd_pins axi_led_control_0/led_on]
apply_bd_automation -rule xilinx.com:bd_rule:axi4 -config { Clk_master {/sys_ps7/FCLK_CLK0 (100 MHz)} Clk_slave {Auto} Clk_xbar {/sys_ps7/FCLK_CLK0 (100 MHz)} Master {/sys_ps7/M_AXI_GP0} Slave {/axi_led_control_0/s_axi} ddr_seg {Auto} intc_ip {/axi_cpu_interconnect} master_apm {0}}  [get_bd_intf_pins axi_led_control_0/s_axi]
save_bd_design
generate_target all [get_files  C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.srcs/sources_1/bd/system/system.bd]
export_ip_user_files -of_objects [get_files C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.srcs/sources_1/bd/system/system.bd] -no_script -sync -force -quiet
export_simulation -of_objects [get_files C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.srcs/sources_1/bd/system/system.bd] -directory C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.ip_user_files/sim_scripts -ip_user_files_dir C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.ip_user_files -ipstatic_source_dir C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.ip_user_files/ipstatic -lib_map_path [list {modelsim=C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.cache/compile_simlib/modelsim} {questa=C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.cache/compile_simlib/questa} {riviera=C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.cache/compile_simlib/riviera} {activehdl=C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.cache/compile_simlib/activehdl}] -use_ip_compiled_libs -force -quiet
make_wrapper -files [get_files C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.srcs/sources_1/bd/system/system.bd] -top
add_files -norecurse C:/cygwin64/home/LIacob/LIacob/hdl/projects/adv7511/zed_custom/adv7511_zed.srcs/sources_1/bd/system/hdl/system_wrapper.v


sysid_gen_sys_init_file

