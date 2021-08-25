
package require qsys 14.0
package require quartus::device

source ../scripts/adi_env.tcl
source ../scripts/adi_ip_intel.tcl

ad_ip_create axi_led_control_intel {AXI LED CONTROL}

ad_ip_files axi_led_control_intel [list\
  $ad_hdl_dir/library/common/up_axi.v \
  axi_led_control_intel.v ]

#axi4 slave

ad_ip_intf_s_axi s_axi_aclk s_axi_aresetn 10

#output led
add_interface led_on_if conduit end
add_interface_port led_on_if led_on data Output 1 
