module BSG_UPSTREAM__DOT__DATA_IN(
__START__,
clk,
core_data_in,
core_valid_in,
io_ready,
rst,
__ILA_BSG_UPSTREAM_decode_of_DATA_IN__,
__ILA_BSG_UPSTREAM_valid__,
io_valid_out,
child_valid,
io_data_out_ch0,
io_data_out_ch1,
__COUNTER_start__n2
);
input            __START__;
input            clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_ready;
input            rst;
output            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
output            __ILA_BSG_UPSTREAM_valid__;
output reg            io_valid_out;
output reg            child_valid;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
output reg      [7:0] __COUNTER_start__n2;
wire            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
wire            __ILA_BSG_UPSTREAM_valid__;
wire            __START__;
wire            bv_1_1_n0__$26;
(* keep *) wire            child_valid_randinit;
wire            clk;
wire     [63:0] core_data_in;
wire            core_valid_in;
(* keep *) wire      [7:0] io_data_out_ch0_randinit;
(* keep *) wire      [7:0] io_data_out_ch1_randinit;
wire            io_ready;
(* keep *) wire            io_valid_out_randinit;
wire            n1__$28;
wire            rst;
assign __ILA_BSG_UPSTREAM_valid__ = 1'b1 ;
assign bv_1_1_n0__$26 = 1'h1 ;
assign n1__$28 =  ( core_valid_in ) == ( bv_1_1_n0__$26 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ = n1__$28 ;
always @(posedge clk) begin
   if(rst) begin
       io_valid_out <= io_valid_out_randinit ;
       child_valid <= child_valid_randinit ;
       io_data_out_ch0 <= io_data_out_ch0_randinit ;
       io_data_out_ch1 <= io_data_out_ch1_randinit ;
       __COUNTER_start__n2 <= 0;
   end
   else if(__START__ && __ILA_BSG_UPSTREAM_valid__) begin
       if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ ) begin 
           __COUNTER_start__n2 <= 1; end
       else if( (__COUNTER_start__n2 >= 1 ) && ( __COUNTER_start__n2 < 255 )) begin
           __COUNTER_start__n2 <= __COUNTER_start__n2 + 1; end
       if (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__) begin
           io_valid_out <= io_valid_out ;
       end
       if (__ILA_BSG_UPSTREAM_decode_of_DATA_IN__) begin
           child_valid <= bv_1_1_n0__$26 ;
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
