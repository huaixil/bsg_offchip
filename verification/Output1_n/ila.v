module BSG_UPSTREAM_OUT__DOT__Output1_n(
__START__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_ready,
rst,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__,
__ILA_BSG_UPSTREAM_OUT_valid__,
io_valid_out,
child_valid,
io_data_out_ch0,
io_data_out_ch1,
counter,
__COUNTER_start__n5
);
input            __START__;
input            clk;
input            core_clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_ready;
input            rst;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__;
output            __ILA_BSG_UPSTREAM_OUT_valid__;
output reg            io_valid_out;
output reg            child_valid;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
output reg            counter;
output reg      [7:0] __COUNTER_start__n5;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__;
wire            __ILA_BSG_UPSTREAM_OUT_valid__;
wire            __START__;
wire            bv_1_0_n6__$126;
wire            bv_1_1_n0__$44;
(* keep *) wire            child_valid_randinit;
wire            clk;
wire            core_clk;
wire     [63:0] core_data_in;
wire            core_valid_in;
(* keep *) wire            counter_randinit;
(* keep *) wire      [7:0] io_data_out_ch0_randinit;
(* keep *) wire      [7:0] io_data_out_ch1_randinit;
wire            io_ready;
(* keep *) wire            io_valid_out_randinit;
wire            n1__$46;
wire            n2__$111;
wire            n3__$115;
wire            n4__$117;
wire      [7:0] n7__$122;
wire      [7:0] n8__$124;
wire            rst;
assign bv_1_1_n0__$44 = 1'h1 ;
assign n1__$46 =  ( child_valid ) == ( bv_1_1_n0__$44 )  ;
assign __ILA_BSG_UPSTREAM_OUT_valid__ = n1__$46 ;
assign n2__$111 =  ( counter ) == ( bv_1_1_n0__$44 )  ;
assign n3__$115 =  ( core_clk ) == ( bv_1_1_n0__$44 )  ;
assign n4__$117 =  ( n2__$111 ) & (n3__$115 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ = n4__$117 ;
assign bv_1_0_n6__$126 = 1'h0 ;
assign n7__$122 = core_data_in[47:40] ;
assign n8__$124 = core_data_in[63:56] ;
always @(posedge clk) begin
   if(rst) begin
       io_valid_out <= io_valid_out_randinit ;
       child_valid <= child_valid_randinit ;
       io_data_out_ch0 <= io_data_out_ch0_randinit ;
       io_data_out_ch1 <= io_data_out_ch1_randinit ;
       counter <= counter_randinit ;
       __COUNTER_start__n5 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_OUT_valid__) begin
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ ) begin 
           __COUNTER_start__n5 <= 1; end
       else if( (__COUNTER_start__n5 >= 1 ) && ( __COUNTER_start__n5 < 255 )) begin
           __COUNTER_start__n5 <= __COUNTER_start__n5 + 1; end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           io_valid_out <= bv_1_0_n6__$126 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           child_valid <= bv_1_0_n6__$126 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           io_data_out_ch0 <= n7__$122 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           io_data_out_ch1 <= n8__$124 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__) begin
           counter <= bv_1_0_n6__$126 ;
       end
   end
end
endmodule
