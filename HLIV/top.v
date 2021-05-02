module bsg_top
(
    core_clk,
    io_clk,
    rst,
    data_i,
    valid_i,
    core_yumi_i,
    data_o,
    valid_o
);

input core_clk;
input io_clk;
input rst;
input [63:0] data_i;
input valid_i;
input core_yumi_i;
output [63:0] data_o;
output valid_o;

wire edge_clk;
wire [15:0] edge_data;
wire edge_valid;
wire edge_token;

bsg_link_ddr_upstream upstream
(
  .core_clk_i (core_clk),
  .core_link_reset_i (rst),
  .core_data_i  (data_i),
  .core_valid_i (valid_i),
  .core_ready_o (),

  .io_clk_i (io_clk),
  .io_link_reset_i (rst),
  .async_token_reset_i (rst),

  .io_clk_r_o(edge_clk),
  .io_data_r_o(edge_data),
  .io_valid_r_o(edge_valid),

  .token_clk_i (edge_token)
);

bsg_link_ddr_downstream downstream
(
  .core_clk_i (core_clk),
  .core_link_reset_i (rst),
  .io_link_reset_i (rst),

  .core_data_o (data_o),
  .core_valid_o (valid_o),
  .core_yumi_i (core_yumi_i),

  .io_clk_i (edge_clk),
  .io_data_i (edge_data),
  .io_valid_i (edge_valid),
  .core_token_r_o (edge_token)
);

endmodule