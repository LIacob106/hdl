
set_property  -dict {PACKAGE_PIN N18  IOSTANDARD LVCMOS33}  [get_ports clk_in]              ; ## IO8
set_property  -dict {PACKAGE_PIN M18  IOSTANDARD LVCMOS33}  [get_ports ready_in]            ; ## IO9

set_property  -dict {PACKAGE_PIN R14  IOSTANDARD LVCMOS33}  [get_ports data_in[0]]          ; ## IO7
set_property  -dict {PACKAGE_PIN R17  IOSTANDARD LVCMOS33}  [get_ports data_in[1]]          ; ## IO6
set_property  -dict {PACKAGE_PIN V18  IOSTANDARD LVCMOS33}  [get_ports data_in[2]]          ; ## IO5
set_property  -dict {PACKAGE_PIN V17  IOSTANDARD LVCMOS33}  [get_ports data_in[3]]          ; ## IO4
set_property  -dict {PACKAGE_PIN T15  IOSTANDARD LVCMOS33}  [get_ports data_in[4]]          ; ## IO3
set_property  -dict {PACKAGE_PIN T14  IOSTANDARD LVCMOS33}  [get_ports data_in[5]]          ; ## IO2
set_property  -dict {PACKAGE_PIN V13  IOSTANDARD LVCMOS33}  [get_ports data_in[6]]          ; ## IO1
set_property  -dict {PACKAGE_PIN U14  IOSTANDARD LVCMOS33}  [get_ports data_in[7]]          ; ## IO0

set_property  -dict {PACKAGE_PIN U15  IOSTANDARD LVCMOS33}  [get_ports spi_csn]             ; ## IO10
set_property  -dict {PACKAGE_PIN G15  IOSTANDARD LVCMOS33}  [get_ports spi_clk]             ; ## IO13
set_property  -dict {PACKAGE_PIN K18  IOSTANDARD LVCMOS33}  [get_ports spi_mosi]            ; ## IO11
set_property  -dict {PACKAGE_PIN J18  IOSTANDARD LVCMOS33}  [get_ports spi_miso]            ; ## IO12

set_property  -dict {PACKAGE_PIN P16  IOSTANDARD LVCMOS33}  [get_ports iic_scl]
set_property  -dict {PACKAGE_PIN P15  IOSTANDARD LVCMOS33}  [get_ports iic_sda]

#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports led_out[0]]; #IO_L16P_T2_35 Sch=led0_g
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports led_out[1]]; #IO_0_35 Sch=led1_b

### Buttons
#set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports btn_in[0]]; #IO_L4N_T0_35 Sch=btn[0]
#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports btn_in[1]]; #IO_L4P_T0_35 Sch=btn[1]

create_clock -name adc_clk -period 20 [get_ports clk_in]
