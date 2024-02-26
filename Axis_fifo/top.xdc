create_clock -period 10.000 -name clk1 -waveform {0.000 5.000} -add [get_ports clk]

create_clock -period 4.000 -name clk2 -waveform {0.000 2.000} -add [get_ports clk]

create_clock -period 2.000 -name clk3 -waveform {0.000 1.000} -add [get_ports clk]

create_clock -period 1.000 -name clk4 -waveform {0.000 0.500} -add [get_ports clk]

set_clock_groups -name exclusiv -physically_exclusive -group clk1 -group clk2 -group clk3 -group clk4





