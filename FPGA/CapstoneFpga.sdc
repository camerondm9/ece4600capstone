
create_clock -period 12 -name {int_osc} {int_osc}
derive_pll_clocks -create_base_clocks -use_net_name
derive_clock_uncertainty
