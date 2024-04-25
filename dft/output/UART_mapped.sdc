###################################################################

# Created by write_sdc on Thu Apr 18 17:18:50 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_wire_load_mode enclosed
set_wire_load_selection_group predcaps
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports RST]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports RX_IN_S]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {TX_IN_P[7]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {TX_IN_P[6]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {TX_IN_P[5]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {TX_IN_P[4]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {TX_IN_P[3]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {TX_IN_P[2]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {TX_IN_P[1]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {TX_IN_P[0]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports TX_IN_V]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {Prescale[5]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {Prescale[4]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {Prescale[3]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {Prescale[2]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {Prescale[1]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports {Prescale[0]}]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports parity_enable]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports parity_type]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports SI]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports SE]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports scan_rst]
set_driving_cell -max -lib_cell NBUFFX4_RVT -no_design_rule [get_ports test_mode]
set_load -pin_load 1.18475 [get_ports {RX_OUT_P[7]}]
set_load -pin_load 1.18475 [get_ports {RX_OUT_P[6]}]
set_load -pin_load 1.18475 [get_ports {RX_OUT_P[5]}]
set_load -pin_load 1.18475 [get_ports {RX_OUT_P[4]}]
set_load -pin_load 1.18475 [get_ports {RX_OUT_P[3]}]
set_load -pin_load 1.18475 [get_ports {RX_OUT_P[2]}]
set_load -pin_load 1.18475 [get_ports {RX_OUT_P[1]}]
set_load -pin_load 1.18475 [get_ports {RX_OUT_P[0]}]
set_load -pin_load 1.18475 [get_ports RX_OUT_V]
set_load -pin_load 1.18475 [get_ports TX_OUT_S]
set_load -pin_load 1.18475 [get_ports TX_OUT_V]
set_load -pin_load 1.18475 [get_ports parity_error]
set_load -pin_load 1.18475 [get_ports framing_error]
set_load -pin_load 1.18475 [get_ports SO]
set_case_analysis 1 [get_ports test_mode]
create_clock [get_ports TX_CLK]  -name UART_CLK_TX  -period 8680.5  -waveform {0 4340.25}
set_clock_uncertainty -setup 0.25  [get_clocks UART_CLK_TX]
set_clock_uncertainty -hold 0.1  [get_clocks UART_CLK_TX]
set_clock_transition -min -rise 0.1 [get_clocks UART_CLK_TX]
set_clock_transition -max -rise 0.1 [get_clocks UART_CLK_TX]
create_clock [get_ports RX_CLK]  -name UART_CLK_RX  -period 271.316  -waveform {0 135.658}
set_clock_uncertainty -setup 0.25  [get_clocks UART_CLK_RX]
set_clock_uncertainty -hold 0.1  [get_clocks UART_CLK_RX]
set_clock_transition -min -rise 0.1 [get_clocks UART_CLK_RX]
set_clock_transition -max -rise 0.1 [get_clocks UART_CLK_RX]
create_clock [get_ports scan_clk]  -name SCAN_CLK  -period 100  -waveform {0 50}
set_clock_uncertainty -setup 0.25  [get_clocks SCAN_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks SCAN_CLK]
group_path -name INOUT  -from [list [get_ports RST] [get_ports TX_CLK] [get_ports RX_CLK] [get_ports RX_IN_S] [get_ports {TX_IN_P[7]}] [get_ports {TX_IN_P[6]}] [get_ports {TX_IN_P[5]}] [get_ports {TX_IN_P[4]}] [get_ports {TX_IN_P[3]}] [get_ports {TX_IN_P[2]}] [get_ports {TX_IN_P[1]}] [get_ports {TX_IN_P[0]}] [get_ports TX_IN_V] [get_ports {Prescale[5]}] [get_ports {Prescale[4]}] [get_ports {Prescale[3]}] [get_ports {Prescale[2]}] [get_ports {Prescale[1]}] [get_ports {Prescale[0]}] [get_ports parity_enable] [get_ports parity_type] [get_ports SI] [get_ports SE] [get_ports scan_clk] [get_ports scan_rst] [get_ports test_mode]]  -to [list [get_ports {RX_OUT_P[7]}] [get_ports {RX_OUT_P[6]}] [get_ports {RX_OUT_P[5]}] [get_ports {RX_OUT_P[4]}] [get_ports {RX_OUT_P[3]}] [get_ports {RX_OUT_P[2]}] [get_ports {RX_OUT_P[1]}] [get_ports {RX_OUT_P[0]}] [get_ports RX_OUT_V] [get_ports TX_OUT_S] [get_ports TX_OUT_V] [get_ports parity_error] [get_ports framing_error] [get_ports SO]]
group_path -name INREG  -from [list [get_ports RST] [get_ports TX_CLK] [get_ports RX_CLK] [get_ports RX_IN_S] [get_ports {TX_IN_P[7]}] [get_ports {TX_IN_P[6]}] [get_ports {TX_IN_P[5]}] [get_ports {TX_IN_P[4]}] [get_ports {TX_IN_P[3]}] [get_ports {TX_IN_P[2]}] [get_ports {TX_IN_P[1]}] [get_ports {TX_IN_P[0]}] [get_ports TX_IN_V] [get_ports {Prescale[5]}] [get_ports {Prescale[4]}] [get_ports {Prescale[3]}] [get_ports {Prescale[2]}] [get_ports {Prescale[1]}] [get_ports {Prescale[0]}] [get_ports parity_enable] [get_ports parity_type] [get_ports SI] [get_ports SE] [get_ports scan_clk] [get_ports scan_rst] [get_ports test_mode]]
group_path -name REGOUT  -to [list [get_ports {RX_OUT_P[7]}] [get_ports {RX_OUT_P[6]}] [get_ports {RX_OUT_P[5]}] [get_ports {RX_OUT_P[4]}] [get_ports {RX_OUT_P[3]}] [get_ports {RX_OUT_P[2]}] [get_ports {RX_OUT_P[1]}] [get_ports {RX_OUT_P[0]}] [get_ports RX_OUT_V] [get_ports TX_OUT_S] [get_ports TX_OUT_V] [get_ports parity_error] [get_ports framing_error] [get_ports SO]]
set_false_path   -from [get_clocks UART_CLK_TX]  -to [get_clocks UART_CLK_RX]
set_false_path   -from [get_clocks UART_CLK_RX]  -to [get_clocks UART_CLK_TX]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports RX_IN_S]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {TX_IN_P[7]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {TX_IN_P[6]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {TX_IN_P[5]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {TX_IN_P[4]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {TX_IN_P[3]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {TX_IN_P[2]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {TX_IN_P[1]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {TX_IN_P[0]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports TX_IN_V]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {Prescale[5]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {Prescale[4]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {Prescale[3]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {Prescale[2]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {Prescale[1]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports {Prescale[0]}]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports parity_enable]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports parity_type]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports SI]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports SE]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports scan_rst]
set_input_delay -clock UART_CLK_RX  81.3948  [get_ports test_mode]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports {RX_OUT_P[7]}]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports {RX_OUT_P[6]}]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports {RX_OUT_P[5]}]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports {RX_OUT_P[4]}]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports {RX_OUT_P[3]}]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports {RX_OUT_P[2]}]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports {RX_OUT_P[1]}]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports {RX_OUT_P[0]}]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports RX_OUT_V]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports TX_OUT_S]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports TX_OUT_V]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports parity_error]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports framing_error]
set_output_delay -clock UART_CLK_RX  81.3948  [get_ports SO]
set_clock_groups -asynchronous -name UART_CLK_TX_1 -group [list [get_clocks UART_CLK_TX] [get_clocks UART_CLK_RX]] -group [get_clocks SCAN_CLK]