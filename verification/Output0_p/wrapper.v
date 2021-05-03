/* PREHEADER */

`define true  1'b1

`define false 1'b0



/* END OF PREHEADER */
module wrapper(
__ILA_I_core_clk,
__ILA_I_core_data_in,
__ILA_I_core_valid_in,
__ILA_I_io_token,
__ISSUE__,
__VLG_I_base_clk,
__VLG_I_core_yumi_i,
__cnt_oddr_init__,
clk,
dummy_reset,
rst,
__ILA_SO_child_valid,
__ILA_SO_commit,
__ILA_SO_counter,
__ILA_SO_data_cycle_0,
__ILA_SO_data_cycle_1,
__ILA_SO_data_temp,
__ILA_SO_finish_cnt,
__ILA_SO_io_data_out_ch0,
__ILA_SO_io_data_out_ch1,
__ILA_SO_io_valid_out,
__ILA_SO_sent_cnt,
__m0__,
__m10__,
__m11__,
__m12__,
__m1__,
__m2__,
__m3__,
__m4__,
__m5__,
__m6__,
__m7__,
__m8__,
__m9__,
data_o,
valid_o,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__,
cnt_oddr,
sent_counter,
finish_counter,
data,
commit,
token_clk_i
);
input            __ILA_I_core_clk;
input     [63:0] __ILA_I_core_data_in;
input            __ILA_I_core_valid_in;
input            __ILA_I_io_token;
input            __ISSUE__;
input            __VLG_I_base_clk;
input            __VLG_I_core_yumi_i;
input            __cnt_oddr_init__;
input            clk;
input            dummy_reset;
input            rst;
output            __ILA_SO_child_valid;
output            __ILA_SO_commit;
output            __ILA_SO_counter;
output     [31:0] __ILA_SO_data_cycle_0;
output     [31:0] __ILA_SO_data_cycle_1;
output     [63:0] __ILA_SO_data_temp;
output      [6:0] __ILA_SO_finish_cnt;
output      [7:0] __ILA_SO_io_data_out_ch0;
output      [7:0] __ILA_SO_io_data_out_ch1;
output            __ILA_SO_io_valid_out;
output      [6:0] __ILA_SO_sent_cnt;
output            __m0__;
output            __m10__;
output            __m11__;
output            __m12__;
output            __m1__;
output            __m2__;
output            __m3__;
output            __m4__;
output            __m5__;
output            __m6__;
output            __m7__;
output            __m8__;
output            __m9__;
output     [63:0] data_o;
output            valid_o;
output reg      [3:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
output reg            cnt_oddr;
output reg      [6:0] sent_counter;
output reg      [6:0] finish_counter;
output reg     [31:0] data;
output reg            commit;
output reg            token_clk_i;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__;
(* keep *) wire            __ILA_BSG_UPSTREAM_OUT_valid__;
(* keep *) wire            __ILA_I_core_clk;
(* keep *) wire     [63:0] __ILA_I_core_data_in;
(* keep *) wire            __ILA_I_core_valid_in;
(* keep *) wire            __ILA_I_io_token;
(* keep *) wire            __ILA_SO_child_valid;
(* keep *) wire            __ILA_SO_commit;
(* keep *) wire            __ILA_SO_counter;
(* keep *) wire     [31:0] __ILA_SO_data_cycle_0;
(* keep *) wire     [31:0] __ILA_SO_data_cycle_1;
(* keep *) wire     [63:0] __ILA_SO_data_temp;
(* keep *) wire      [6:0] __ILA_SO_finish_cnt;
(* keep *) wire      [7:0] __ILA_SO_io_data_out_ch0;
(* keep *) wire      [7:0] __ILA_SO_io_data_out_ch1;
(* keep *) wire            __ILA_SO_io_valid_out;
(* keep *) wire      [6:0] __ILA_SO_sent_cnt;
(* keep *) wire            __ISSUE__;
(* keep *) wire            __VLG_I_base_clk;
(* keep *) wire            __VLG_I_core_yumi_i;
wire            __cnt_oddr_init__;
(* keep *) wire            __m0__;
(* keep *) wire            __m10__;
(* keep *) wire            __m11__;
(* keep *) wire            __m12__;
(* keep *) wire            __m1__;
(* keep *) wire            __m2__;
(* keep *) wire            __m3__;
(* keep *) wire            __m4__;
(* keep *) wire            __m5__;
(* keep *) wire            __m6__;
(* keep *) wire            __m7__;
(* keep *) wire            __m8__;
(* keep *) wire            __m9__;
wire            clk;
(* keep *) wire     [63:0] data_o;
(* keep *) wire            dummy_reset;
wire            rst;
(* keep *) wire            valid_o;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 7) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
end
always @(posedge clk) begin
if (rst) __START__ <= 0;
else if (__START__ || __STARTED__) __START__ <= 0;
else if (__ISSUE__) __START__ <= 1;
end
always @(posedge clk) begin
if (rst) __STARTED__ <= 0;
else if (__START__) __STARTED__ <= 1;
end
always @(posedge clk) begin
if (rst) __ENDED__ <= 0;
else if (__IEND__) __ENDED__ <= 1;
end
always @(posedge clk) begin
if (rst) __2ndENDED__ <= 1'b0;
else if (__ENDED__ && __EDCOND__ && ~__2ndENDED__)  __2ndENDED__ <= 1'b1; end
assign __2ndIEND__ = __ENDED__ && __EDCOND__ && ~__2ndENDED__ ;
always @(posedge clk) begin
if (rst) __RESETED__ <= 1;
end
assign __m0__ = m1.upstream.ch_0_sso.io_async_fifo_valid == __ILA_SO_child_valid ;
assign __m1__ = m1.upstream.ch_0_oddr_phy.ready_o == __ILA_SO_child_valid ;
assign __m2__ = commit == __ILA_SO_commit ;
assign __m3__ = m1.upstream.ch_0_oddr_phy.odd_r == __ILA_SO_counter ;
assign __m4__ = cnt_oddr == __ILA_SO_counter ;
assign __m5__ = data == __ILA_SO_data_cycle_0 ;
assign __m6__ = data == __ILA_SO_data_cycle_1 ;
assign __m7__ = finish_counter == __ILA_SO_finish_cnt ;
assign __m8__ = sent_counter == __ILA_SO_sent_cnt ;
assign __m9__ = commit == __ILA_SO_commit ;
assign __m10__ = m1.upstream.ch_0_oddr_phy.odd_r == __ILA_SO_counter ;
assign __m11__ = cnt_oddr == __ILA_SO_counter ;
assign __m12__ = sent_counter == __ILA_SO_sent_cnt ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd2)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd2)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign sent_counter = m1.upstream.ch_0_sso.pos_credit_ctr.r_counter_r[5:0] + m1.upstream.ch_0_sso.neg_credit_ctr.r_counter_r[5:0] - 7'b1000000;
assign finish_counter = {(m1.upstream.ch_0_sso.pos_credit_ctr.w_counter_binary_r_rsync[3:0] + m1.upstream.ch_1_sso.neg_credit_ctr.w_counter_binary_r_rsync[3:0]),3'b000};
assign data = {m1.upstream.ch_1_sso.io_async_fifo_data[15:0], 16'b0} + m1.upstream.ch_0_sso.io_async_fifo_data[15:0];

always @(posedge clk) begin 
    if(m1.upstream.ch_0_oddr_phy.data_i[8] && m1.upstream.ch_0_oddr_phy.ready_o)
        commit <= 1;
    else if (commit && m1.upstream.ch_0_oddr_phy.ready_o)
        commit <= 0;
end

always @(posedge __ILA_I_core_clk) begin
   if(rst) token_clk_i <= 0;
   else begin
       token_clk_i <= m1.upstream.token_clk_i[0];
   end
end


BSG_UPSTREAM_OUT__DOT__Output0_p m0 (
   .__START__(__START__),
   .clk(clk),
   .core_clk(__ILA_I_core_clk),
   .core_data_in(__ILA_I_core_data_in),
   .core_valid_in(__ILA_I_core_valid_in),
   .io_token(__ILA_I_io_token),
   .rst(rst),
   .__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__(__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__),
   .__ILA_BSG_UPSTREAM_OUT_valid__(__ILA_BSG_UPSTREAM_OUT_valid__),
   .io_valid_out(__ILA_SO_io_valid_out),
   .data_cycle_0(__ILA_SO_data_cycle_0),
   .data_cycle_1(__ILA_SO_data_cycle_1),
   .child_valid(__ILA_SO_child_valid),
   .sent_cnt(__ILA_SO_sent_cnt),
   .finish_cnt(__ILA_SO_finish_cnt),
   .io_data_out_ch0(__ILA_SO_io_data_out_ch0),
   .io_data_out_ch1(__ILA_SO_io_data_out_ch1),
   .counter(__ILA_SO_counter),
   .commit(__ILA_SO_commit),
   .data_temp(__ILA_SO_data_temp),
   .__COUNTER_start__n13()
);
bsg_top m1(
    .base_clk(__VLG_I_base_clk),
    .core_clk(__ILA_I_core_clk),
    .core_yumi_i(__VLG_I_core_yumi_i),
    .data_i(__ILA_I_core_data_in),
    .data_o(data_o),
    .edge_clk_i(__ILA_I_core_clk),
    .io_clk(clk),
    .rst(rst),
    .valid_i(__ILA_I_core_valid_in),
    .valid_o(valid_o)
);
always @(posedge clk) begin
   if(rst) begin
       cnt_oddr <= __cnt_oddr_init__;
   end
   else if(1) begin
       cnt_oddr <= cnt_oddr;
   end
end
endmodule
