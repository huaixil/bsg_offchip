module BSG_UPSTREAM_OUT__DOT__Output0_n(
__START__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__,
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
__COUNTER_start__n8
);
input            __START__;
input            clk;
input            core_clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__;
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
output reg      [7:0] __COUNTER_start__n8;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__;
wire            __ILA_BSG_UPSTREAM_OUT_valid__;
wire            __START__;
wire            bv_1_0_n9__$166;
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
wire      [7:0] n10__$162;
wire      [7:0] n11__$164;
wire            n1__$97;
wire            n2__$146;
wire            n3__$150;
wire            n4__$154;
wire            n5__$156;
wire            n6__$159;
wire            n7__$161;
wire            rst;
(* keep *) wire      [6:0] sent_cnt_randinit;
assign bv_1_1_n0__$95 = 1'h1 ;
assign n1__$97 =  ( child_valid ) == ( bv_1_1_n0__$95 )  ;
assign __ILA_BSG_UPSTREAM_OUT_valid__ = n1__$97 ;
assign n2__$146 = sent_cnt[0:0] ;
assign n3__$150 =  ( n2__$146 ) == ( bv_1_1_n0__$95 )  ;
assign n4__$154 =  ( commit ) == ( bv_1_1_n0__$95 )  ;
assign n5__$156 =  ( n3__$150 ) & (n4__$154 )  ;
assign n6__$159 =  ( counter ) == ( bv_1_1_n0__$95 )  ;
assign n7__$161 =  ( n5__$156 ) & (n6__$159 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__ = n7__$161 ;
assign bv_1_0_n9__$166 = 1'h0 ;
assign n10__$162 = data_temp[15:8] ;
assign n11__$164 = data_temp[31:24] ;
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
       __COUNTER_start__n8 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_OUT_valid__) begin
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__ ) begin 
           __COUNTER_start__n8 <= 1; end
       else if( (__COUNTER_start__n8 >= 1 ) && ( __COUNTER_start__n8 < 255 )) begin
           __COUNTER_start__n8 <= __COUNTER_start__n8 + 1; end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           io_valid_out <= bv_1_0_n9__$166 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           data_cycle_0 <= data_cycle_0 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           data_cycle_1 <= data_cycle_1 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           child_valid <= child_valid ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           sent_cnt <= sent_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           finish_cnt <= finish_cnt ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           io_data_out_ch0 <= n10__$162 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           io_data_out_ch1 <= n11__$164 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           counter <= bv_1_0_n9__$166 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           commit <= commit ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           data_temp <= data_temp ;
       end
   end
end
endmodule
