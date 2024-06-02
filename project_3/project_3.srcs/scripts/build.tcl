# read design sources (add one line for each file)
set script_path [ file dirname [ file normalize [ info script ] ] ]
puts $script_path

set parent_path [file dirname $script_path]   

#Set the target part, target language, and board part
set_part xczu28dr-ffvg1517-2-e
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:zcu111:part0:1.2 [current_project]
set_property default_lib work [current_project]

#Create block design using a tcl script
source $script_path/Base_Zynq_MPSoC.tcl

#Alternatively, you can read an existing block design 
#read_bd $parent_path/sources_1/bd/Base_Zynq_MPSoC/Base_Zynq_MPSoC.bd
#open_bd_design $parent_path/sources_1/bd/Base_Zynq_MPSoC/Base_Zynq_MPSoC.bd

#If the block design is the top-level hierarchy, then create and add wrapper file
make_wrapper -files [get_files $script_path/.srcs/sources_1/bd/Base_Zynq_MPSoC/Base_Zynq_MPSoC.bd] -top
read_verilog $script_path/.srcs/sources_1/bd/Base_Zynq_MPSoC/hdl/Base_Zynq_MPSoC_wrapper.v

#Alternatively, you can read a top level RTL file
#read_vhdl top.vhd
#read_verilog -v "$parent_path/sources_1/bd/Base_Zynq_MPSoC/hdl/Base_Zynq_MPSoC_wrapper.v"

# read constraints
read_xdc "$parent_path/constrs_1/new/top.xdc"

#If the block design does not have the output products generated, generate the output products needed for synthesis and implementation runs
set_property synth_checkpoint_mode None [get_files $script_path/.srcs/sources_1/bd/Base_Zynq_MPSoC/Base_Zynq_MPSoC.bd]
generate_target all [get_files $script_path/.srcs/sources_1/bd/Base_Zynq_MPSoC/Base_Zynq_MPSoC.bd]

#Run synthesis and implementation
synth_design -top Base_Zynq_MPSoC_wrapper
opt_design
place_design
route_design
write_bitstream Base_Zynq_MPSoC_wrapper.bit
#write_bitstream -force "hello.bit"

#Export the implemented hardware system to the Vitis environment
write_hw_platform -fixed -force -file ./Base_Zynq_MPSoC_wrapper.xsa


