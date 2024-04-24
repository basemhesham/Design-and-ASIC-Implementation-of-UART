
########################### Define Top Module ############################
                                                 
set top_module UART

########################### Define SVF File ############################
set_svf $top_module.svf

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries          #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/ICer/Projects/UART/ref/std_cells
lappend search_path /home/ICer/Projects/UART/rtl/UART_TX
lappend search_path /home/ICer/Projects/UART/rtl/UART_RX
lappend search_path /home/ICer/Projects/UART/rtl/UART_TOP

set SSLIB "saed32rvt_ss0p75v125c.db"

## Standard Cell libraries 
set target_library [list $SSLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

set file_format verilog

analyze -format $file_format {  mux.v \
				parity_calc.v \
				Serializer.v \
				uart_tx_fsm.v \
				UART_TX.v \
				data_sampling.v \
				deserializer.v \
				edge_bit_counter.v \
				par_chk.v \
				stp_chk.v \
				strt_chk.v \
				uart_rx_fsm.v \
				UART_RX.v \
				UART.v }

elaborate -lib work UART

###################### Defining toplevel ###################################

current_design $top_module

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## Liniking All The Design Parts ########"
puts "###############################################"

link 

#################### Liniking All The Design Parts #########################
puts "###############################################"
puts "######## checking design consistency ##########"
puts "###############################################"

check_design

############################### Path groups ################################
puts "###############################################"
puts "################ Path groups ##################"
puts "###############################################"

group_path -name INREG -from [all_inputs] 
group_path -name REGOUT -to [all_outputs]  
group_path -name INOUT -from [all_inputs] -to [all_outputs] 

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"

source -echo ./cons.tcl

###################### Mapping and optimization ########################
puts "###############################################"
puts "######## Preventing Multiple Port Nets ########"
puts "###############################################"

set case_analysis_with_logic_constants true

set_fix_multiple_port_nets -all

puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"

compile_ultra -no_autoungroup

set_svf -off

#############################################################################
# Write out Design after initial compile
#############################################################################

puts "###############################################"
puts "########## Remove Special Characters ##########"
puts "###############################################"

set verilogout_equation  false

change_names -rule verilog -hierarchy

write_file -format verilog -hierarchy -output UART_mapped.v
write_file -format ddc -hierarchy -output UART_mapped.ddc
write_sdc  -nosplit UART_mapped.sdc
write_sdf           UART_mapped.sdf

################# reporting #######################

report_area -hierarchy > reports/area.rpt
report_power -hierarchy > reports/power.rpt
report_timing -max_paths 100 -delay_type min > reports/hold.rpt
report_timing -max_paths 100 -delay_type max > reports/setup.rpt
report_constraint -all_violators > reports/constraints.rpt
report_qor  > reports/qor.rpt

################# starting graphical user interface #######################

gui_start

