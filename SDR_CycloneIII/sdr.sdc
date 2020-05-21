
#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clock_in1} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clock_in1}]
create_clock -name {clock_in2} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clock_in2}]

#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks

#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************
set_false_path -from [get_clocks {pll0|altpll_component|auto_generated|pll1|clk[0]}] -to [get_clocks {pll0|altpll_component|auto_generated|pll1|clk[1]}];
set_false_path -from [get_clocks {pll0|altpll_component|auto_generated|pll1|clk[1]}] -to [get_clocks {pll0|altpll_component|auto_generated|pll1|clk[0]}]
set_false_path -from [get_clocks {pll0|altpll_component|auto_generated|pll1|clk[2]}] -to [get_clocks {pll0|altpll_component|auto_generated|pll1|clk[0]}]
#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************
