module BSG_DOWNSTREAM_ch__DOT__DOWN_DATA_OUT0(
__START__,
clk,
core_clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__,
__ILA_BSG_DOWNSTREAM_ch_valid__,
buffer_data_n16,
buffer_addr_n15,
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
__COUNTER_start__n11
);
input            __START__;
input            clk;
input            core_clk;
input            core_ready;
input      [7:0] io_data_in;
input            io_valid_in;
input            rst;
input     [15:0] buffer_data_n16;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__;
output            __ILA_BSG_DOWNSTREAM_ch_valid__;
output      [5:0] buffer_addr_n15;
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
output reg      [7:0] __COUNTER_start__n11;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__;
wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
wire            __START__;
wire      [5:0] buffer_addr_n15;
wire     [15:0] buffer_data_n16;
wire            bv_1_0_n6__$522;
wire            bv_1_1_n0__$512;
wire      [6:0] bv_7_1_n12__$536;
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
wire            n10__$531;
wire      [6:0] n13__$538;
wire      [5:0] n14__$532;
wire     [15:0] n17__$534;
wire            n1__$514;
wire            n2__$516;
wire            n3__$518;
wire            n4__$519;
wire            n5__$520;
wire            n7__$524;
wire            n8__$526;
wire            n9__$529;
(* keep *) wire      [6:0] rptr_randinit;
wire            rst;
(* keep *) wire      [6:0] wptr_randinit;
(* keep *) wire      [6:0] wptr_t_randinit;
assign __ILA_BSG_DOWNSTREAM_ch_valid__ = 1'b1 ;
assign bv_1_1_n0__$512 = 1'h1 ;
assign n1__$514 =  ( core_ready ) == ( bv_1_1_n0__$512 )  ;
assign n2__$516 =  ( wptr_t ) == ( rptr )  ;
assign n3__$518 = ~ ( n2__$516 )  ;
assign n4__$519 =  ( n1__$514 ) & (n3__$518 )  ;
assign n5__$520 = rptr[0:0] ;
assign bv_1_0_n6__$522 = 1'h0 ;
assign n7__$524 =  ( n5__$520 ) == ( bv_1_0_n6__$522 )  ;
assign n8__$526 =  ( n4__$519 ) & (n7__$524 )  ;
assign n9__$529 =  ( core_clk ) == ( bv_1_0_n6__$522 )  ;
assign n10__$531 =  ( n8__$526 ) & (n9__$529 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ = n10__$531 ;
assign bv_7_1_n12__$536 = 7'h1 ;
assign n13__$538 =  ( rptr ) + ( bv_7_1_n12__$536 )  ;
assign n14__$532 = rptr[5:0] ;
assign buffer_addr_n15 = n14__$532 ;
assign n17__$534 = buffer_data_n16 ;
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
       __COUNTER_start__n11 <= 0;
   end
   else if(__START__ && __ILA_BSG_DOWNSTREAM_ch_valid__) begin
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ ) begin 
           __COUNTER_start__n11 <= 1; end
       else if( (__COUNTER_start__n11 >= 1 ) && ( __COUNTER_start__n11 < 255 )) begin
           __COUNTER_start__n11 <= __COUNTER_start__n11 + 1; end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           core_data_out <= core_data_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           core_valid_out <= core_valid_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           io_token_out <= io_token_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           rptr <= n13__$538 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           wptr <= wptr ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           wptr_t <= wptr_t ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           full <= bv_1_0_n6__$522 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           io_valid <= io_valid ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           io_data <= io_data ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           core_data0 <= n17__$534 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           core_data1 <= core_data1 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__) begin
           child_valid <= child_valid ;
       end
   end
end
endmodule
