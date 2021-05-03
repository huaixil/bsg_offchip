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
assume -name variable_map_assume_1 {(~ __START__ )|| (__m0__)}
assume -name variable_map_assume_2 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume_3 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume_4 {(~ __START__ )|| ((~ ((__START__) ) || (__m3__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m4__)))}
assume -name variable_map_assume_5 {(~ __START__ )|| (m1.upstream.io_data_r_o[7:0] == __ILA_SO_io_data_out_ch0)}
assume -name variable_map_assume_6 {(~ __START__ )|| (m1.upstream.io_data_r_o[15:8] == __ILA_SO_io_data_out_ch1)}
assume -name variable_map_assume_7 {(~ __START__ )|| (m1.upstream.io_valid_r_o[0] == __ILA_SO_io_valid_out)}
assume -name variable_map_assume_8 {(~ __START__ )|| (__m5__)}
assume -name rfassumptions9 {m1.upstream.core_data_i == data_i}
assume -name rfassumptions10 {m1.upstream.core_valid_i == valid_i}
assume -name rfassumptions11 {($rose(m1.upstream.token_clk_i[0]) | $fell(m1.upstream.token_clk_i[0])) && __ILA_I_io_token}
assume -name issue_decode12 {(~ __START__) || (__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__)}
assume -name issue_valid13 {(~ __START__) || (__ILA_BSG_UPSTREAM_valid__)}
assume -name post_value_holder14 {(~((__START__ || __STARTED__) && m1.upstream.out_piso.shift_ctr_r == 0) || ((data0) == (m1.upstream.out_piso.data_o)))}
assume -name post_value_holder15 {(~(__CYCLE_CNT__ == 1) || ((finish_cnt_holder) == (finish_counter)))}
assert -name variable_map_assert0 {(~ __IEND__) || (__m6__)}
assert -name variable_map_assert1 {(~ __IEND__) || (__m7__)}
assert -name variable_map_assert2 {(~ __IEND__) || (__m8__)}
assert -name variable_map_assert3 {(~ __IEND__) || ((~ ((__START__) ) || (__m9__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m10__)))}
