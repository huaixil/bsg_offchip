analyze -sva  \
    top.v \
    bsg_link_ddr_downstream.sv2v.v\
    bsg_link_ddr_upstream.sv2v.v

elaborate -top top
clock clk
reset rst