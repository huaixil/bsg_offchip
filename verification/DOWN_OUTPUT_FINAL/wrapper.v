/* PREHEADER */

`define true  1'b1

`define false 1'b0



/* END OF PREHEADER */
module wrapper(
__ILA_I_core_clk,
__ILA_I_core_ready,
__ILA_I_io_data_in,
__ILA_I_io_valid_in,
__ISSUE__,
__VLG_I_core_yumi_i,
__VLG_I_io_valid_i,
clk,
dummy_reset,
rst,
__ILA_SO_child_valid,
__ILA_SO_core_data0,
__ILA_SO_core_data1,
__ILA_SO_core_data_out,
__ILA_SO_core_valid_out,
__ILA_SO_full,
__ILA_SO_io_data,
__ILA_SO_io_token_out,
__ILA_SO_io_valid,
__ILA_SO_rptr,
__ILA_SO_wptr,
__ILA_SO_wptr_t,
__m0__,
__m1__,
__m2__,
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
input            __ILA_I_core_clk;
input            __ILA_I_core_ready;
input      [7:0] __ILA_I_io_data_in;
input            __ILA_I_io_valid_in;
input            __ISSUE__;
input            __VLG_I_core_yumi_i;
input      [1:0] __VLG_I_io_valid_i;
input            clk;
input            dummy_reset;
input            rst;
output            __ILA_SO_child_valid;
output     [15:0] __ILA_SO_core_data0;
output     [15:0] __ILA_SO_core_data1;
output     [31:0] __ILA_SO_core_data_out;
output            __ILA_SO_core_valid_out;
output            __ILA_SO_full;
output      [7:0] __ILA_SO_io_data;
output            __ILA_SO_io_token_out;
output            __ILA_SO_io_valid;
output      [6:0] __ILA_SO_rptr;
output      [6:0] __ILA_SO_wptr;
output      [6:0] __ILA_SO_wptr_t;
output            __m0__;
output            __m1__;
output            __m2__;
output     [63:0] core_data_o;
output      [1:0] core_token_r_o;
output            core_valid_o;
output reg      [3:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
output reg            io_valid;
(* keep *) wire            KeepMemoryPortsERROR_no_mem_name_buffer;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__;
(* keep *) wire            __ILA_BSG_DOWNSTREAM_OUT_valid__;
(* keep *) wire            __ILA_I_core_clk;
(* keep *) wire            __ILA_I_core_ready;
(* keep *) wire      [7:0] __ILA_I_io_data_in;
(* keep *) wire            __ILA_I_io_valid_in;
(* keep *) wire            __ILA_SO_child_valid;
(* keep *) wire     [15:0] __ILA_SO_core_data0;
(* keep *) wire     [15:0] __ILA_SO_core_data1;
(* keep *) wire     [31:0] __ILA_SO_core_data_out;
(* keep *) wire            __ILA_SO_core_valid_out;
(* keep *) wire            __ILA_SO_full;
(* keep *) wire      [7:0] __ILA_SO_io_data;
(* keep *) wire            __ILA_SO_io_token_out;
(* keep *) wire            __ILA_SO_io_valid;
(* keep *) wire      [6:0] __ILA_SO_rptr;
(* keep *) wire      [6:0] __ILA_SO_wptr;
(* keep *) wire      [6:0] __ILA_SO_wptr_t;
(* keep *) wire            __ISSUE__;
(* keep *) wire            __VLG_I_core_yumi_i;
(* keep *) wire      [1:0] __VLG_I_io_valid_i;
(* keep *) wire            __m0__;
(* keep *) wire            __m1__;
(* keep *) wire            __m2__;
wire            clk;
(* keep *) wire     [63:0] core_data_o;
(* keep *) wire      [1:0] core_token_r_o;
(* keep *) wire            core_valid_o;
(* keep *) wire            dummy_reset;
wire            rst;
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
assign __m0__ = m1.core_valid_o == __ILA_SO_core_valid_out ;
assign __m1__ = m1.core_token_r_o == __ILA_SO_io_token_out ;
assign __m2__ = m1.core_valid_o == __ILA_SO_core_valid_out ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd2)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd2)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
always @(posedge clk) begin
   if(rst) io_valid <= 0;
   else if (~io_valid && m1.io_valid_i) io_valid <= 1'b1;
   else io_valid <= 1'b0;
end

assign KeepMemoryPortsERROR_no_mem_name_buffer = m1.ch_0_downstream.baf.w_enq_i && (__ILA_I_core_clk == 1'b0) && (__CYCLE_CNT__ >= 3) ;

BSG_DOWNSTREAM_OUT__DOT__DOWN_OUTPUT_FINAL m0 (
   .__START__(__START__),
   .clk(clk),
   .core_clk(__ILA_I_core_clk),
   .core_ready(__ILA_I_core_ready),
   .io_data_in(__ILA_I_io_data_in),
   .io_valid_in(__ILA_I_io_valid_in),
   .rst(rst),
   .__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__(__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__),
   .__ILA_BSG_DOWNSTREAM_OUT_valid__(__ILA_BSG_DOWNSTREAM_OUT_valid__),
   .core_data_out(__ILA_SO_core_data_out),
   .core_valid_out(__ILA_SO_core_valid_out),
   .io_token_out(__ILA_SO_io_token_out),
   .rptr(__ILA_SO_rptr),
   .wptr(__ILA_SO_wptr),
   .wptr_t(__ILA_SO_wptr_t),
   .full(__ILA_SO_full),
   .io_valid(__ILA_SO_io_valid),
   .io_data(__ILA_SO_io_data),
   .core_data0(__ILA_SO_core_data0),
   .core_data1(__ILA_SO_core_data1),
   .child_valid(__ILA_SO_child_valid),
   .__COUNTER_start__n5()
);
bsg_link_ddr_downstream m1(
    .core_clk_i(__ILA_I_core_clk),
    .core_data_o(core_data_o),
    .core_link_reset_i(rst),
    .core_token_r_o(core_token_r_o),
    .core_valid_o(core_valid_o),
    .core_yumi_i(__VLG_I_core_yumi_i),
    .io_clk_i(__ILA_I_core_clk),
    .io_data_i(__ILA_I_io_data_in),
    .io_link_reset_i(rst),
    .io_valid_i(__VLG_I_io_valid_i)
);
endmodule
