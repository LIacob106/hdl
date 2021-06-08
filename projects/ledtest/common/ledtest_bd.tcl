
# ad7768 interface

create_bd_port -dir I -from 1 -to 0 adc_gpio_0_i
create_bd_port -dir O -from 1 -to 0 adc_gpio_0_o
create_bd_port -dir O -from 1 -to 0 adc_gpio_0_t
create_bd_port -dir I -from 1 -to 0 adc_gpio_1_i
create_bd_port -dir O -from 1 -to 0 adc_gpio_1_o
create_bd_port -dir O -from 1 -to 0 adc_gpio_1_t


# instances


# gpio

ad_ip_instance axi_gpio ad7768_gpio
ad_ip_parameter ad7768_gpio CONFIG.C_IS_DUAL 1
ad_ip_parameter ad7768_gpio CONFIG.C_GPIO_WIDTH 2
ad_ip_parameter ad7768_gpio CONFIG.C_GPIO2_WIDTH 2
ad_ip_parameter ad7768_gpio CONFIG.C_INTERRUPT_PRESENT 1



# interconnects

ad_connect  adc_gpio_0_i ad7768_gpio/gpio_io_i
ad_connect  adc_gpio_0_o ad7768_gpio/gpio_io_o
ad_connect  adc_gpio_0_t ad7768_gpio/gpio_io_t
ad_connect  adc_gpio_1_i ad7768_gpio/gpio2_io_i
ad_connect  adc_gpio_1_o ad7768_gpio/gpio2_io_o
ad_connect  adc_gpio_1_t ad7768_gpio/gpio2_io_t




# interrupts

ad_cpu_interrupt ps-12 mb-12  ad7768_gpio/ip2intc_irpt


# cpu / memory interconnects

ad_cpu_interconnect 0x7C400000 ad7768_gpio

delete_bd_objs [get_bd_intf_nets axi_hp0_interconnect_M00_AXI] [get_bd_cells axi_hp0_interconnect]