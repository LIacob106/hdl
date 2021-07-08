# ip

source ../scripts/adi_env.tcl
source $ad_hdl_dir/library/scripts/adi_ip_xilinx.tcl

adi_ip_create axi_led_control
adi_ip_files axi_led_control [list \
  "$ad_hdl_dir/library/common/up_axi.v" \
  "axi_led_control.v"]

adi_ip_properties axi_led_control
set cc [ipx::current_core]

ipx::save_core $cc
