###################################################################

# Created by write_sdc on Fri May 31 16:45:45 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA
set_max_area 0
create_clock -name clk  -period 2.0e+08  -waveform {0 1.0e+08}
set_input_delay -clock clk  0  [get_ports {inp[23]}]
set_input_delay -clock clk  0  [get_ports {inp[22]}]
set_input_delay -clock clk  0  [get_ports {inp[21]}]
set_input_delay -clock clk  0  [get_ports {inp[20]}]
set_input_delay -clock clk  0  [get_ports {inp[19]}]
set_input_delay -clock clk  0  [get_ports {inp[18]}]
set_input_delay -clock clk  0  [get_ports {inp[17]}]
set_input_delay -clock clk  0  [get_ports {inp[16]}]
set_input_delay -clock clk  0  [get_ports {inp[15]}]
set_input_delay -clock clk  0  [get_ports {inp[14]}]
set_input_delay -clock clk  0  [get_ports {inp[13]}]
set_input_delay -clock clk  0  [get_ports {inp[12]}]
set_input_delay -clock clk  0  [get_ports {inp[11]}]
set_input_delay -clock clk  0  [get_ports {inp[10]}]
set_input_delay -clock clk  0  [get_ports {inp[9]}]
set_input_delay -clock clk  0  [get_ports {inp[8]}]
set_input_delay -clock clk  0  [get_ports {inp[7]}]
set_input_delay -clock clk  0  [get_ports {inp[6]}]
set_input_delay -clock clk  0  [get_ports {inp[5]}]
set_input_delay -clock clk  0  [get_ports {inp[4]}]
set_input_delay -clock clk  0  [get_ports {inp[3]}]
set_input_delay -clock clk  0  [get_ports {inp[2]}]
set_input_delay -clock clk  0  [get_ports {inp[1]}]
set_input_delay -clock clk  0  [get_ports {inp[0]}]
set_output_delay -clock clk  0  [get_ports {out[1]}]
set_output_delay -clock clk  0  [get_ports {out[0]}]
