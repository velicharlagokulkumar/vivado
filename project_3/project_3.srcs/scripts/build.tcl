# read design sources (add one line for each file)
set script_path [ file dirname [ file normalize [ info script ] ] ]
puts $script_path
 
read_verilog -v "../sources_1/bd/Base_Zynq_MPSoC/hdl/Base_Zynq_MPSoC_wrapper.v"

# read constraints
read_xdc "../constrs_1/new/top.xdc"

# synth
synth_design -top "Base_Zynq_MPSoC_wrapper" -part "xczu28dr-ffvg1517-2-e"

# place and route
opt_design
place_design
route_design

# write bitstream
write_bitstream -force "hello.bit"