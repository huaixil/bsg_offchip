module BSG_UPSTREAM__DOT__TOKEN_IN(
__START__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__,
__ILA_BSG_UPSTREAM_valid__,
io_valid_out,
data_cycle_0,
data_cycle_1,
child_valid,
sent_cnt,
finish_cnt,
io_data_out_ch0,
io_data_out_ch1,
__COUNTER_start__n7
);
input            __START__;
input            clk;
input            core_clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
output            __ILA_BSG_UPSTREAM_valid__;
output reg            io_valid_out;
output reg     [31:0] data_cycle_0;
output reg     [31:0] data_cycle_1;
output reg            child_valid;
output reg      [6:0] sent_cnt;
output reg      [6:0] finish_cnt;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
output reg      [7:0] __COUNTER_start__n7;
wire            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
wire            __ILA_BSG_UPSTREAM_valid__;
wire            __START__;
wire            bv_1_0_n2__$48;
wire            bv_1_1_n0__$44;
wire      [6:0] bv_7_8_n8__$58;
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
wire            n1__$46;
wire            n3__$50;
wire            n4__$52;
wire            n5__$55;
wire            n6__$57;
wire      [6:0] n9__$60;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
assign __ILA_BSG_UPSTREAM_valid__ = 1'b1 ;
assign bv_1_1_n0__$44 = 1'h1 ;
assign n1__$46 =  ( io_token ) == ( bv_1_1_n0__$44 )  ;
assign bv_1_0_n2__$48 = 1'h0 ;
assign n3__$50 =  ( core_valid_in ) == ( bv_1_0_n2__$48 )  ;
assign n4__$52 =  ( n1__$46 ) & (n3__$50 )  ;
assign n5__$55 =  ( core_clk ) == ( bv_1_0_n2__$48 )  ;
assign n6__$57 =  ( n4__$52 ) & (n5__$55 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ = n6__$57 ;
assign bv_7_8_n8__$58 = 7'h8 ;
assign n9__$60 =  ( finish_cnt ) + ( bv_7_8_n8__$58 )  ;
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
       __COUNTER_start__n7 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_valid__) begin
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ ) begin 
           __COUNTER_start__n7 <= 1; end
       else if( (__COUNTER_start__n7 >= 1 ) && ( __COUNTER_start__n7 < 255 )) begin
           __COUNTER_start__n7 <= __COUNTER_start__n7 + 1; end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           io_valid_out <= io_valid_out ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           data_cycle_0 <= data_cycle_0 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           data_cycle_1 <= data_cycle_1 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           child_valid <= child_valid ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           sent_cnt <= sent_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           finish_cnt <= n9__$60 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           io_data_out_ch0 <= io_data_out_ch0 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__) begin
           io_data_out_ch1 <= io_data_out_ch1 ;
       end
   end
end
endmodule
