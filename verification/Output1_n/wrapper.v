/* PREHEADER */

`define true  1'b1

`define false 1'b0



/* END OF PREHEADER */
module wrapper(
__ILA_I_core_clk,
__ILA_I_core_data_in,
__ILA_I_core_valid_in,
__ILA_I_io_ready,
__ISSUE__,
__VLG_I_core_data_i,
__VLG_I_core_valid_i,
__VLG_I_token_clk_i,
clk,
dummy_reset,
rst,
__ILA_SO_child_valid,
__ILA_SO_counter,
__ILA_SO_io_data_out_ch0,
__ILA_SO_io_data_out_ch1,
__ILA_SO_io_valid_out,
__VLG_O_core_ready_o,
__VLG_O_io_clk_r_o,
__m0__,
__m1__,
__m2__,
__m3__,
io_data_r_o,
io_valid_r_o,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__
);
input            __ILA_I_core_clk;
input     [63:0] __ILA_I_core_data_in;
input            __ILA_I_core_valid_in;
input            __ILA_I_io_ready;
input            __ISSUE__;
input     [63:0] __VLG_I_core_data_i;
input            __VLG_I_core_valid_i;
input      [1:0] __VLG_I_token_clk_i;
input            clk;
input            dummy_reset;
input            rst;
output            __ILA_SO_child_valid;
output            __ILA_SO_counter;
output      [7:0] __ILA_SO_io_data_out_ch0;
output      [7:0] __ILA_SO_io_data_out_ch1;
output            __ILA_SO_io_valid_out;
output            __VLG_O_core_ready_o;
output      [1:0] __VLG_O_io_clk_r_o;
output            __m0__;
output            __m1__;
output            __m2__;
output            __m3__;
output     [15:0] io_data_r_o;
output      [1:0] io_valid_r_o;
output reg      [4:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__;
(* keep *) wire            __ILA_BSG_UPSTREAM_OUT_valid__;
(* keep *) wire            __ILA_I_core_clk;
(* keep *) wire     [63:0] __ILA_I_core_data_in;
(* keep *) wire            __ILA_I_core_valid_in;
(* keep *) wire            __ILA_I_io_ready;
(* keep *) wire            __ILA_SO_child_valid;
(* keep *) wire            __ILA_SO_counter;
(* keep *) wire      [7:0] __ILA_SO_io_data_out_ch0;
(* keep *) wire      [7:0] __ILA_SO_io_data_out_ch1;
(* keep *) wire            __ILA_SO_io_valid_out;
(* keep *) wire            __ISSUE__;
(* keep *) wire     [63:0] __VLG_I_core_data_i;
(* keep *) wire            __VLG_I_core_valid_i;
(* keep *) wire      [1:0] __VLG_I_token_clk_i;
(* keep *) wire            __VLG_O_core_ready_o;
(* keep *) wire      [1:0] __VLG_O_io_clk_r_o;
(* keep *) wire            __m0__;
(* keep *) wire            __m1__;
(* keep *) wire            __m2__;
(* keep *) wire            __m3__;
wire            clk;
(* keep *) wire            dummy_reset;
(* keep *) wire     [15:0] io_data_r_o;
(* keep *) wire      [1:0] io_valid_r_o;
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
assign __m0__ = ~m1.out_piso.ready_and_o == __ILA_SO_child_valid ;
assign __m1__ = m1.out_piso.shift_ctr_r == __ILA_SO_counter ;
assign __m2__ = ~m1.out_piso.ready_and_o == __ILA_SO_child_valid ;
assign __m3__ = m1.out_piso.shift_ctr_r == __ILA_SO_counter ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 5'd10)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 5'd10)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;

BSG_UPSTREAM_OUT__DOT__Output1_n m0 (
   .__START__(__START__),
   .clk(clk),
   .core_clk(__ILA_I_core_clk),
   .core_data_in(__ILA_I_core_data_in),
   .core_valid_in(__ILA_I_core_valid_in),
   .io_ready(__ILA_I_io_ready),
   .rst(rst),
   .__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__(__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__),
   .__ILA_BSG_UPSTREAM_OUT_valid__(__ILA_BSG_UPSTREAM_OUT_valid__),
   .io_valid_out(__ILA_SO_io_valid_out),
   .child_valid(__ILA_SO_child_valid),
   .io_data_out_ch0(__ILA_SO_io_data_out_ch0),
   .io_data_out_ch1(__ILA_SO_io_data_out_ch1),
   .counter(__ILA_SO_counter),
   .__COUNTER_start__n5()
);
bsg_link_ddr_upstream m1(
    .async_token_reset_i(rst),
    .core_clk_i(__ILA_I_core_clk),
    .core_data_i(__VLG_I_core_data_i),
    .core_link_reset_i(rst),
    .core_ready_o(__VLG_O_core_ready_o),
    .core_valid_i(__VLG_I_core_valid_i),
    .io_clk_i(clk),
    .io_clk_r_o(__VLG_O_io_clk_r_o),
    .io_data_r_o(io_data_r_o),
    .io_link_reset_i(rst),
    .io_valid_r_o(io_valid_r_o),
    .token_clk_i(__VLG_I_token_clk_i)
);
endmodule
