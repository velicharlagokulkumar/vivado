set_property -dict{PACKAGE_PIN E3 IOSTANDARD LVCMOS18 }[get_ports {clk}];
create_clock -add -name sys_clk_pin -period 8.00 -waveform{0 4}[get_ports {clk}];