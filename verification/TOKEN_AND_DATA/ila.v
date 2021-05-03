module BSG_UPSTREAM__DOT__TOKEN_AND_DATA(
__START__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__,
__ILA_BSG_UPSTREAM_valid__,
io_valid_out,
data_cycle_0,
data_cycle_1,
child_valid,
sent_cnt,
finish_cnt,
io_data_out_ch0,
io_data_out_ch1,
__COUNTER_start__n9
);
input            __START__;
input            clk;
input            core_clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output            __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__;
output            __ILA_BSG_UPSTREAM_valid__;
output reg            io_valid_out;
output reg     [31:0] data_cycle_0;
output reg     [31:0] data_cycle_1;
output reg            child_valid;
output reg      [6:0] sent_cnt;
output reg      [6:0] finish_cnt;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
output reg      [7:0] __COUNTER_start__n9;
wire            __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__;
wire            __ILA_BSG_UPSTREAM_valid__;
wire            __START__;
wire            bv_1_0_n3__$70;
wire            bv_1_1_n0__$62;
wire      [6:0] bv_7_8_n12__$85;
(* keep *) wire            child_valid_randinit;
wire            clk;
wire            core_clk;
wire     [63:0] core_data_in;
wire            core_valid_in;
(* keep *) wire     [31:0] data_cycle_0_randinit;
(* keep *) wire     [31:0] data_cycle_1_randinit;
(* keep *) wire      [6:0] finish_cnt_randinit;
(* keep *) wire      [7:0] io_data_out_ch0_randinit;
(* keep *) wire      [7:0] io_data_out_ch1_randinit;
wire            io_token;
(* keep *) wire            io_valid_out_randinit;
wire     [31:0] n10__$81;
wire     [31:0] n11__$83;
wire      [6:0] n13__$87;
wire            n1__$64;
wire            n2__$68;
wire            n4__$72;
wire            n5__$74;
wire            n6__$77;
wire            n7__$79;
wire            n8__$80;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
assign __ILA_BSG_UPSTREAM_valid__ = 1'b1 ;
assign bv_1_1_n0__$62 = 1'h1 ;
assign n1__$64 =  ( io_token ) == ( bv_1_1_n0__$62 )  ;
assign n2__$68 =  ( core_valid_in ) == ( bv_1_1_n0__$62 )  ;
assign bv_1_0_n3__$70 = 1'h0 ;
assign n4__$72 =  ( core_clk ) == ( bv_1_0_n3__$70 )  ;
assign n5__$74 =  ( n2__$68 ) & (n4__$72 )  ;
assign n6__$77 =  ( child_valid ) == ( bv_1_0_n3__$70 )  ;
assign n7__$79 =  ( n5__$74 ) & (n6__$77 )  ;
assign n8__$80 =  ( n1__$64 ) & (n7__$79 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ = n8__$80 ;
assign n10__$81 = core_data_in[31:0] ;
assign n11__$83 = core_data_in[63:32] ;
assign bv_7_8_n12__$85 = 7'h8 ;
assign n13__$87 =  ( finish_cnt ) + ( bv_7_8_n12__$85 )  ;
always @(posedge clk) begin
   if(rst) begin
       io_valid_out <= io_valid_out_randinit ;
       data_cycle_0 <= data_cycle_0_randinit ;
       data_cycle_1 <= data_cycle_1_randinit ;
       child_valid <= child_valid_randinit ;
       sent_cnt <= sent_cnt_randinit ;
       finish_cnt <= finish_cnt_randinit ;
       io_data_out_ch0 <= io_data_out_ch0_randinit ;
       io_data_out_ch1 <= io_data_out_ch1_randinit ;
       __COUNTER_start__n9 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_valid__) begin
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ ) begin 
           __COUNTER_start__n9 <= 1; end
       else if( (__COUNTER_start__n9 >= 1 ) && ( __COUNTER_start__n9 < 255 )) begin
           __COUNTER_start__n9 <= __COUNTER_start__n9 + 1; end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__) begin
           io_valid_out <= io_valid_out ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__) begin
           data_cycle_0 <= n10__$81 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__) begin
           data_cycle_1 <= n11__$83 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__) begin
           child_valid <= bv_1_1_n0__$62 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__) begin
           sent_cnt <= sent_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__) begin
           finish_cnt <= n13__$87 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__) begin
           io_data_out_ch0 <= io_data_out_ch0 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__) begin
           io_data_out_ch1 <= io_data_out_ch1 ;
       end
   end
end
endmodule
