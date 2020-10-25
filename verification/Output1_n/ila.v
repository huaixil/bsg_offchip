module BSG_UPSTREAM_OUT__DOT__Output1_n(
__START__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__,
__ILA_BSG_UPSTREAM_OUT_valid__,
io_valid_out,
data_cycle_0,
data_cycle_1,
child_valid,
sent_cnt,
finish_cnt,
io_data_out_ch0,
io_data_out_ch1,
counter,
commit,
data_temp,
__COUNTER_start__n9
);
input            __START__;
input            clk;
input            core_clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__;
output            __ILA_BSG_UPSTREAM_OUT_valid__;
output reg            io_valid_out;
output reg     [31:0] data_cycle_0;
output reg     [31:0] data_cycle_1;
output reg            child_valid;
output reg      [6:0] sent_cnt;
output reg      [6:0] finish_cnt;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
output reg            counter;
output reg            commit;
output reg     [63:0] data_temp;
output reg      [7:0] __COUNTER_start__n9;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__;
wire            __ILA_BSG_UPSTREAM_OUT_valid__;
wire            __START__;
wire            bv_1_0_n3__$204;
wire            bv_1_1_n0__$95;
(* keep *) wire            child_valid_randinit;
wire            clk;
(* keep *) wire            commit_randinit;
wire            core_clk;
wire     [63:0] core_data_in;
wire            core_valid_in;
(* keep *) wire            counter_randinit;
(* keep *) wire     [31:0] data_cycle_0_randinit;
(* keep *) wire     [31:0] data_cycle_1_randinit;
(* keep *) wire     [63:0] data_temp_randinit;
(* keep *) wire      [6:0] finish_cnt_randinit;
(* keep *) wire      [7:0] io_data_out_ch0_randinit;
(* keep *) wire      [7:0] io_data_out_ch1_randinit;
wire            io_token;
(* keep *) wire            io_valid_out_randinit;
wire      [7:0] n10__$220;
wire      [7:0] n11__$222;
wire            n1__$97;
wire            n2__$202;
wire            n4__$206;
wire            n5__$210;
wire            n6__$212;
wire            n7__$215;
wire            n8__$217;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
assign bv_1_1_n0__$95 = 1'h1 ;
assign n1__$97 =  ( child_valid ) == ( bv_1_1_n0__$95 )  ;
assign __ILA_BSG_UPSTREAM_OUT_valid__ = n1__$97 ;
assign n2__$202 = sent_cnt[0:0] ;
assign bv_1_0_n3__$204 = 1'h0 ;
assign n4__$206 =  ( n2__$202 ) == ( bv_1_0_n3__$204 )  ;
assign n5__$210 =  ( commit ) == ( bv_1_1_n0__$95 )  ;
assign n6__$212 =  ( n4__$206 ) & (n5__$210 )  ;
assign n7__$215 =  ( counter ) == ( bv_1_1_n0__$95 )  ;
assign n8__$217 =  ( n6__$212 ) & (n7__$215 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ = n8__$217 ;
assign n10__$220 = data_temp[15:8] ;
assign n11__$222 = data_temp[31:24] ;
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
       counter <= counter_randinit ;
       commit <= commit_randinit ;
       data_temp <= data_temp_randinit ;
       __COUNTER_start__n9 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_OUT_valid__) begin
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ ) begin 
           __COUNTER_start__n9 <= 1; end
       else if( (__COUNTER_start__n9 >= 1 ) && ( __COUNTER_start__n9 < 255 )) begin
           __COUNTER_start__n9 <= __COUNTER_start__n9 + 1; end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           io_valid_out <= bv_1_0_n3__$204 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           data_cycle_0 <= data_cycle_0 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           data_cycle_1 <= data_cycle_1 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           child_valid <= bv_1_0_n3__$204 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           sent_cnt <= sent_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           finish_cnt <= finish_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           io_data_out_ch0 <= n10__$220 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           io_data_out_ch1 <= n11__$222 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           counter <= bv_1_0_n3__$204 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           commit <= commit ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           data_temp <= data_temp ;
       end
   end
end
endmodule
