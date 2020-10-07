module BSG_UPSTREAM_OUT__DOT__Output0_n(
__START__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_ready,
rst,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__,
__ILA_BSG_UPSTREAM_OUT_valid__,
io_valid_out,
child_valid,
io_data_out_ch0,
io_data_out_ch1,
counter,
__COUNTER_start__n6
);
input            __START__;
input            clk;
input            core_clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_ready;
input            rst;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__;
output            __ILA_BSG_UPSTREAM_OUT_valid__;
output reg            io_valid_out;
output reg            child_valid;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
output reg            counter;
output reg      [7:0] __COUNTER_start__n6;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__;
wire            __ILA_BSG_UPSTREAM_OUT_valid__;
wire            __START__;
wire            bv_1_0_n2__$73;
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
wire            n3__$75;
wire            n4__$79;
wire            n5__$81;
wire      [7:0] n7__$84;
wire      [7:0] n8__$86;
wire            rst;
assign bv_1_1_n0__$44 = 1'h1 ;
assign n1__$46 =  ( child_valid ) == ( bv_1_1_n0__$44 )  ;
assign __ILA_BSG_UPSTREAM_OUT_valid__ = n1__$46 ;
assign bv_1_0_n2__$73 = 1'h0 ;
assign n3__$75 =  ( counter ) == ( bv_1_0_n2__$73 )  ;
assign n4__$79 =  ( core_clk ) == ( bv_1_1_n0__$44 )  ;
assign n5__$81 =  ( n3__$75 ) & (n4__$79 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__ = n5__$81 ;
assign n7__$84 = core_data_in[15:8] ;
assign n8__$86 = core_data_in[31:24] ;
always @(posedge clk) begin
   if(rst) begin
       io_valid_out <= io_valid_out_randinit ;
       child_valid <= child_valid_randinit ;
       io_data_out_ch0 <= io_data_out_ch0_randinit ;
       io_data_out_ch1 <= io_data_out_ch1_randinit ;
       counter <= counter_randinit ;
       __COUNTER_start__n6 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_OUT_valid__) begin
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__ ) begin 
           __COUNTER_start__n6 <= 1; end
       else if( (__COUNTER_start__n6 >= 1 ) && ( __COUNTER_start__n6 < 255 )) begin
           __COUNTER_start__n6 <= __COUNTER_start__n6 + 1; end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           io_valid_out <= bv_1_0_n2__$73 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           child_valid <= child_valid ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           io_data_out_ch0 <= n7__$84 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           io_data_out_ch1 <= n8__$86 ;
       end
       if (__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__) begin
           counter <= bv_1_1_n0__$44 ;
       end
   end
end
endmodule
