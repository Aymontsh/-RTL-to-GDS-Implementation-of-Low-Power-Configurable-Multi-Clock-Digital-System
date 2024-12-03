
#Owner : Mohamed Ayman Elsayed
#Description : Synthesis Script using Tcl 
#Date : 6 Oct 2022

########################### Define Top Module ############################
                                                   
set top_module SYS_TOP

##################### Define Working Library Directory ######################
                                                   
define_design_lib work -path ./work

set_svf SYS_TOP.svf

################## Design Compiler Library Files #setup ######################

puts "###########################################"
puts "#      #setting Design Libraries           #"
puts "###########################################"

#Add the path of the libraries to the search_path variable
lappend search_path /home/IC/System/std_cells
lappend search_path /home/IC/System/rtl

set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

## Standard Cell libraries 
set target_library [list $SSLIB $TTLIB $FFLIB]

## Standard Cell & Hard Macros libraries 
set link_library [list * $SSLIB $TTLIB $FFLIB]  

######################## Reading RTL Files #################################

puts "###########################################"
puts "#             Reading RTL Files           #"
puts "###########################################"

read_file -format verilog ALU.v
read_file -format verilog BIT_SYNC.v
read_file -format verilog ClkDiv.v
read_file -format verilog Clock_Gating.v
read_file -format verilog Multi_Flip_Flop.v
read_file -format verilog DATA_SYNC.v
read_file -format verilog RegFile.v
read_file -format verilog RST_SYNC.v
read_file -format verilog SYS_CTRL_RX.v
read_file -format verilog SYS_CTRL_TX.v
read_file -format verilog SYS_CTRL.v
read_file -format verilog data_sampling.v
read_file -format verilog deserializer.v
read_file -format verilog edge_bit_counter.v
read_file -format verilog parity_check.v
read_file -format verilog RX_FSM.v
read_file -format verilog stop_check.v
read_file -format verilog strt_check.v
read_file -format verilog UART_RX.v
read_file -format verilog FSM.v
read_file -format verilog MUX.v
read_file -format verilog Parity_Calc.v
read_file -format verilog serializer.v
read_file -format verilog UART_TX.v
read_file -format verilog UART.v
read_file -format verilog SYS_TOP.v

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

#################### Define Design Constraints #########################
puts "###############################################"
puts "############ Design Constraints #### ##########"
puts "###############################################"


source ./cons.tcl


#################### Archirecture Scan Chains #########################
puts "###############################################"
puts "############ Configure scan chains ############"
puts "###############################################"


###################### Mapping and optimization ########################
puts "###############################################"
puts "########## Mapping & Optimization #############"
puts "###############################################"


compile 


#############################################################################
# Write out Design after initial compile
#############################################################################

#Avoid Writing assign statements in the netlist
change_name -hier -rule verilog
write_file -format verilog -hierarchy -output SYS_TOP.v

####################### reporting ##########################################

report_area -hierarchy > Area.rpt
report_power -hierarchy > Power.rpt
report_timing -max_paths 10 -delay_type min > hold.rpt
report_timing -max_paths 10 -delay_type max > setup.rpt
report_clock -attributes > clocks.rpt
report_constraint -all_violators > constraints.rpt
report_port > ports.rpt

################# starting graphical user interface #######################

#gui_start

#exit
