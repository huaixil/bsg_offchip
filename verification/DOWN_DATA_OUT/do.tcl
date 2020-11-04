analyze -sva  \
  bsg_link_ddr_downstream.sv2v.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_2 {(~ __START__ )|| (m1.in_sipof.data_o[16:0] == __ILA_SO_core_data)}
assume -name variable_map_assume_3 {(~ __START__ )|| (__m0__)}
assume -name variable_map_assume_4 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume_5 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume_6 {(~ __START__ )|| (__m3__)}
assume -name variable_map_assume_7 {(~ __START__ )|| (__m4__)}
assume -name variable_map_assume_8 {(~ __START__ )|| (__m5__)}
assume -name variable_map_assume_9 {(~ __START__ )|| (m1.in_sipof.fifo_valid_lo[0] == __ILA_SO_phase)}
assume -name variable_map_assume_10 {(~ __START__ )|| (__m6__)}
assume -name variable_map_assume_11 {(~ __START__ )|| (__m7__)}
assume -name rfassumptions12 {m1.core_clk_i == m1.io_clk_i}
assume -name issue_decode13 {(~ __START__) || (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__)}
assume -name issue_valid14 {(~ __START__) || (__ILA_BSG_DOWNSTREAM_ch_valid__)}
assert -name variable_map_assert0 {(~ __IEND__) || (m1.in_sipof.data_o[16:0] == __ILA_SO_core_data)}
assert -name variable_map_assert1 {(~ __IEND__) || (__m8__)}
assert -name variable_map_assert2 {(~ __IEND__) || (__m9__)}
assert -name variable_map_assert3 {(~ __IEND__) || (m1.in_sipof.fifo_valid_lo[0] == __ILA_SO_phase)}
assert -name variable_map_assert4 {(~ __IEND__) || (__m10__)}
