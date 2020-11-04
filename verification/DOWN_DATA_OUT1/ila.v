module BSG_DOWNSTREAM_ch__DOT__DOWN_DATA_OUT1(
__START__,
clk,
core_clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__,
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
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__;
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
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__;
wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
wire            __START__;
wire      [5:0] buffer_addr_n15;
wire     [15:0] buffer_data_n16;
wire            bv_1_0_n8__$557;
wire            bv_1_1_n0__$542;
wire      [6:0] bv_7_1_n12__$566;
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
wire            n10__$561;
wire      [6:0] n13__$568;
wire      [5:0] n14__$562;
wire     [15:0] n17__$564;
wire            n1__$544;
wire            n2__$546;
wire            n3__$548;
wire            n4__$549;
wire            n5__$550;
wire            n6__$554;
wire            n7__$556;
wire            n9__$559;
(* keep *) wire      [6:0] rptr_randinit;
wire            rst;
(* keep *) wire      [6:0] wptr_randinit;
(* keep *) wire      [6:0] wptr_t_randinit;
assign __ILA_BSG_DOWNSTREAM_ch_valid__ = 1'b1 ;
assign bv_1_1_n0__$542 = 1'h1 ;
assign n1__$544 =  ( core_ready ) == ( bv_1_1_n0__$542 )  ;
assign n2__$546 =  ( wptr_t ) == ( rptr )  ;
assign n3__$548 = ~ ( n2__$546 )  ;
assign n4__$549 =  ( n1__$544 ) & (n3__$548 )  ;
assign n5__$550 = rptr[0:0] ;
assign n6__$554 =  ( n5__$550 ) == ( bv_1_1_n0__$542 )  ;
assign n7__$556 =  ( n4__$549 ) & (n6__$554 )  ;
assign bv_1_0_n8__$557 = 1'h0 ;
assign n9__$559 =  ( core_clk ) == ( bv_1_0_n8__$557 )  ;
assign n10__$561 =  ( n7__$556 ) & (n9__$559 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ = n10__$561 ;
assign bv_7_1_n12__$566 = 7'h1 ;
assign n13__$568 =  ( rptr ) + ( bv_7_1_n12__$566 )  ;
assign n14__$562 = rptr[5:0] ;
assign buffer_addr_n15 = n14__$562 ;
assign n17__$564 = buffer_data_n16 ;
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
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ ) begin 
           __COUNTER_start__n11 <= 1; end
       else if( (__COUNTER_start__n11 >= 1 ) && ( __COUNTER_start__n11 < 255 )) begin
           __COUNTER_start__n11 <= __COUNTER_start__n11 + 1; end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           core_data_out <= core_data_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           core_valid_out <= core_valid_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           io_token_out <= io_token_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           rptr <= n13__$568 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           wptr <= wptr ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           wptr_t <= wptr_t ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           full <= bv_1_0_n8__$557 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           io_valid <= io_valid ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           io_data <= io_data ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           core_data0 <= core_data0 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           core_data1 <= n17__$564 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__) begin
           child_valid <= bv_1_1_n0__$542 ;
       end
   end
end
endmodule
