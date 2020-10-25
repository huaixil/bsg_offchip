module BSG_UPSTREAM_OUT__DOT__Output0_p(
__START__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__,
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
__COUNTER_start__n13
);
input            __START__;
input            clk;
input            core_clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__;
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
output reg      [7:0] __COUNTER_start__n13;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__;
wire            __ILA_BSG_UPSTREAM_OUT_valid__;
wire            __START__;
wire            bv_1_0_n3__$117;
wire            bv_1_1_n0__$95;
wire      [6:0] bv_7_1_n14__$142;
wire      [6:0] bv_7_64_n6__$100;
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
wire            n10__$126;
wire            n11__$129;
wire            n12__$131;
wire      [6:0] n15__$144;
wire      [7:0] n16__$134;
wire      [7:0] n17__$136;
wire            n1__$97;
wire            n2__$115;
wire            n4__$119;
wire      [6:0] n5__$99;
wire            n7__$102;
wire            n8__$121;
wire            n9__$124;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
assign bv_1_1_n0__$95 = 1'h1 ;
assign n1__$97 =  ( child_valid ) == ( bv_1_1_n0__$95 )  ;
assign __ILA_BSG_UPSTREAM_OUT_valid__ = n1__$97 ;
assign n2__$115 = sent_cnt[0:0] ;
assign bv_1_0_n3__$117 = 1'h0 ;
assign n4__$119 =  ( n2__$115 ) == ( bv_1_0_n3__$117 )  ;
assign n5__$99 =  ( sent_cnt ) - ( finish_cnt )  ;
assign bv_7_64_n6__$100 = 7'h40 ;
assign n7__$102 =  ( n5__$99 ) < ( bv_7_64_n6__$100 )  ;
assign n8__$121 =  ( n4__$119 ) & (n7__$102 )  ;
assign n9__$124 =  ( child_valid ) == ( bv_1_1_n0__$95 )  ;
assign n10__$126 =  ( n8__$121 ) & (n9__$124 )  ;
assign n11__$129 =  ( counter ) == ( bv_1_0_n3__$117 )  ;
assign n12__$131 =  ( n10__$126 ) & (n11__$129 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ = n12__$131 ;
assign bv_7_1_n14__$142 = 7'h1 ;
assign n15__$144 =  ( sent_cnt ) + ( bv_7_1_n14__$142 )  ;
assign n16__$134 = data_cycle_0[7:0] ;
assign n17__$136 = data_cycle_0[23:16] ;
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
       __COUNTER_start__n13 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_OUT_valid__) begin
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ ) begin 
           __COUNTER_start__n13 <= 1; end
       else if( (__COUNTER_start__n13 >= 1 ) && ( __COUNTER_start__n13 < 255 )) begin
           __COUNTER_start__n13 <= __COUNTER_start__n13 + 1; end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           io_valid_out <= bv_1_1_n0__$95 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           data_cycle_0 <= data_cycle_0 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           data_cycle_1 <= data_cycle_1 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           child_valid <= child_valid ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           sent_cnt <= n15__$144 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           finish_cnt <= finish_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           io_data_out_ch0 <= n16__$134 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           io_data_out_ch1 <= n17__$136 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           counter <= bv_1_1_n0__$95 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           commit <= bv_1_1_n0__$95 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__) begin
           data_temp <= data_cycle_0 ;
       end
   end
end
endmodule
