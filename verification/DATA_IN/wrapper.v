/* PREHEADER */

`define true  1'b1

`define false 1'b0



/* END OF PREHEADER */
module wrapper(
__ILA_I_core_data_in,
__ILA_I_core_valid_in,
__ILA_I_io_ready,
__VLG_I_token_clk_i,
clk,
dummy_reset,
rst,
__ILA_SO_child_valid,
__ILA_SO_io_data_out_ch0,
__ILA_SO_io_data_out_ch1,
__ILA_SO_io_valid_out,
__VLG_O_core_ready_o,
__VLG_O_io_clk_r_o,
io_data_r_o,
io_valid_r_o,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__
);
input     [63:0] __ILA_I_core_data_in;
input            __ILA_I_core_valid_in;
input            __ILA_I_io_ready;
input      [1:0] __VLG_I_token_clk_i;
input            clk;
input            dummy_reset;
input            rst;
output            __ILA_SO_child_valid;
output      [7:0] __ILA_SO_io_data_out_ch0;
output      [7:0] __ILA_SO_io_data_out_ch1;
output            __ILA_SO_io_valid_out;
output            __VLG_O_core_ready_o;
output      [1:0] __VLG_O_io_clk_r_o;
output     [15:0] io_data_r_o;
output      [1:0] io_valid_r_o;
output reg      [3:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
(* keep *) wire            __ILA_BSG_UPSTREAM_valid__;
(* keep *) wire     [63:0] __ILA_I_core_data_in;
(* keep *) wire            __ILA_I_core_valid_in;
(* keep *) wire            __ILA_I_io_ready;
(* keep *) wire            __ILA_SO_child_valid;
(* keep *) wire      [7:0] __ILA_SO_io_data_out_ch0;
(* keep *) wire      [7:0] __ILA_SO_io_data_out_ch1;
(* keep *) wire            __ILA_SO_io_valid_out;
(* keep *) wire            __ISSUE__;
(* keep *) wire      [1:0] __VLG_I_token_clk_i;
(* keep *) wire            __VLG_O_core_ready_o;
(* keep *) wire      [1:0] __VLG_O_io_clk_r_o;
wire            clk;
(* keep *) wire            dummy_reset;
(* keep *) wire     [15:0] io_data_r_o;
(* keep *) wire      [1:0] io_valid_r_o;
wire            rst;
always @(posedge clk) begin
if (rst) __CYCLE_CNT__ <= 0;
else if ( ( __START__ || __STARTED__ ) &&  __CYCLE_CNT__ < 6) __CYCLE_CNT__ <= __CYCLE_CNT__ + 1;
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
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
assign __ISSUE__ = 1 ;

BSG_UPSTREAM__DOT__DATA_IN m0 (
   .__START__(__START__),
   .clk(clk),
   .core_data_in(__ILA_I_core_data_in),
   .core_valid_in(__ILA_I_core_valid_in),
   .io_ready(__ILA_I_io_ready),
   .rst(rst),
   .__ILA_BSG_UPSTREAM_decode_of_DATA_IN__(__ILA_BSG_UPSTREAM_decode_of_DATA_IN__),
   .__ILA_BSG_UPSTREAM_valid__(__ILA_BSG_UPSTREAM_valid__),
   .io_valid_out(__ILA_SO_io_valid_out),
   .child_valid(__ILA_SO_child_valid),
   .io_data_out_ch0(__ILA_SO_io_data_out_ch0),
   .io_data_out_ch1(__ILA_SO_io_data_out_ch1),
   .__COUNTER_start__n2()
);
bsg_link_ddr_upstream m1(
    .async_token_reset_i(dummy_reset),
    .core_clk_i(clk),
    .core_data_i(__ILA_I_core_data_in),
    .core_link_reset_i(dummy_reset),
    .core_ready_o(__VLG_O_core_ready_o),
    .core_valid_i(__ILA_I_core_valid_in),
    .io_clk_i(clk),
    .io_clk_r_o(__VLG_O_io_clk_r_o),
    .io_data_r_o(io_data_r_o),
    .io_link_reset_i(dummy_reset),
    .io_valid_r_o(io_valid_r_o),
    .token_clk_i(__VLG_I_token_clk_i)
);
endmodule
