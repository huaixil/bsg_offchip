analyze -sva  \
  bsg_link_ddr_upstream.sv2v.v \
  ila.v \
  wrapper.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| (m1.io_valid_r_o[0] == __ILA_SO_child_valid)}
assume -name variable_map_assume_2 {(~ __START__ )|| (m1.io_data_r_o[7:0] == __ILA_SO_io_data_out_ch0)}
assume -name variable_map_assume_3 {(~ __START__ )|| (m1.io_data_r_o[15:8] == __ILA_SO_io_data_out_ch1)}
assume -name variable_map_assume_4 {(~ __START__ )|| (m1.io_valid_r_o[0] == __ILA_SO_io_valid_out)}
assume -name additional_mapping_control_assume5 {__ILA_I_io_ready == m1.ch_0_sso.io_credit_avail}
assume -name issue_decode6 {(~ __START__) || (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__)}
assume -name issue_valid7 {(~ __START__) || (__ILA_BSG_UPSTREAM_valid__)}
assert -name variable_map_assert0 {(~ __IEND__) || (m1.io_valid_r_o[0] == __ILA_SO_child_valid)}
