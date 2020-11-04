analyze -sva  \
  bsg_link_ddr_downstream.sv2v.v \
  ila.v \
  wrapper.v \
   absmem.v

elaborate -top wrapper
clock clk
reset rst
assume -name noreset0 { (~__RESETED__) || (dummy_reset == 0) }
assume -name variable_map_assume_1 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_2 {(~ __START__ )|| (`true)}
assume -name variable_map_assume_3 {(~ __START__ )|| (__m0__)}
assume -name variable_map_assume_4 {(~ __START__ )|| (__m1__)}
assume -name variable_map_assume_5 {(~ __START__ )|| (__m2__)}
assume -name variable_map_assume_6 {(~ __START__ )|| (__m3__)}
assume -name variable_map_assume_7 {(~ __START__ )|| (__m4__)}
assume -name variable_map_assume_8 {(~ __START__ )|| ((~ ((__START__) ) || (m1.ch_0_iddr_data.data_p_r[7:0] == __ILA_SO_io_data) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m5__)))}
assume -name variable_map_assume_9 {(~ __START__ )|| (__m6__)}
assume -name variable_map_assume_10 {(~ __START__ )|| ((~ ((__START__) ) || (__m7__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m8__)))}
assume -name variable_map_assume_11 {(~ __START__ )|| (__m9__)}
assume -name variable_map_assume_12 {(~ __START__ )|| ((~ ((__START__) ) || (__m10__) )&&( ~ (~(__START__)&&(__IEND__) ) || (__m11__)))}
assume -name variable_map_assume_13 {(~ __START__ )|| ((~ ((__START__) ) || (__m12__) )&&( ~ (~(__START__)&&(__IEND__) ) || (`true)))}
assume -name additional_mapping_control_assume14 {m1.io_valid_i == {__ILA_I_io_valid_in, __ILA_I_io_valid_in}}
assume -name additional_mapping_control_assume15 {__ILA_I_core_ready == m1.ch_0_downstream.core_async_fifo_ready_li}
assume -name additional_mapping_control_assume16 {m1.ch_0_downstream.baf.r_ptr_binary_r ==  __MEM_buffer_0_raddr}
assume -name additional_mapping_control_assume17 {m1.ch_0_downstream.baf.w_ptr_binary_r ==  __MEM_buffer_0_waddr}
assume -name additional_mapping_control_assume18 {m1.ch_0_downstream.baf.w_data_i == __MEM_buffer_0_wdata}
assume -name additional_mapping_control_assume19 {m1.ch_0_downstream.baf.r_data_o == mi0.ila_rdata}
assume -name rfassumptions20 {~io_valid || __ILA_I_core_clk}
assume -name issue_decode21 {(~ __START__) || (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__)}
assume -name issue_valid22 {(~ __START__) || (__ILA_BSG_DOWNSTREAM_ch_valid__)}
assume -name post_value_holder23 {(~(__CYCLE_CNT__ == 1) || ((io_data_commit) == (m1.ch_0_iddr_data.data_p_r[7:0])))}
assume -name post_value_holder24 {(~(__CYCLE_CNT__ == 1) || ((io_valid_commit) == (io_valid)))}
assume -name post_value_holder25 {(~(__CYCLE_CNT__ == 3) || ((wptr_decode) == (m1.ch_0_downstream.baf.w_ptr_binary_r)))}
assume -name absmem26 {mi0_read_assume_true==1'b1}
assert -name variable_map_assert0 {(~ __IEND__) || (`true)}
assert -name variable_map_assert1 {(~ __IEND__) || (__m13__)}
assert -name variable_map_assert2 {(~ __IEND__) || (__m14__)}
assert -name variable_map_assert3 {(~ __IEND__) || (__m15__)}
