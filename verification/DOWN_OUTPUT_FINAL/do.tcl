analyze -sva  \
  bsg_link_ddr_upstream.sv2v.v \
  bsg_link_ddr_downstream.sv2v.v \
  top.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_2 {(~ __START__ )|| ((m1.downstream.in_sipof.fifo_valid_lo[0] & m1.downstream.in_sipof.fifo_valid_li[1] & m1.downstream.in_sipof.fifos_1_onefifo.ready_o) == __ILA_SO_child_valid)}
assume -name variable_map_assume_3 {(~ __START__ )|| (m1.downstream.in_sipof.fifos_0_twofifo.data_o[15:0] == __ILA_SO_core_data0)}
assume -name variable_map_assume_4 {(~ __START__ )|| (m1.downstream.in_sipof.data_i[15:0] == __ILA_SO_core_data1)}
assume -name variable_map_assume_5 {(~ __START__ )|| ({m1.downstream.core_data_o[47:32], m1.downstream.core_data_o[15:0]} == __ILA_SO_core_data_out)}
assume -name variable_map_assume_6 {(~ __START__ )|| (__m0__)}
assume -name variable_map_assume_7 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_8 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_9 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume_10 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_11 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_12 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_13 {(~ __START__ )|| (`true)}
assume -name additional_mapping_control_assume14 {m1.downstream.io_data_i[7:0] == __ILA_I_io_data_in}
assume -name additional_mapping_control_assume15 {m1.downstream.io_valid_i == {__ILA_I_io_valid_in, __ILA_I_io_valid_in}}
assume -name additional_mapping_control_assume16 {__ILA_I_core_ready == m1.downstream.core_yumi_i}
assume -name rfassumptions17 {~m1.downstream.core_yumi_i || m1.downstream.core_valid_o}
assume -name issue_decode18 {(~ __START__) || (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__)}
assume -name issue_valid19 {(~ __START__) || (__ILA_BSG_DOWNSTREAM_OUT_valid__)}
assert -name variable_map_assert0 {(~ __IEND__) || ((m1.downstream.in_sipof.fifo_valid_lo[0] & m1.downstream.in_sipof.fifo_valid_li[1] & m1.downstream.in_sipof.fifos_1_onefifo.ready_o) == __ILA_SO_child_valid)}
assert -name variable_map_assert1 {(~ __IEND__) || ({m1.downstream.core_data_o[47:32], m1.downstream.core_data_o[15:0]} == __ILA_SO_core_data_out)}
assert -name variable_map_assert2 {(~ __IEND__) || (__m2__)}
