analyze -sva  \
    top.v \
    bsg_link_ddr_downstream.sv2v.v\
    bsg_link_ddr_upstream.sv2v.v

elaborate -top bsg_top
clock base_clk;
clock base_clk io_clk 2 1 -both_edges;
clock base_clk core_clk 4 1;
clock base_clk edge_clk_i 4 4;
reset -expression {rst} {:global_formal_reset} -non_resettable_regs {0};

assume {~core_yumi_i || valid_o}
assume {~valid_o || core_yumi_i}

assert {##10 edge_clk[0] == edge_clk_i}
assert {edge_clk[0] == edge_clk[1]}
assert {@(posedge core_clk) (valid_i & upstream.core_ready_o) |=> ##[0:$] valid_o}