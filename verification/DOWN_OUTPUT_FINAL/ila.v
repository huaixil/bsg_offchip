module BSG_DOWNSTREAM_OUT__DOT__DOWN_OUTPUT_FINAL(
__START__,
clk,
core_clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__,
__ILA_BSG_DOWNSTREAM_OUT_valid__,
core_data_out,
core_valid_out,
io_token_out,
rptr,
wptr,
wptr_t,
full,
io_valid,
io_data,
core_data0,
core_data1,
child_valid,
__COUNTER_start__n5
);
input            __START__;
input            clk;
input            core_clk;
input            core_ready;
input      [7:0] io_data_in;
input            io_valid_in;
input            rst;
output            __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__;
output            __ILA_BSG_DOWNSTREAM_OUT_valid__;
output reg     [31:0] core_data_out;
output reg            core_valid_out;
output reg            io_token_out;
output reg      [6:0] rptr;
output reg      [6:0] wptr;
output reg      [6:0] wptr_t;
output reg            full;
output reg            io_valid;
output reg      [7:0] io_data;
output reg     [15:0] core_data0;
output reg     [15:0] core_data1;
output reg            child_valid;
output reg      [7:0] __COUNTER_start__n5;
wire            __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__;
wire            __ILA_BSG_DOWNSTREAM_OUT_valid__;
wire            __START__;
wire            bv_1_0_n7__$598;
wire            bv_1_1_n0__$576;
(* keep *) wire            child_valid_randinit;
wire            clk;
wire            core_clk;
(* keep *) wire     [15:0] core_data0_randinit;
(* keep *) wire     [15:0] core_data1_randinit;
(* keep *) wire     [31:0] core_data_out_randinit;
wire            core_ready;
(* keep *) wire            core_valid_out_randinit;
(* keep *) wire            full_randinit;
wire      [7:0] io_data_in;
(* keep *) wire      [7:0] io_data_randinit;
(* keep *) wire            io_token_out_randinit;
wire            io_valid_in;
(* keep *) wire            io_valid_randinit;
wire            n1__$578;
wire            n2__$583;
wire            n3__$587;
wire            n4__$589;
wire     [31:0] n6__$594;
(* keep *) wire      [6:0] rptr_randinit;
wire            rst;
(* keep *) wire      [6:0] wptr_randinit;
(* keep *) wire      [6:0] wptr_t_randinit;
assign bv_1_1_n0__$576 = 1'h1 ;
assign n1__$578 =  ( child_valid ) == ( bv_1_1_n0__$576 )  ;
assign __ILA_BSG_DOWNSTREAM_OUT_valid__ = n1__$578 ;
assign n2__$583 =  ( child_valid ) == ( bv_1_1_n0__$576 )  ;
assign n3__$587 =  ( core_clk ) == ( bv_1_1_n0__$576 )  ;
assign n4__$589 =  ( n2__$583 ) & (n3__$587 )  ;
assign __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__ = n4__$589 ;
assign n6__$594 =  { ( core_data1 ) , ( core_data0 ) }  ;
assign bv_1_0_n7__$598 = 1'h0 ;
always @(posedge clk) begin
   if(rst) begin
       core_data_out <= core_data_out_randinit ;
       core_valid_out <= core_valid_out_randinit ;
       io_token_out <= io_token_out_randinit ;
       rptr <= rptr_randinit ;
       wptr <= wptr_randinit ;
       wptr_t <= wptr_t_randinit ;
       full <= full_randinit ;
       io_valid <= io_valid_randinit ;
       io_data <= io_data_randinit ;
       core_data0 <= core_data0_randinit ;
       core_data1 <= core_data1_randinit ;
       child_valid <= child_valid_randinit ;
       __COUNTER_start__n5 <= 0;
   end
   else if(__START__ && __ILA_BSG_DOWNSTREAM_OUT_valid__) begin
       if ( __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__ ) begin 
           __COUNTER_start__n5 <= 1; end
       else if( (__COUNTER_start__n5 >= 1 ) && ( __COUNTER_start__n5 < 255 )) begin
           __COUNTER_start__n5 <= __COUNTER_start__n5 + 1; end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           core_data_out <= n6__$594 ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           core_valid_out <= bv_1_1_n0__$576 ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           io_token_out <= io_token_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           rptr <= rptr ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           wptr <= wptr ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           wptr_t <= wptr_t ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           full <= full ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           io_valid <= io_valid ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           io_data <= io_data ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           core_data0 <= core_data0 ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           core_data1 <= core_data1 ;
       end
       if (__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__) begin
           child_valid <= bv_1_0_n7__$598 ;
       end
   end
end
endmodule
