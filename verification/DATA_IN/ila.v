module BSG_UPSTREAM__DOT__DATA_IN(
__START__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_decode_of_DATA_IN__,
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
output            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
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
wire            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
wire            __ILA_BSG_UPSTREAM_valid__;
wire            __START__;
wire            bv_1_0_n0__$229;
wire            bv_1_1_n2__$233;
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
wire     [31:0] n10__$248;
wire     [31:0] n11__$250;
wire            n1__$231;
wire            n3__$235;
wire            n4__$239;
wire            n5__$241;
wire            n6__$244;
wire            n7__$246;
wire            n8__$247;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
assign __ILA_BSG_UPSTREAM_valid__ = 1'b1 ;
assign bv_1_0_n0__$229 = 1'h0 ;
assign n1__$231 =  ( io_token ) == ( bv_1_0_n0__$229 )  ;
assign bv_1_1_n2__$233 = 1'h1 ;
assign n3__$235 =  ( core_valid_in ) == ( bv_1_1_n2__$233 )  ;
assign n4__$239 =  ( core_clk ) == ( bv_1_0_n0__$229 )  ;
assign n5__$241 =  ( n3__$235 ) & (n4__$239 )  ;
assign n6__$244 =  ( child_valid ) == ( bv_1_0_n0__$229 )  ;
assign n7__$246 =  ( n5__$241 ) & (n6__$244 )  ;
assign n8__$247 =  ( n1__$231 ) & (n7__$246 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ = n8__$247 ;
assign n10__$248 = core_data_in[31:0] ;
assign n11__$250 = core_data_in[63:32] ;
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
       if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ ) begin 
           __COUNTER_start__n9 <= 1; end
       else if( (__COUNTER_start__n9 >= 1 ) && ( __COUNTER_start__n9 < 255 )) begin
           __COUNTER_start__n9 <= __COUNTER_start__n9 + 1; end
       if (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__) begin
           io_valid_out <= io_valid_out ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__) begin
           data_cycle_0 <= n10__$248 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__) begin
           data_cycle_1 <= n11__$250 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__) begin
           child_valid <= bv_1_1_n2__$233 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__) begin
           sent_cnt <= sent_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__) begin
           finish_cnt <= finish_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__) begin
           io_data_out_ch0 <= io_data_out_ch0 ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__) begin
           io_data_out_ch1 <= io_data_out_ch1 ;
       end
   end
end
endmodule
