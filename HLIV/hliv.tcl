analyze -sva  \
    top.v \
    bsg_link_ddr_downstream.sv2v.v\
    bsg_link_ddr_upstream.sv2v.v

elaborate -top bsg_top
clock -clear; clock io_clk -both_edges; clock io_clk core_clk 2 1
reset -expression {rst} {:global_formal_reset} -non_resettable_regs {0};

assume {~core_yumi_i || valid_o}