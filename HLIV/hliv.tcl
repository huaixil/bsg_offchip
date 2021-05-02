analyze -sva  \
    top.v \
    bsg_link_ddr_downstream.sv2v.v\
    bsg_link_ddr_upstream.sv2v.v

elaborate -top bsg_top
clock core_clk
reset rst