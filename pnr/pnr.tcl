#######################################################################################################
########################################## Data Setup  ################################################
#######################################################################################################

set_app_var search_path  "../ref/UART_design_data "

set TECH_FILE "../ref/tech/saed32nm_1p9m.tf"

set REFERENCE_LIBRARY "../ref/CLIBs/saed32rvt_ss0p75v125c.ndm"

################################################################################
## Create the design library
## Load the netlist 
################################################################################

create_lib -technology $TECH_FILE -ref_libs $REFERENCE_LIBRARY UART.dlib

read_verilog -top UART UART_mapped.v

read_sdc UART_mapped.sdc

link_block -force

################################################################################
## RC parasitics, placement site
## and routing layer setup
################################################################################

read_parasitic_tech -layermap ../ref/tech/saed32nm_tf_itf_tluplus.map -tlup ../ref/tech/saed32nm_1p9m_Cmax.tluplus -name maxTLU
read_parasitic_tech -layermap ../ref/tech/saed32nm_tf_itf_tluplus.map -tlup ../ref/tech/saed32nm_1p9m_Cmin.tluplus -name minTLU

report_lib -parasitic_tech [current_lib]

#preferred routing direction
set_attribute [get_layers {M1 M3 M5 M7 M9}] routing_direction horizontal
set_attribute [get_layers {M2 M4 M6 M8}] routing_direction vertical

set_ignored_layers -max_routing_layer M9

set_attribute [get_site_defs unit] symmetry Y
set_attribute [get_site_defs unit] is_default true

##########################################################################################################
########################################## Floorplanning  ################################################
##########################################################################################################

set_parasitic_parameters -late_spec minTLU -early_spec maxTLU

initialize_floorplan -core_utilization 0.6 -core_offset {5} 

create_placement -floorplan
legalize_placement

set_block_pin_constraints -self -allowed_layers {M3 M4 M5 M6} -pin_spacing_distance 2

place_pins -self

##########################################################################################################
########################################## Power planning  ###############################################
##########################################################################################################

source -echo ./scripts/power_network.tcl

#################################
##  Reports and check	
#################################

set reports_dir "./reports/Powerplanning"

file mkdir $reports_dir

check_pg_missing_vias > ${reports_dir}/check_pg_missing_vias.rpt
report_qor -summary -include setup > ${reports_dir}/report_qor.summary.rpt
report_timing -max_paths 5 > ${reports_dir}/report_timing.rpt
check_pg_drc -ignore_std_cells > ${reports_dir}/check_pg_drc.rpt
check_pg_connectivity -check_std_cell_pins none > ${reports_dir}/check_pg_connectivity.rpt

##########################################################################################################
############################################# Placement  #################################################
##########################################################################################################

################################################
################## Analysis ####################
################################################
report_qor -summary
report_ignored_layers
report_design -summary
report_utilization

check_design -checks pre_placement_stage
check_design -checks physical_constraints
 
#      Analyze high fanout nets
report_net_fanout -high_fanout

#      Enable tie-cells
set_lib_cell_purpose -include optimization [get_lib_cells */TIE*]
set_dont_touch [get_lib_cells */TIE*] false

#      Limit the fanout of each tie cell to 8
set_app_options -name opt.tie_cell.max_fanout -value 8

################################################
########### Read the SCAN-DEF file #############
################################################
read_def UART.def

################################################
############# Application options ##############
################################################

# Enable create_placement, place_opt and clock_opt to call dft optimization.
set_app_options -list {opt.dft.optimize_scan_chain {true}}

# route-driven-extration (RDE)
set_app_options -name opt.common.enable_rde -value true

################################################
########## placement and optimization ##########
################################################

place_opt

#Performs global routing on the design.
route_global -effort_level minimum -congestion_map_only true

################################################
############## Check and Reports ###############
################################################

set reports_dir "./reports/Placement"

file mkdir $reports_dir

check_legality -verbose > ${reports_dir}/check_legality.rpt
report_qor -summary > ${reports_dir}/report_qor.summary.rpt
report_timing -nosplit -transition_time -capacitance -input_pins -nets -derate -delay_type max -path_type full_clock_expanded -voltage -significant_digits 4 -nworst 1 -physical -max_paths 100 > ${reports_dir}/report_timing.full.rpt
report_timing -nosplit -transition_time -capacitance -input_pins -nets -derate -delay_type max -voltage -significant_digits 4 -nworst 1 -physical -max_paths 100 > ${reports_dir}/report_timing.data.rpt

# create_utilization_configuration
report_utilization > ${reports_dir}/report_utilization.rpt
report_congestion > ${reports_dir}/report_congestion.rpt

##########################################################################################################
################################################  CTS  ###################################################
##########################################################################################################

####################################
## Analysis
####################################
report_clock_qor -type structure

####################################
## Clock Tree Targets
####################################
set_clock_tree_options -target_skew 0.05 

report_clock_tree_options

####################################
## CTS Cell Selection
####################################
derive_clock_cell_references -output cts_leq_set.tcl > /dev/null

set CTS_CELLS [get_lib_cells "*/NBUFF* */INVX* */CGL* */*DFF*"]
set_dont_touch $CTS_CELLS false
set_lib_cell_purpose -exclude cts [get_lib_cells] 
set_lib_cell_purpose -include cts $CTS_CELLS

report_lib_cells -objects [get_lib_cells] -columns {name:20 valid_purposes dont_touch}


####################################
## CTS NDRs
####################################

source -echo ./scripts/ndr.tcl

report_routing_rules -verbose

report_clock_routing_rules

####################################
## Timing and DRC Setup
####################################

# Ensure that driving cells are specified on clock port
set_driving_cell -lib_cell NBUFFX16_RVT [get_ports TX_CLK]
set_driving_cell -lib_cell NBUFFX16_RVT [get_ports RX_CLK]

report_ports -verbose [get_ports *CLK]
report_clocks -skew

# Change the uncertainty 
  set_clock_uncertainty 0.2 -setup [all_clocks]

  set_clock_uncertainty 0.05 -hold [all_clocks]

# max transition
set_max_transition 0.25 -clock_path [all_clocks] 

####################################
## CTS Application options
####################################
set_app_options -name time.remove_clock_reconvergence_pessimism -value true

set_app_options -name clock_opt.flow.enable_ccd -value true 

#Enable global routing for congestion estimation
set_app_options -list {cts.compile.enable_global_route true}

#Ignore ports for boundary identification (reset, scan_en, ...)
set_app_options -list {ccd.ignore_scan_reset_for_boundary_identification {false}}

####################################
## Pre CTS Reports checks
####################################

# Report clock tree max_tran/cap/references/... in all clocks+modes:
report_clock_settings

report_qor -summary

# Report clock tree target skew/latency constraints:
report_clock_tree_options

# Report non-default routing rules in a more compact way
report_clock_routing_rules

########################################################################
## Clock tree synthesis, clock tree routing, and data path optimization 
########################################################################
clock_opt

####################################
## Post CTS Reports checks
####################################

set reports_dir "./reports/CTS"

file mkdir $reports_dir

report_qor -summary > ${reports_dir}/report_qor.rpt
report_clock_qor -type summary > ${reports_dir}/report_clock_qor.rpt
report_clock_qor -clock [all_clocks] -type latency > ${reports_dir}/latency.rpt
report_clock_qor -clock [all_clocks] -type local_skew -largest 100 > ${reports_dir}/local_skew.rpt
report_constraints -max_transition  -all_violators -significant_digits 3 -verbose > ${reports_dir}/report_constraints_max_transition.rpt
report_constraints -max_capacitance -all_violators -significant_digits 3 -verbose >> ${reports_dir}/report_constraints_max_capacitance.rpt
check_legality -verbose > ${reports_dir}/check_legality.rpt

##########################################################################################################
#############################################  Routing  ##################################################
##########################################################################################################

####################################
## Pre_route checks
####################################
check_design -checks pre_route_stage
check_routability

### update design latency
compute_clock_latency -verbose

####################################
## Routing Application options
####################################

# Antenna rule file
source -echo ../ref/tech/saed32nm_ant_1p9m.tcl
report_app_options route.detail.*antenna*

# global route
#Enable crosstalk only during track assignment
set_app_options -name route.global.crosstalk_driven -value false
set_app_options -name route.global.timing_driven -value true
set_app_options -name route.global.effort_level -value high
set_app_options -name route.global.timing_driven_effort_level -value high

# track assignment
set_app_options -name route.track.crosstalk_driven -value true
set_app_options -name route.track.timing_driven -value true

# detail route
set_app_options -name route.detail.antenna -value true
set_app_options -name route.detail.antenna_fixing_preference -value use_diodes
set_app_options -name route.detail.diode_libcell_names -value */ANTENNA_RVT
set_app_options -name route.detail.timing_driven -value true
set_app_options -name route.detail.save_after_iterations -value 2
set_app_options -name route.detail.optimize_wire_via_effort_level -value high

### route opt app options
set_app_options -name route_opt.flow.enable_ccd -value true
set_app_options -name route_opt.flow.enable_ccd_clock_drc_fixing -value auto
set_app_options -name route_opt.flow.enable_clock_power_recovery -value false

#Post-Route Timing Analysis
set_app_options -name time.si_enable_analysis -value true
set_app_options -name time.enable_si_timing_windows -value true


####################################
## Routing
####################################

#global routing + track assignment + detail routing 
 
route_auto 


####################################
## Post-Route Optimization
####################################

route_opt

####################################
## Post Routing Reports checks
####################################

set reports_dir "./reports/Routing"

file mkdir $reports_dir

report_qor -summary > ${reports_dir}/report_qor.rpt
check_legality -verbose > ${reports_dir}/check_legality.rpt
report_timing -max_paths 5 > ${reports_dir}/report_timing.rpt
report_constraints -max_transition  -all_violators -significant_digits 3 -verbose > ${reports_dir}/report_constraints_max_transition.rpt
report_constraints -max_capacitance -all_violators -significant_digits 3 -verbose >> ${reports_dir}/report_constraints_max_capacitance.rpt
check_routes > ${reports_dir}/check_routes.rpt
check_lvs > ${reports_dir}/check_lvs.rpt

connect_pg_net -all_blocks -automatic
####################################
## gds
####################################
set design "UART"

set gds_file "output/${design}.gds"
set_app_options -name file.gds.contact_prefix -value "${design}_"
write_gds -long_names -design $design -hierarchy design_lib -lib_cell_view frame -keep_data_type -fill exclude $gds_file
####################################
## netlist
####################################
set netlist_name "output/${design}.v"
write_verilog $netlist_name -exclude {all_physical_cells analog_pg corner_cells cover_cells diode_cells empty_modules end_cap_cells physical_only_cells filler_cells pg_objects well_tap_cells leaf_module_declarations}

####################################
## lvs netlist
#################################### 
set lvs_netlist "output/${design}.lvs.v"
write_verilog $lvs_netlist -exclude {empty_modules end_cap_cells well_tap_cells}

####################################
## def
#################################### 
set def_name "output/${design}.def"
write_def -design $design -include_tech_via_definitions -include {blockages bounds cells nets ports routing_rules rows_tracks specialnets vias} $def_name

####################################
## lef
#################################### 
set lef_name "output/${design}.lef"
# create_frame
create_frame -block_all auto -hierarchical true -merge_metal_blockage true
# write_lef
write_lef -design ${design}.frame $lef_name -include cell

set techlef_name "output/${design}.tlef"
write_lef -design ${design}.frame $techlef_name -include tech

####################################
## Save Block
####################################
save_block
save_lib -all

