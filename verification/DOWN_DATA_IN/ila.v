module BSG_DOWNSTREAM_ch__DOT__DOWN_DATA_IN(
__START__,
clk,
core_clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__,
__ILA_BSG_DOWNSTREAM_ch_valid__,
buffer_addr0,
buffer_data0,
buffer_wen0,
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
__COUNTER_start__n7
);
input            __START__;
input            clk;
input            core_clk;
input            core_ready;
input      [7:0] io_data_in;
input            io_valid_in;
input            rst;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__;
output            __ILA_BSG_DOWNSTREAM_ch_valid__;
output      [5:0] buffer_addr0;
output     [15:0] buffer_data0;
output            buffer_wen0;
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
output reg      [7:0] __COUNTER_start__n7;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__;
wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
wire            __START__;
wire      [5:0] buffer_addr0;
wire     [15:0] buffer_data0;
wire            buffer_wen0;
wire            bv_1_0_n4__$443;
wire            bv_1_1_n0__$434;
wire      [6:0] bv_7_1_n15__$474;
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
wire            n10__$605;
wire            n11__$603;
wire      [5:0] n12__$464;
wire     [15:0] n13__$470;
wire            n14__$479;
wire      [6:0] n16__$476;
wire      [6:0] n17__$481;
wire            n18__$508;
wire      [6:0] n19__$510;
wire            n1__$436;
wire            n20__$484;
wire            n21__$486;
wire            n22__$488;
wire            n23__$490;
wire            n24__$492;
wire            n25__$493;
wire      [5:0] n26__$494;
wire      [5:0] n27__$496;
wire            n28__$498;
wire            n29__$500;
wire            n2__$440;
wire            n30__$505;
wire            n31__$450;
wire            n32__$454;
wire            n33__$457;
wire      [7:0] n34__$459;
wire            n3__$442;
wire            n5__$445;
wire            n6__$447;
wire            n8__$462;
wire            n9__$604;
(* keep *) wire      [6:0] rptr_randinit;
wire            rst;
(* keep *) wire      [6:0] wptr_randinit;
(* keep *) wire      [6:0] wptr_t_randinit;
assign __ILA_BSG_DOWNSTREAM_ch_valid__ = 1'b1 ;
assign bv_1_1_n0__$434 = 1'h1 ;
assign n1__$436 =  ( io_valid_in ) == ( bv_1_1_n0__$434 )  ;
assign n2__$440 =  ( io_valid ) == ( bv_1_1_n0__$434 )  ;
assign n3__$442 =  ( n1__$436 ) | ( n2__$440 )  ;
assign bv_1_0_n4__$443 = 1'h0 ;
assign n5__$445 =  ( full ) == ( bv_1_0_n4__$443 )  ;
assign n6__$447 =  ( n3__$442 ) & (n5__$445 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ = n6__$447 ;
assign n8__$462 =  ( io_valid ) == ( bv_1_1_n0__$434 )  ;
assign n9__$604 = ~ ( n8__$462 )  ;
assign n10__$605 =  ( n6__$447 ) & (n9__$604 )  ;
assign n11__$603 =  ( n6__$447 ) & (n8__$462 )  ;
assign n12__$464 = wptr[5:0] ;
assign n13__$470 =  { ( io_data_in ) , ( io_data ) }  ;
assign buffer_addr0 = n11__$603 ? (n12__$464) : (0) ;
assign buffer_data0 = n11__$603 ? (n13__$470) : ('d0) ;
assign buffer_wen0 = (n11__$603)&&__START__ ? ( 1'b1 ) : (1'b0) ;
assign n14__$479 =  ( io_valid ) == ( bv_1_1_n0__$434 )  ;
assign bv_7_1_n15__$474 = 7'h1 ;
assign n16__$476 =  ( wptr ) + ( bv_7_1_n15__$474 )  ;
assign n17__$481 =  ( n14__$479 ) ? ( n16__$476 ) : ( wptr ) ;
assign n18__$508 =  ( io_valid ) == ( bv_1_1_n0__$434 )  ;
assign n19__$510 =  ( n18__$508 ) ? ( n16__$476 ) : ( wptr ) ;
assign n20__$484 =  ( io_valid ) == ( bv_1_1_n0__$434 )  ;
assign n21__$486 = n16__$476[6:6] ;
assign n22__$488 = rptr[6:6] ;
assign n23__$490 =  ( n21__$486 ) == ( n22__$488 )  ;
assign n24__$492 = ~ ( n23__$490 )  ;
assign n25__$493 =  ( n20__$484 ) & (n24__$492 )  ;
assign n26__$494 = wptr[5:0] ;
assign n27__$496 = rptr[5:0] ;
assign n28__$498 =  ( n26__$494 ) == ( n27__$496 )  ;
assign n29__$500 =  ( n25__$493 ) & (n28__$498 )  ;
assign n30__$505 =  ( n29__$500 ) ? ( bv_1_1_n0__$434 ) : ( bv_1_0_n4__$443 ) ;
assign n31__$450 =  ( io_valid ) == ( bv_1_1_n0__$434 )  ;
assign n32__$454 =  ( n31__$450 ) ? ( bv_1_0_n4__$443 ) : ( io_valid_in ) ;
assign n33__$457 =  ( io_valid ) == ( bv_1_0_n4__$443 )  ;
assign n34__$459 =  ( n33__$457 ) ? ( io_data_in ) : ( io_data ) ;
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
       __COUNTER_start__n7 <= 0;
   end
   else if(__START__ && __ILA_BSG_DOWNSTREAM_ch_valid__) begin
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ ) begin 
           __COUNTER_start__n7 <= 1; end
       else if( (__COUNTER_start__n7 >= 1 ) && ( __COUNTER_start__n7 < 255 )) begin
           __COUNTER_start__n7 <= __COUNTER_start__n7 + 1; end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           core_data_out <= core_data_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           core_valid_out <= core_valid_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           io_token_out <= io_token_out ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           rptr <= rptr ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           wptr <= n17__$481 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           wptr_t <= n19__$510 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           full <= n30__$505 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           io_valid <= n32__$454 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           io_data <= n34__$459 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           core_data0 <= core_data0 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           core_data1 <= core_data1 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           child_valid <= child_valid ;
       end
   end
end
endmodule
