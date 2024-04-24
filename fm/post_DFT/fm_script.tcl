
############################  Search PATH ################################

lappend search_path /home/ICer/Projects/UART/ref/std_cells
lappend search_path /home/ICer/Projects/UART/rtl/UART_TX
lappend search_path /home/ICer/Projects/UART/rtl/UART_RX
lappend search_path /home/ICer/Projects/UART/rtl/UART_TOP_DFT


########################### Define Top Module ############################

set system_top UART

###################################################################
############################ Guidance #############################
###################################################################

# Synopsys setup variable
set synopsys_auto_setup true

# Formality Setup File
set_svf "/home/ICer/Projects/UART/dft/UART.svf"


####################### Read Reference tech libs ######################## 

set SSLIB "saed32rvt_ss0p75v125c.db"

read_db -container Ref [list $SSLIB]

###################################################################
###################### Reference Container ########################
###################################################################


read_verilog -container Ref   "{mux.v \
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
                                mux2X1.v \
				UART.v }"
	

# set the top Reference Design 
set_reference_design $system_top

set_top $system_top

###################################################################
#################### Implementation Container #####################
###################################################################

read_db -container Imp [list $SSLIB]


# Read Implementation Design Files
read_verilog -netlist -container Imp "/home/ICer/Projects/UART/dft/UART_mapped.v"


# set the top Implementation Design
set_implementation_design $system_top

set_top $system_top

########################## Don't verify ###########################

# do not verify scan in & scan out ports as a compare point as it is existed only after synthesis and not existed in the RTL

#scan in
set_dont_verify_points -type port Ref:/WORK/*/SI
set_dont_verify_points -type port Imp:/WORK/*/SI

#scan_out
set_dont_verify_points -type port Ref:/WORK/*/SO
set_dont_verify_points -type port Imp:/WORK/*/SO


############################### constants #####################################

# all atpg enable (test_mode, scan_enable) are zero during formal compare

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0


###################### Matching Compare points ####################

match

######################### Run Verification ########################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "fm_reports/passing_points.rpt"
report_failing_points > "fm_reports/failing_points.rpt"
report_aborted_points > "fm_reports/aborted_points.rpt"
report_unverified_points > "fm_reports/unverified_points.rpt"


start_gui

