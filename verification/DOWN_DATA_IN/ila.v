module BSG_DOWNSTREAM_ch__DOT__DOWN_DATA_IN(
__START__,
clk,
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
full,
io_valid,
io_data,
phase,
core_data,
__COUNTER_start__n7
);
input            __START__;
input            clk;
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
output reg            full;
output reg            io_valid;
output reg      [7:0] io_data;
output reg            phase;
output reg     [15:0] core_data;
output reg      [7:0] __COUNTER_start__n7;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__;
wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
wire            __START__;
wire      [5:0] buffer_addr0;
wire     [15:0] buffer_data0;
wire            buffer_wen0;
wire            bv_1_0_n4__$435;
wire            bv_1_1_n0__$426;
wire      [6:0] bv_7_1_n15__$466;
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
wire            n10__$544;
wire            n11__$542;
wire      [5:0] n12__$456;
wire     [15:0] n13__$462;
wire            n14__$471;
wire      [6:0] n16__$468;
wire      [6:0] n17__$473;
wire            n18__$476;
wire            n19__$478;
wire            n1__$428;
wire            n20__$480;
wire            n21__$482;
wire            n22__$484;
wire            n23__$485;
wire      [5:0] n24__$486;
wire      [5:0] n25__$488;
wire            n26__$490;
wire            n27__$492;
wire            n28__$497;
wire            n29__$442;
wire            n2__$432;
wire            n30__$446;
wire            n31__$449;
wire      [7:0] n32__$451;
wire            n3__$434;
wire            n5__$437;
wire            n6__$439;
wire            n8__$454;
wire            n9__$543;
(* keep *) wire            phase_randinit;
(* keep *) wire      [6:0] rptr_randinit;
wire            rst;
(* keep *) wire      [6:0] wptr_randinit;
assign __ILA_BSG_DOWNSTREAM_ch_valid__ = 1'b1 ;
assign bv_1_1_n0__$426 = 1'h1 ;
assign n1__$428 =  ( io_valid_in ) == ( bv_1_1_n0__$426 )  ;
assign n2__$432 =  ( io_valid ) == ( bv_1_1_n0__$426 )  ;
assign n3__$434 =  ( n1__$428 ) | ( n2__$432 )  ;
assign bv_1_0_n4__$435 = 1'h0 ;
assign n5__$437 =  ( full ) == ( bv_1_0_n4__$435 )  ;
assign n6__$439 =  ( n3__$434 ) & (n5__$437 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ = n6__$439 ;
assign n8__$454 =  ( io_valid ) == ( bv_1_1_n0__$426 )  ;
assign n9__$543 = ~ ( n8__$454 )  ;
assign n10__$544 =  ( n6__$439 ) & (n9__$543 )  ;
assign n11__$542 =  ( n6__$439 ) & (n8__$454 )  ;
assign n12__$456 = wptr[5:0] ;
assign n13__$462 =  { ( io_data_in ) , ( io_data ) }  ;
assign buffer_addr0 = n11__$542 ? (n12__$456) : (0) ;
assign buffer_data0 = n11__$542 ? (n13__$462) : ('d0) ;
assign buffer_wen0 = (n11__$542)&&__START__ ? ( 1'b1 ) : (1'b0) ;
assign n14__$471 =  ( io_valid ) == ( bv_1_1_n0__$426 )  ;
assign bv_7_1_n15__$466 = 7'h1 ;
assign n16__$468 =  ( wptr ) + ( bv_7_1_n15__$466 )  ;
assign n17__$473 =  ( n14__$471 ) ? ( n16__$468 ) : ( wptr ) ;
assign n18__$476 =  ( io_valid ) == ( bv_1_1_n0__$426 )  ;
assign n19__$478 = n16__$468[6:6] ;
assign n20__$480 = rptr[6:6] ;
assign n21__$482 =  ( n19__$478 ) == ( n20__$480 )  ;
assign n22__$484 = ~ ( n21__$482 )  ;
assign n23__$485 =  ( n18__$476 ) & (n22__$484 )  ;
assign n24__$486 = wptr[5:0] ;
assign n25__$488 = rptr[5:0] ;
assign n26__$490 =  ( n24__$486 ) == ( n25__$488 )  ;
assign n27__$492 =  ( n23__$485 ) & (n26__$490 )  ;
assign n28__$497 =  ( n27__$492 ) ? ( bv_1_1_n0__$426 ) : ( bv_1_0_n4__$435 ) ;
assign n29__$442 =  ( io_valid ) == ( bv_1_1_n0__$426 )  ;
assign n30__$446 =  ( n29__$442 ) ? ( bv_1_0_n4__$435 ) : ( io_valid_in ) ;
assign n31__$449 =  ( io_valid ) == ( bv_1_0_n4__$435 )  ;
assign n32__$451 =  ( n31__$449 ) ? ( io_data_in ) : ( io_data ) ;
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
           wptr <= n17__$473 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           full <= n28__$497 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           io_valid <= n30__$446 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           io_data <= n32__$451 ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           phase <= phase ;
       end
       if (__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__) begin
           core_data <= core_data ;
       end
   end
end
endmodule
