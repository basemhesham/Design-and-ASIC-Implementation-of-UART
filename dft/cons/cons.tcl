
# Constraints
# ----------------------------------------------------------------------------
#
# 1. Master Clock Definitions
#
# 2. Clock Uncertainties
#
# 3. set input/output delay on ports
#
# 4. Driving cells
#
# 5. Output load


####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Clock Uncertainties
# 3. Clock Transitions
####################################################################################

#baud rate =115200 bits/sec = 112.5 KHz

# UART_CLK_TX = 112.5 KHz
set CLK1_NAME UART_CLK_TX
set CLK1_PER 8680.5

# UART_CLK_RX =115200 * 32= 3.515 MHz
set CLK2_NAME UART_CLK_RX
set CLK2_PER 271.316

#SCAN_CLK (10 MHZ)
set CLK3_NAME SCAN_CLK
set CLK3_PER 100

set CLK_SETUP_SKEW 0.25
set CLK_HOLD_SKEW 0.1
set CLK_TRA 0.1


create_clock -name $CLK1_NAME -period $CLK1_PER -waveform "0 [expr $CLK1_PER/2]" [get_ports TX_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK1_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK1_NAME]

create_clock -name $CLK2_NAME -period $CLK2_PER -waveform "0 [expr $CLK2_PER/2]" [get_ports RX_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK2_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK2_NAME]

# Scan clocks
create_clock -name $CLK3_NAME -period $CLK3_PER -waveform "0 [expr $CLK3_PER/2]" [get_ports scan_clk]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK3_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW   [get_clocks $CLK3_NAME]

set_clock_transition -rise $CLK_TRA  [get_clocks $CLK1_NAME]	   
set_clock_transition -rise $CLK_TRA  [get_clocks $CLK2_NAME]	 

# Don’t optimize logic crossing clock domains
set_false_path -from [get_clocks $CLK1_NAME] -to [get_clocks $CLK2_NAME]
set_false_path -from [get_clocks $CLK2_NAME] -to [get_clocks $CLK1_NAME]

####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks {UART_CLK_TX UART_CLK_RX}] \
                               -group [get_clocks SCAN_CLK] 
####################################################################################
           #########################################################
             #### Section 2 : set input/output delay on ports ####
           #########################################################
####################################################################################

set in_delay  [expr 0.3*$CLK2_PER]
set out_delay [expr 0.3*$CLK2_PER]

#Constrain Input Paths
set_input_delay $in_delay -clock $CLK2_NAME [remove_from_collection [all_inputs] [get_ports {scan_clk TX_CLK RX_CLK RST}]]


#Constrain Output Paths
set_output_delay $out_delay -clock $CLK2_NAME [all_outputs]

####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -no_design_rule -max -lib_cell NBUFFX4_RVT [remove_from_collection [all_inputs] [get_ports {scan_clk TX_CLK RX_CLK}]]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load -max [expr {2 * [load_of saed32rvt_ss0p75v125c/NBUFFX4_RVT/A]}] [all_outputs]

####################################################################################
           #########################################################
                 #### Section 6 : min and max library ####
           #########################################################
####################################################################################

set_min_library saed32rvt_ss0p75v125c.db -min_version saed32rvt_ff1p16vn40c.db

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################

set auto_wire_load_selection area_reselect
set_wire_load_mode enclosed
set_wire_load_selection_group predcaps

####################################################################################
           #########################################################
                  #### Section 8 : set_case_analysis ####
           #########################################################
####################################################################################

set_case_analysis 1 [get_port test_mode]
