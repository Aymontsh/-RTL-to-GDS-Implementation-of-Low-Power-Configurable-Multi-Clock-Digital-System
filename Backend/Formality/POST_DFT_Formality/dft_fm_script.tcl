
#Owner : Mohamed Ayman Elsayed
#Description : Formal Verification using Tcl 
#Date : 6 Oct 2022

############################## Formality Setup File ##############################


set TTLIB "/home/IC/System/std_cells/scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set SSLIB "/home/IC/System/std_cells/scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set FFLIB "/home/IC/System/std_cells/scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

set synopsys_auto_setup true

set_svf "/home/IC/System/dft/SYS_TOP.svf"

## Read Reference Design Files

read_db -container Ref [list $SSLIB $TTLIB $FFLIB]

read_verilog -container Ref "/home/IC/System/rtl/ALU.v"
read_verilog -container Ref "/home/IC/System/rtl/BIT_SYNC.v"
read_verilog -container Ref "/home/IC/System/rtl/ClkDiv.v"
read_verilog -container Ref "/home/IC/System/rtl/Clock_Gating.v"
read_verilog -container Ref "/home/IC/System/rtl/Multi_Flip_Flop.v"
read_verilog -container Ref "/home/IC/System/rtl/DATA_SYNC.v"
read_verilog -container Ref "/home/IC/System/rtl/RegFile.v"
read_verilog -container Ref "/home/IC/System/rtl/RST_SYNC.v"
read_verilog -container Ref "/home/IC/System/rtl/SYS_CTRL_RX.v"
read_verilog -container Ref "/home/IC/System/rtl/SYS_CTRL_TX.v"
read_verilog -container Ref "/home/IC/System/rtl/SYS_CTRL.v"
read_verilog -container Ref "/home/IC/System/rtl/data_sampling.v"
read_verilog -container Ref "/home/IC/System/rtl/deserializer.v"
read_verilog -container Ref "/home/IC/System/rtl/edge_bit_counter.v"
read_verilog -container Ref "/home/IC/System/rtl/parity_check.v"
read_verilog -container Ref "/home/IC/System/rtl/RX_FSM.v"
read_verilog -container Ref "/home/IC/System/rtl/stop_check.v"
read_verilog -container Ref "/home/IC/System/rtl/strt_check.v"
read_verilog -container Ref "/home/IC/System/rtl/UART_RX.v"
read_verilog -container Ref "/home/IC/System/rtl/FSM.v"
read_verilog -container Ref "/home/IC/System/rtl/MUX.v"
read_verilog -container Ref "/home/IC/System/rtl/Parity_Calc.v"
read_verilog -container Ref "/home/IC/System/rtl/serializer.v"
read_verilog -container Ref "/home/IC/System/rtl/UART_TX.v"
read_verilog -container Ref "/home/IC/System/rtl/UART.v"
read_verilog -container Ref "/home/IC/System/rtl/mux2X1.v"
read_verilog -container Ref "/home/IC/System/rtl/SYS_TOP.v"

## set the top Reference Design 
set_reference_design SYS_TOP
set_top SYS_TOP

## Read Implementation technology libraries

read_db -container Imp [list $SSLIB $TTLIB $FFLIB]

## Read Implementation Design Files

read_verilog -container Imp -netlist "/home/IC/System/dft/SYS_TOP.v"

## set the top Implementation Design

set_implementation_design SYS_TOP
set_top SYS_TOP

############################### Don't verify #################################

#scan in

set_dont_verify_points -type port Ref:/WORK/*/SI
set_dont_verify_points -type port Imp:/WORK/*/SI

#scan_out

set_dont_verify_points -type port Ref:/WORK/*/SO
set_dont_verify_points -type port Imp:/WORK/*/SO

############################### contants #####################################

#test_mode
set_constant Ref:/WORK/*/test_mode 0
set_constant Imp:/WORK/*/test_mode 0

#scan_enable
set_constant Ref:/WORK/*/SE 0
set_constant Imp:/WORK/*/SE 0

## matching Compare points

match

## verify

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

#Reports
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"


start_gui
