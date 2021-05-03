module BSG_UPSTREAM_OUT__DOT__Output1_p(
__START__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__,
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
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__;
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
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__;
wire            __ILA_BSG_UPSTREAM_OUT_valid__;
wire            __START__;
wire            bv_1_0_n10__$183;
wire            bv_1_1_n0__$95;
wire      [6:0] bv_7_1_n14__$196;
wire      [6:0] bv_7_64_n5__$100;
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
wire            n11__$185;
wire            n12__$187;
wire      [6:0] n15__$198;
wire      [7:0] n16__$190;
wire      [7:0] n17__$192;
wire            n1__$97;
wire            n2__$171;
wire            n3__$175;
wire      [6:0] n4__$99;
wire            n6__$102;
wire            n7__$177;
wire            n8__$180;
wire            n9__$182;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
assign bv_1_1_n0__$95 = 1'h1 ;
assign n1__$97 =  ( child_valid ) == ( bv_1_1_n0__$95 )  ;
assign __ILA_BSG_UPSTREAM_OUT_valid__ = n1__$97 ;
assign n2__$171 = sent_cnt[0:0] ;
assign n3__$175 =  ( n2__$171 ) == ( bv_1_1_n0__$95 )  ;
assign n4__$99 =  ( sent_cnt ) - ( finish_cnt )  ;
assign bv_7_64_n5__$100 = 7'h40 ;
assign n6__$102 =  ( n4__$99 ) < ( bv_7_64_n5__$100 )  ;
assign n7__$177 =  ( n3__$175 ) & (n6__$102 )  ;
assign n8__$180 =  ( child_valid ) == ( bv_1_1_n0__$95 )  ;
assign n9__$182 =  ( n7__$177 ) & (n8__$180 )  ;
assign bv_1_0_n10__$183 = 1'h0 ;
assign n11__$185 =  ( counter ) == ( bv_1_0_n10__$183 )  ;
assign n12__$187 =  ( n9__$182 ) & (n11__$185 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ = n12__$187 ;
assign bv_7_1_n14__$196 = 7'h1 ;
assign n15__$198 =  ( sent_cnt ) + ( bv_7_1_n14__$196 )  ;
assign n16__$190 = data_cycle_1[7:0] ;
assign n17__$192 = data_cycle_1[23:16] ;
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
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ ) begin 
           __COUNTER_start__n13 <= 1; end
       else if( (__COUNTER_start__n13 >= 1 ) && ( __COUNTER_start__n13 < 255 )) begin
           __COUNTER_start__n13 <= __COUNTER_start__n13 + 1; end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           io_valid_out <= bv_1_1_n0__$95 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           data_cycle_0 <= data_cycle_0 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           data_cycle_1 <= data_cycle_1 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           child_valid <= child_valid ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           sent_cnt <= n15__$198 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           finish_cnt <= finish_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           io_data_out_ch0 <= n16__$190 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           io_data_out_ch1 <= n17__$192 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           counter <= bv_1_1_n0__$95 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           commit <= bv_1_1_n0__$95 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__) begin
           data_temp <= data_cycle_1 ;
       end
   end
end
endmodule
