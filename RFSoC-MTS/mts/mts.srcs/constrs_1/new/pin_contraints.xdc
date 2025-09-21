set_property IOSTANDARD LVDS [get_ports pl_sysref_0_clk_p]
set_property PACKAGE_PIN AK17 [get_ports pl_sysref_0_clk_p]
set_property DIFF_TERM_ADV TERM_100 [get_ports pl_sysref_0_clk_p]

set_property PACKAGE_PIN AL16 [get_ports {CLK_IN_D_0_clk_p}]
set_property IOSTANDARD LVDS [get_ports {CLK_IN_D_0_clk_p}]
set_property DIFF_TERM_ADV TERM_100 [get_ports {CLK_IN_D_0_clk_p}]

set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]


#create_clock -period 5.425 -name pl_clk [get_ports CLK_IN_D_0_clk_p[0]] 
 
