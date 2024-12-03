###################################################################

# Created by write_sdc on Sat Oct 15 02:44:48 2022

###################################################################
set sdc_version 2.0

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_operating_conditions -max scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -max_library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -min scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c -min_library scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c
set_driving_cell -lib_cell BUFX2M -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -pin Y [get_ports RX_IN]
set_load -pin_load 0.5 [get_ports TX_OUT]
set_load -pin_load 0.5 [get_ports par_err]
set_load -pin_load 0.5 [get_ports stp_err]
create_clock [get_ports REF_CLK]  -name Master_REF_CLK  -period 20  -waveform {0 10}
set_clock_uncertainty -setup 0.2  [get_clocks Master_REF_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks Master_REF_CLK]
set_clock_transition -min -fall 0.05 [get_clocks Master_REF_CLK]
set_clock_transition -max -fall 0.05 [get_clocks Master_REF_CLK]
set_clock_transition -min -rise 0.05 [get_clocks Master_REF_CLK]
set_clock_transition -max -rise 0.05 [get_clocks Master_REF_CLK]
create_clock [get_ports UART_CLK]  -name Master_UART_CLK  -period 104166  -waveform {0 52083}
set_clock_uncertainty -setup 0.2  [get_clocks Master_UART_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks Master_UART_CLK]
set_clock_transition -min -fall 0.05 [get_clocks Master_UART_CLK]
set_clock_transition -max -fall 0.05 [get_clocks Master_UART_CLK]
set_clock_transition -min -rise 0.05 [get_clocks Master_UART_CLK]
set_clock_transition -max -rise 0.05 [get_clocks Master_UART_CLK]
create_generated_clock [get_pins UART_I0/TX_CLK]  -name TX_clk  -source [get_ports UART_CLK]  -master_clock Master_UART_CLK  -divide_by 8  -add
set_clock_uncertainty -setup 0.2  [get_clocks TX_clk]
set_clock_uncertainty -hold 0.1  [get_clocks TX_clk]
set_clock_transition -min -fall 0.05 [get_clocks TX_clk]
set_clock_transition -max -fall 0.05 [get_clocks TX_clk]
set_clock_transition -min -rise 0.05 [get_clocks TX_clk]
set_clock_transition -max -rise 0.05 [get_clocks TX_clk]
create_generated_clock [get_pins ALU_I0/CLK]  -name ALU_clk  -source [get_ports REF_CLK]  -master_clock Master_REF_CLK  -divide_by 1  -add
set_clock_uncertainty -setup 0.2  [get_clocks ALU_clk]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_clk]
set_clock_transition -min -fall 0.05 [get_clocks ALU_clk]
set_clock_transition -max -fall 0.05 [get_clocks ALU_clk]
set_clock_transition -min -rise 0.05 [get_clocks ALU_clk]
set_clock_transition -max -rise 0.05 [get_clocks ALU_clk]
set_input_delay -clock Master_UART_CLK  20833.2  [get_ports RX_IN]
set_output_delay -clock TX_clk  20833.2  [get_ports TX_OUT]
set_output_delay -clock Master_UART_CLK  20833.2  [get_ports par_err]
set_output_delay -clock Master_UART_CLK  20833.2  [get_ports stp_err]
set_clock_groups -asynchronous -name Master_REF_CLK_1 -group [list [get_clocks Master_REF_CLK] [get_clocks ALU_clk]] -group [list [get_clocks Master_UART_CLK] [get_clocks TX_clk]]

set_case_analysis 0 test_mode
set_case_analysis 0 SE
