/* PREHEADER */

`define true  1'b1

`define false 1'b0



/* END OF PREHEADER */
module wrapper(
__ILA_I_core_ready,
__ILA_I_io_data_in,
__ILA_I_io_valid_in,
__ISSUE__,
__VLG_I_core_clk_i,
__VLG_I_io_clk_i,
clk,
core_yumi_i,
dummy_reset,
io_link_reset_i,
rst,
__ILA_SO_core_data,
__ILA_SO_core_data_out,
__ILA_SO_core_valid_out,
__ILA_SO_full,
__ILA_SO_io_data,
__ILA_SO_io_token_out,
__ILA_SO_io_valid,
__ILA_SO_phase,
__ILA_SO_rptr,
__ILA_SO_wptr,
__m0__,
__m10__,
__m1__,
__m2__,
__m3__,
__m4__,
__m5__,
__m6__,
__m7__,
__m8__,
__m9__,
core_data_o,
core_token_r_o,
core_valid_o,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__,
io_valid
);
input            __ILA_I_core_ready;
input      [7:0] __ILA_I_io_data_in;
input            __ILA_I_io_valid_in;
input            __ISSUE__;
input            __VLG_I_core_clk_i;
input      [1:0] __VLG_I_io_clk_i;
input            clk;
input            core_yumi_i;
input            dummy_reset;
input      [1:0] io_link_reset_i;
input            rst;
output     [15:0] __ILA_SO_core_data;
output     [31:0] __ILA_SO_core_data_out;
output            __ILA_SO_core_valid_out;
output            __ILA_SO_full;
output      [7:0] __ILA_SO_io_data;
output            __ILA_SO_io_token_out;
output            __ILA_SO_io_valid;
output            __ILA_SO_phase;
output      [6:0] __ILA_SO_rptr;
output      [6:0] __ILA_SO_wptr;
output            __m0__;
output            __m10__;
output            __m1__;
output            __m2__;
output            __m3__;
output            __m4__;
output            __m5__;
output            __m6__;
output            __m7__;
output            __m8__;
output            __m9__;
output     [63:0] core_data_o;
output      [1:0] core_token_r_o;
output            core_valid_o;
output reg      [4:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
output reg            io_valid;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__;
(* keep *) wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
(* keep *) wire            __ILA_I_core_ready;
(* keep *) wire      [7:0] __ILA_I_io_data_in;
(* keep *) wire            __ILA_I_io_valid_in;
(* keep *) wire     [15:0] __ILA_SO_core_data;
(* keep *) wire     [31:0] __ILA_SO_core_data_out;
(* keep *) wire            __ILA_SO_core_valid_out;
(* keep *) wire            __ILA_SO_full;
(* keep *) wire      [7:0] __ILA_SO_io_data;
(* keep *) wire            __ILA_SO_io_token_out;
(* keep *) wire            __ILA_SO_io_valid;
(* keep *) wire            __ILA_SO_phase;
(* keep *) wire      [6:0] __ILA_SO_rptr;
(* keep *) wire      [6:0] __ILA_SO_wptr;
(* keep *) wire      [5:0] __IMEM_buffer_0_raddr;
(* keep *) wire     [15:0] __IMEM_buffer_0_rdata;
(* keep *) wire      [5:0] __IMEM_buffer_1_raddr;
(* keep *) wire     [15:0] __IMEM_buffer_1_rdata;
(* keep *) wire            __ISSUE__;
(* keep *) wire            __VLG_I_core_clk_i;
(* keep *) wire      [1:0] __VLG_I_io_clk_i;
(* keep *) wire            __m0__;
(* keep *) wire            __m10__;
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
(* keep *) wire     [63:0] core_data_o;
(* keep *) wire      [1:0] core_token_r_o;
(* keep *) wire            core_valid_o;
(* keep *) wire            core_yumi_i;
(* keep *) wire            dummy_reset;
(* keep *) wire      [1:0] io_link_reset_i;
wire            rst;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 15) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
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
assign __m0__ = m1.core_data_o == __ILA_SO_core_data_out ;
assign __m1__ = m1.core_valid_o == __ILA_SO_core_valid_out ;
assign __m2__ = m1.ch_0_downstream.baf.w_full_o == __ILA_SO_full ;
assign __m3__ = m1.ch_0_iddr_data == __ILA_SO_io_data ;
assign __m4__ = m1.core_token_r_o == __ILA_SO_io_token_out ;
assign __m5__ = io_valid == __ILA_SO_io_valid ;
assign __m6__ = m1.ch_0_downstream.baf.r_ptr_binary_r == __ILA_SO_rptr ;
assign __m7__ = m1.ch_0_downstream.baf.w_ptr_binary_r == __ILA_SO_wptr ;
assign __m8__ = m1.core_data_o == __ILA_SO_core_data_out ;
assign __m9__ = m1.ch_0_downstream.baf.w_full_o == __ILA_SO_full ;
assign __m10__ = m1.ch_0_downstream.baf.r_ptr_binary_r == __ILA_SO_rptr ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 5'd10)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 5'd10)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
always @(posedge clk) begin
   if(rst) begin io_valid <= 0;
   else if (~io_valid && io_valid_i) io_valid <= 1'b1;
   else io_valid = 1'b0;
end

/*XRAM*/

BSG_DOWNSTREAM_ch__DOT__DOWN_DATA_OUT m0 (
   .__START__(__START__),
   .clk(clk),
   .core_ready(__ILA_I_core_ready),
   .io_data_in(__ILA_I_io_data_in),
   .io_valid_in(__ILA_I_io_valid_in),
   .rst(rst),
   .__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__(__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__),
   .__ILA_BSG_DOWNSTREAM_ch_valid__(__ILA_BSG_DOWNSTREAM_ch_valid__),
   .buffer_data_n9(__IMEM_buffer_0_rdata),
   .buffer_addr_n8(__IMEM_buffer_0_raddr),
   .buffer_data_n20(__IMEM_buffer_1_rdata),
   .buffer_addr_n19(__IMEM_buffer_1_raddr),
   .core_data_out(__ILA_SO_core_data_out),
   .core_valid_out(__ILA_SO_core_valid_out),
   .io_token_out(__ILA_SO_io_token_out),
   .rptr(__ILA_SO_rptr),
   .wptr(__ILA_SO_wptr),
   .full(__ILA_SO_full),
   .io_valid(__ILA_SO_io_valid),
   .io_data(__ILA_SO_io_data),
   .phase(__ILA_SO_phase),
   .core_data(__ILA_SO_core_data),
   .__COUNTER_start__n5()
);
bsg_link_ddr_downstream m1(
    .core_clk_i(__VLG_I_core_clk_i),
    .core_data_o(core_data_o),
    .core_link_reset_i(rst),
    .core_token_r_o(core_token_r_o),
    .core_valid_o(core_valid_o),
    .core_yumi_i(core_yumi_i),
    .io_clk_i(__VLG_I_io_clk_i),
    .io_data_i(__ILA_I_io_data_in),
    .io_link_reset_i(io_link_reset_i),
    .io_valid_i(__ILA_I_io_valid_in)
);
endmodule
