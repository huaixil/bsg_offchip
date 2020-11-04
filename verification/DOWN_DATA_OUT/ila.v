module BSG_DOWNSTREAM_ch__DOT__DOWN_DATA_OUT(
__START__,
clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__,
__ILA_BSG_DOWNSTREAM_ch_valid__,
buffer_data_n9,
buffer_data_n20,
buffer_addr_n8,
buffer_addr_n19,
core_data_out,
core_valid_out,
io_token_out,
rptr,
wptr,
full,
io_valid,
io_data,
phase,
core_data,
__COUNTER_start__n5
);
input            __START__;
input            clk;
input            core_ready;
input      [7:0] io_data_in;
input            io_valid_in;
input            rst;
input     [15:0] buffer_data_n9;
input     [15:0] buffer_data_n20;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__;
output            __ILA_BSG_DOWNSTREAM_ch_valid__;
output      [5:0] buffer_addr_n8;
output      [5:0] buffer_addr_n19;
output reg     [31:0] core_data_out;
output reg            core_valid_out;
output reg            io_token_out;
output reg      [6:0] rptr;
output reg      [6:0] wptr;
output reg            full;
output reg            io_valid;
output reg      [7:0] io_data;
output reg            phase;
output reg     [15:0] core_data;
output reg      [7:0] __COUNTER_start__n5;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__;
wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
wire            __START__;
wire      [5:0] buffer_addr_n19;
wire      [5:0] buffer_addr_n8;
wire     [15:0] buffer_data_n20;
wire     [15:0] buffer_data_n9;
wire            bv_1_0_n15__$537;
wire            bv_1_1_n0__$499;
wire      [6:0] bv_7_1_n13__$519;
wire            clk;
(* keep *) wire     [31:0] core_data_out_randinit;
(* keep *) wire     [15:0] core_data_randinit;
wire            core_ready;
(* keep *) wire            core_valid_out_randinit;
(* keep *) wire            full_randinit;
wire      [7:0] io_data_in;
(* keep *) wire      [7:0] io_data_randinit;
(* keep *) wire            io_token_out_randinit;
wire            io_valid_in;
(* keep *) wire            io_valid_randinit;
wire     [15:0] n10__$528;
wire     [31:0] n11__$534;
wire     [31:0] n12__$536;
wire      [6:0] n14__$521;
wire            n16__$518;
wire            n17__$509;
wire      [5:0] n18__$511;
wire            n1__$501;
wire     [15:0] n21__$513;
wire     [15:0] n22__$515;
wire            n2__$503;
wire            n3__$505;
wire            n4__$506;
wire            n6__$524;
wire      [5:0] n7__$526;
(* keep *) wire            phase_randinit;
(* keep *) wire      [6:0] rptr_randinit;
wire            rst;
(* keep *) wire      [6:0] wptr_randinit;
assign __ILA_BSG_DOWNSTREAM_ch_valid__ = 1'b1 ;
assign bv_1_1_n0__$499 = 1'h1 ;
assign n1__$501 =  ( core_ready ) == ( bv_1_1_n0__$499 )  ;
assign n2__$503 =  ( wptr ) == ( rptr )  ;
assign n3__$505 = ~ ( n2__$503 )  ;
assign n4__$506 =  ( n1__$501 ) & (n3__$505 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__ = n4__$506 ;
assign n6__$524 =  ( phase ) == ( bv_1_1_n0__$499 )  ;
assign n7__$526 = rptr[5:0] ;
assign buffer_addr_n8 = n7__$526 ;
assign n10__$528 = buffer_data_n9 ;
assign n11__$534 =  { ( core_data ) , ( n10__$528 ) }  ;
assign n12__$536 =  ( n6__$524 ) ? ( n11__$534 ) : ( core_data_out ) ;
assign bv_7_1_n13__$519 = 7'h1 ;
assign n14__$521 =  ( rptr ) + ( bv_7_1_n13__$519 )  ;
assign bv_1_0_n15__$537 = 1'h0 ;
assign n16__$518 =  ( phase ) + ( bv_1_1_n0__$499 )  ;
assign n17__$509 =  ( phase ) == ( bv_1_0_n15__$537 )  ;
assign n18__$511 = rptr[5:0] ;
assign buffer_addr_n19 = n18__$511 ;
assign n21__$513 = buffer_data_n20 ;
assign n22__$515 =  ( n17__$509 ) ? ( n21__$513 ) : ( core_data ) ;
always @(posedge clk) begin
   if(rst) begin
       core_data_out <= core_data_out_randinit ;
       core_valid_out <= core_valid_out_randinit ;
       io_token_out <= io_token_out_randinit ;
       rptr <= rptr_randinit ;
       wptr <= wptr_randinit ;
       full <= full_randinit ;
       io_valid <= io_valid_randinit ;
       io_data <= io_data_randinit ;
       phase <= phase_randinit ;
       core_data <= core_data_randinit ;
       __COUNTER_start__n5 <= 0;
   end
   else if(__START__ && __ILA_BSG_DOWNSTREAM_ch_valid__) begin
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__ ) begin 
           __COUNTER_start__n5 <= 1; end
       else if( (__COUNTER_start__n5 >= 1 ) && ( __COUNTER_start__n5 < 255 )) begin
           __COUNTER_start__n5 <= __COUNTER_start__n5 + 1; end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__) begin
           core_data_out <= n12__$536 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__) begin
           core_valid_out <= core_valid_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__) begin
           io_token_out <= io_token_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__) begin
           rptr <= n14__$521 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__) begin
           wptr <= wptr ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__) begin
           full <= bv_1_0_n15__$537 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__) begin
           io_valid <= io_valid ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__) begin
           io_data <= io_data ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__) begin
           phase <= n16__$518 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT__) begin
           core_data <= n22__$515 ;
       end
   end
end
endmodule
