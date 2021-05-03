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
__MEM_buffer_0_raddr,
__MEM_buffer_0_waddr,
__VLG_I_base_clk,
__VLG_I_core_yumi_i,
__VLG_I_data_i,
__VLG_I_io_clk,
__VLG_I_valid_i,
__io_data_commit_init__,
__io_valid_commit_init__,
__wptr_decode_init__,
clk,
dummy_reset,
mi0_ila_r_rand_input,
mi0_vlg_r_rand_input,
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
__MEM_buffer_0_rdata,
__MEM_buffer_0_wdata,
__m0__,
__m10__,
__m11__,
__m12__,
__m13__,
__m14__,
__m15__,
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
mi0_read_assume_true,
valid_o,
__CYCLE_CNT__,
__START__,
__STARTED__,
__ENDED__,
__2ndENDED__,
__RESETED__,
io_data_commit,
io_valid_commit,
wptr_decode,
io_valid
);
input            __ILA_I_core_clk;
input            __ILA_I_core_ready;
input      [7:0] __ILA_I_io_data_in;
input            __ILA_I_io_valid_in;
input            __ISSUE__;
input      [5:0] __MEM_buffer_0_raddr;
input      [5:0] __MEM_buffer_0_waddr;
input            __VLG_I_base_clk;
input            __VLG_I_core_yumi_i;
input     [63:0] __VLG_I_data_i;
input            __VLG_I_io_clk;
input            __VLG_I_valid_i;
input      [8:0] __io_data_commit_init__;
input            __io_valid_commit_init__;
input      [6:0] __wptr_decode_init__;
input            clk;
input            dummy_reset;
input     [15:0] mi0_ila_r_rand_input;
input     [15:0] mi0_vlg_r_rand_input;
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
output     [15:0] __MEM_buffer_0_rdata;
output     [15:0] __MEM_buffer_0_wdata;
output            __m0__;
output            __m10__;
output            __m11__;
output            __m12__;
output            __m13__;
output            __m14__;
output            __m15__;
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
output            mi0_read_assume_true;
output            valid_o;
output reg      [3:0] __CYCLE_CNT__;
output reg            __START__;
output reg            __STARTED__;
output reg            __ENDED__;
output reg            __2ndENDED__;
output reg            __RESETED__;
output reg      [8:0] io_data_commit;
output reg            io_valid_commit;
output reg      [6:0] wptr_decode;
output reg            io_valid;
wire            __2ndIEND__;
(* keep *) wire            __EDCOND__;
(* keep *) wire            __IEND__;
(* keep *) wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__;
(* keep *) wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
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
(* keep *) wire      [5:0] __IMEM_buffer_0_raddr;
(* keep *) wire     [15:0] __IMEM_buffer_0_rdata;
(* keep *) wire            __ISSUE__;
(* keep *) wire      [5:0] __MEM_buffer_0_raddr;
(* keep *) wire     [15:0] __MEM_buffer_0_rdata;
(* keep *) wire      [5:0] __MEM_buffer_0_waddr;
(* keep *) wire     [15:0] __MEM_buffer_0_wdata;
(* keep *) wire            __MEM_buffer_0_wen;
(* keep *) wire            __VLG_I_base_clk;
(* keep *) wire            __VLG_I_core_yumi_i;
(* keep *) wire     [63:0] __VLG_I_data_i;
(* keep *) wire            __VLG_I_io_clk;
(* keep *) wire            __VLG_I_valid_i;
wire      [8:0] __io_data_commit_init__;
wire            __io_valid_commit_init__;
(* keep *) wire            __m0__;
(* keep *) wire            __m10__;
(* keep *) wire            __m11__;
(* keep *) wire            __m12__;
(* keep *) wire            __m13__;
(* keep *) wire            __m14__;
(* keep *) wire            __m15__;
(* keep *) wire            __m1__;
(* keep *) wire            __m2__;
(* keep *) wire            __m3__;
(* keep *) wire            __m4__;
(* keep *) wire            __m5__;
(* keep *) wire            __m6__;
(* keep *) wire            __m7__;
(* keep *) wire            __m8__;
(* keep *) wire            __m9__;
wire      [6:0] __wptr_decode_init__;
(* keep *) wire            buffer_EQ_;
wire            clk;
(* keep *) wire     [63:0] data_o;
(* keep *) wire            dummy_reset;
wire            rst;
(* keep *) wire            valid_o;
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
assign __m0__ = m1.downstream.ch_0_downstream.data_commit == __ILA_SO_core_data0 ;
assign __m1__ = m1.downstream.ch_0_downstream.data_commit == __ILA_SO_core_data1 ;
assign __m2__ = m1.downstream.core_data_o == __ILA_SO_core_data_out ;
assign __m3__ = m1.downstream.core_valid_o == __ILA_SO_core_valid_out ;
assign __m4__ = m1.downstream.ch_0_downstream.baf.w_full_o == __ILA_SO_full ;
assign __m5__ = io_data_commit == __ILA_SO_io_data ;
assign __m6__ = m1.downstream.core_token_r_o == __ILA_SO_io_token_out ;
assign __m7__ = io_valid == __ILA_SO_io_valid ;
assign __m8__ = io_valid_commit == __ILA_SO_io_valid ;
assign __m9__ = m1.downstream.ch_0_downstream.baf.r_ptr_binary_r == __ILA_SO_rptr ;
assign __m10__ = wptr_decode == __ILA_SO_wptr ;
assign __m11__ = m1.downstream.ch_0_downstream.baf.w_ptr_binary_r == __ILA_SO_wptr ;
assign __m12__ = m1.downstream.ch_0_downstream.baf.w_ptr_binary_r_rsync == __ILA_SO_wptr_t ;
assign __m13__ = m1.downstream.ch_0_downstream.data_commit == __ILA_SO_core_data0 ;
assign __m14__ = m1.downstream.ch_0_downstream.baf.w_full_o == __ILA_SO_full ;
assign __m15__ = m1.downstream.ch_0_downstream.baf.r_ptr_binary_r == __ILA_SO_rptr ;
assign __EDCOND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__  ;
assign __IEND__ = (`false|| ( __CYCLE_CNT__ == 4'd1)) && __STARTED__ && __RESETED__ && (~ __ENDED__) ;
always @(posedge clk) begin
   if(rst) io_valid <= 0;
   else if (~io_valid && m1.downstream.io_valid_i) io_valid <= 1'b1;
   else io_valid <= 1'b0;
end

assign __MEM_buffer_0_wen = m1.downstream.ch_0_downstream.baf.w_enq_i && (__ILA_I_core_clk == 1'b0) && (__CYCLE_CNT__ >= 3) ;
/*buffer*/
absmem_ra #( 
    .AW(6),
    .DW(16) )
mi0(
    .clk(clk),
    .rst(rst),
    .vlg_r_rand_input( mi0_vlg_r_rand_input),
    .ila_r_rand_input( mi0_ila_r_rand_input),
    .equal(buffer_EQ_),
    .issue( __ISSUE__ ),
    .read_assume_true(mi0_read_assume_true),
    .compare(__IEND__ || __ENDED__),
    .vlg_waddr(__MEM_buffer_0_waddr),
    .vlg_wdata(__MEM_buffer_0_wdata),
    .vlg_wen(__MEM_buffer_0_wen),
    .vlg_ren(1'b0),
    .vlg_raddr(__MEM_buffer_0_raddr),
    .vlg_rdata(__MEM_buffer_0_rdata),
    .ila_wen  ( 1'b0 ),
    .ila_raddr(__IMEM_buffer_0_raddr),
    .ila_rdata(__IMEM_buffer_0_rdata),
    .ila_ren  (__START__) );


BSG_DOWNSTREAM_ch__DOT__DOWN_DATA_OUT0 m0 (
   .__START__(__START__),
   .clk(clk),
   .core_clk(__ILA_I_core_clk),
   .core_ready(__ILA_I_core_ready),
   .io_data_in(__ILA_I_io_data_in),
   .io_valid_in(__ILA_I_io_valid_in),
   .rst(rst),
   .__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__(__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__),
   .__ILA_BSG_DOWNSTREAM_ch_valid__(__ILA_BSG_DOWNSTREAM_ch_valid__),
   .buffer_data_n16(__IMEM_buffer_0_rdata),
   .buffer_addr_n15(__IMEM_buffer_0_raddr),
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
   .__COUNTER_start__n11()
);
bsg_top m1(
    .base_clk(__VLG_I_base_clk),
    .core_clk(__ILA_I_core_clk),
    .core_yumi_i(__VLG_I_core_yumi_i),
    .data_i(__VLG_I_data_i),
    .data_o(data_o),
    .edge_clk_i(__ILA_I_core_clk),
    .io_clk(__VLG_I_io_clk),
    .rst(rst),
    .valid_i(__VLG_I_valid_i),
    .valid_o(valid_o)
);
always @(posedge clk) begin
   if(rst) begin
       io_data_commit <= __io_data_commit_init__;
       io_valid_commit <= __io_valid_commit_init__;
       wptr_decode <= __wptr_decode_init__;
   end
   else if(1) begin
       io_data_commit <= io_data_commit;
       io_valid_commit <= io_valid_commit;
       wptr_decode <= wptr_decode;
   end
end
endmodule
