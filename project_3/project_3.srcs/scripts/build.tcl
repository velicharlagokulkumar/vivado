# read design sources (add one line for each file)
read_verilog -v "../project_3.srcs/sources_1/bd/Base_Zynq_MPSoC/hdl/Base_Zynq_MPSoC_wrapper.v"

# read constraints
read_xdc "../project_3.srcs/constrs_1/new/top.xdc"

# synth
synth_design -top "Base_Zynq_MPSoC_wrapper" -part "xczu28dr-ffvg1517-2-e"

# place and route
opt_design
place_design
route_design

# write bitstream
write_bitstream -force "hello.bit"