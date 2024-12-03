
#Owner : Mohamed Ayman Elsayed
#Description : Constraints Script using Tcl 
#Date : 6 Oct 2022
 
# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

#################### Define Design Constraints #########################

set CLK1_NAME Master_REF_CLK
set REF_CLK_PER	20
set CLK2_NAME Master_UART_CLK
set UART_PER 104166
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_RISE 0.05
set CLK_FALL 0.05
set in1_delay  [expr 0.2*$REF_CLK_PER]
set out1_delay [expr 0.2*$REF_CLK_PER]
set in2_delay  [expr 0.2*$UART_PER]
set out2_delay [expr 0.2*$UART_PER]

# Clocks Frequency #

create_clock -name $CLK1_NAME -period $REF_CLK_PER -waveform "0 [expr $REF_CLK_PER/2]" [get_ports REF_CLK]
create_clock -name $CLK2_NAME -period $UART_PER -waveform "0 [expr $UART_PER/2]" [get_ports UART_CLK]
create_generated_clock -master_clock $CLK2_NAME -source [ get_ports UART_CLK ] -name "TX_clk" -divide_by 8 [get_ports UART_I0/TX_CLK]
create_generated_clock -master_clock $CLK1_NAME -source [ get_ports REF_CLK ] -name "ALU_clk" -divide_by 1 [get_ports ALU_I0/CLK]

# Clock uncertainty #

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK1_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK1_NAME]

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks $CLK2_NAME]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks $CLK2_NAME]

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "TX_clk"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks "TX_clk"]

set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks "ALU_clk"]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks "ALU_clk"]

# Clock transition #

set_clock_transition -rise $CLK_RISE  [get_clocks $CLK1_NAME]
set_clock_transition -fall $CLK_FALL  [get_clocks $CLK1_NAME]

set_clock_transition -rise $CLK_RISE  [get_clocks $CLK2_NAME]
set_clock_transition -fall $CLK_FALL  [get_clocks $CLK2_NAME]

set_clock_transition -rise $CLK_RISE  [get_clocks "TX_clk"]
set_clock_transition -fall $CLK_FALL  [get_clocks "TX_clk"]

set_clock_transition -rise $CLK_RISE  [get_clocks "ALU_clk"]
set_clock_transition -fall $CLK_FALL  [get_clocks "ALU_clk"]

# Clock Grouping #

set_clock_groups -asynchronous -group [get_clocks "$CLK1_NAME ALU_clk"] -group [get_clocks "$CLK2_NAME TX_clk"] 

# Input delays #

set_input_delay $in2_delay -clock $CLK2_NAME [get_port RX_IN]

# Output delays #

set_output_delay $out2_delay -clock TX_clk [get_port TX_OUT]
set_output_delay $out2_delay -clock $CLK2_NAME [get_port par_err]
set_output_delay $out2_delay -clock $CLK2_NAME [get_port stp_err]

# Buffer driving cell #

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port RX_IN]

# load of 50 pf on all output ports #

set_load 0.5 [get_port TX_OUT]
set_load 0.5 [get_port par_err]
set_load 0.5 [get_port stp_err]

# dont_touch attribute #

#set_dont_touch_network {CLK RST}

# operation condition #

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

# wireload model #
 
#set_wire_load_model -name tsmc13_wl30 -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c

