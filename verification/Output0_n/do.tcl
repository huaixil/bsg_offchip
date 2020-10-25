analyze -sva  \
  bsg_link_ddr_upstream.sv2v.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| ((~ ((__START__) ) || (__m0__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m1__)))}
assume -name variable_map_assume_2 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume_3 {(~ __START__ )|| ((~ ((__START__) ) || (__m3__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m4__)))}
assume -name variable_map_assume_4 {(~ __START__ )|| (__m5__)}
assume -name variable_map_assume_5 {(~ __START__ )|| (__m6__)}
assume -name variable_map_assume_6 {(~ __START__ )|| ({m1.ch_1_oddr_phy.data_i_r[16:9], m1.ch_1_oddr_phy.data_i_r[7:0], 16'b0} + {m1.ch_0_oddr_phy.data_i_r[16:9], m1.ch_0_oddr_phy.data_i_r[7:0]} == __ILA_SO_data_temp)}
assume -name variable_map_assume_7 {(~ __START__ )|| (__m7__)}
assume -name variable_map_assume_8 {(~ __START__ )|| (m1.io_data_r_o[7:0] == __ILA_SO_io_data_out_ch0)}
assume -name variable_map_assume_9 {(~ __START__ )|| (m1.io_data_r_o[15:8] == __ILA_SO_io_data_out_ch1)}
assume -name variable_map_assume_10 {(~ __START__ )|| (m1.io_valid_r_o[0] == __ILA_SO_io_valid_out)}
assume -name variable_map_assume_11 {(~ __START__ )|| (__m8__)}
assume -name additional_mapping_control_assume12 {__ILA_I_io_token == io_token}
assume -name additional_mapping_control_assume13 {m1.token_clk_i[0] == token_clk_i && m1.token_clk_i[1] == token_clk_i}
assume -name issue_decode14 {(~ __START__) || (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__)}
assume -name issue_valid15 {(~ __START__) || (__ILA_BSG_UPSTREAM_OUT_valid__)}
assume -name post_value_holder16 {(~(__CYCLE_CNT__ == 1) || ((cnt_oddr) == (m1.ch_0_oddr_phy.odd_r)))}
assert -name variable_map_assert0 {(~ __IEND__) || ((~ ((__START__) ) || (__m9__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m10__)))}
assert -name variable_map_assert1 {(~ __IEND__) || (m1.io_data_r_o[7:0] == __ILA_SO_io_data_out_ch0)}
assert -name variable_map_assert2 {(~ __IEND__) || (m1.io_data_r_o[15:8] == __ILA_SO_io_data_out_ch1)}
assert -name variable_map_assert3 {(~ __IEND__) || (m1.io_valid_r_o[0] == __ILA_SO_io_valid_out)}
