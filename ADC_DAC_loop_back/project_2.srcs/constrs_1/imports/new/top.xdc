set_false_path -from [get_clocks RFDAC1_CLK] -to [get_clocks -of_objects [get_pins {design_1_i/util_ds_buf_1/U0/USE_BUFGCE_DIV2.GEN_BUFGCE_DIV2[0].BUFGCE_DIV2_I/O}]]
set_false_path -from [get_clocks clk_pl_0] -to [get_clocks -of_objects [get_pins {design_1_i/util_ds_buf_1/U0/USE_BUFGCE_DIV2.GEN_BUFGCE_DIV2[0].BUFGCE_DIV2_I/O}]]

set_property IOSTANDARD DIFF_HSTL_I_18 [get_ports CLK_IN_D_0_clk_p]

set_property PACKAGE_PIN J19 [get_ports CLK_IN_D_0_clk_p]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
