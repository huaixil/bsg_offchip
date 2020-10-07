analyze -sva  \
  bsg_link_ddr_upstream.sv2v.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| (__m0__)}
assume -name variable_map_assume_2 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume_3 {(~ __START__ )|| (m1.io_data_r_o[7:0] == __ILA_SO_io_data_out_ch0)}
assume -name variable_map_assume_4 {(~ __START__ )|| (m1.io_data_r_o[15:8] == __ILA_SO_io_data_out_ch1)}
assume -name variable_map_assume_5 {(~ __START__ )|| (m1.io_valid_r_o[0] == __ILA_SO_io_valid_out)}
assume -name additional_mapping_control_assume6 {__ILA_I_core_data_in == m1.out_piso.fifo_data_lo}
assume -name additional_mapping_control_assume7 {__ILA_I_io_ready == m1.ch_0_sso.io_credit_avail}
assume -name additional_mapping_control_assume8 {m1.ch_0_sso.io_credit_avail & m1.ch_1_sso.io_credit_avail == 1}
assume -name issue_decode9 {(~ __START__) || (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__)}
assume -name issue_valid10 {(~ __START__) || (__ILA_BSG_UPSTREAM_OUT_valid__)}
assert -name variable_map_assert0 {(~ __IEND__) || (__m2__)}
assert -name variable_map_assert1 {(~ __IEND__) || (m1.io_data_r_o[7:0] == __ILA_SO_io_data_out_ch0)}
assert -name variable_map_assert2 {(~ __IEND__) || (m1.io_data_r_o[15:8] == __ILA_SO_io_data_out_ch1)}
assert -name variable_map_assert3 {(~ __IEND__) || (m1.io_valid_r_o[0] == __ILA_SO_io_valid_out)}
