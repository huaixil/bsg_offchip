

// 1R 1W (x2) d=1 AW(V=I) DW(V=I) absmem
// CoSA & Jasper
// --- ra : read abstraction (depth = 1)
//
// Hongce Zhang (hongcez@princeton.edu)

module absmem_ra(
  clk,
  rst,
  vlg_raddr,
  vlg_rdata,
  vlg_ren,
  vlg_waddr,
  vlg_wdata,
  vlg_wen,

  vlg_r_rand_input,
  
  ila_raddr,
  ila_rdata,
  ila_ren,
  ila_waddr,
  ila_wdata,
  ila_wen,

  ila_r_rand_input,

  compare,
  equal,
  issue,
  read_assume_true
  );


parameter AW = 16;
parameter DW = 8;
parameter TTS = 65536;

input clk;
input rst;

input  [AW-1:0] vlg_raddr;
output [DW-1:0] vlg_rdata;
input           vlg_ren;
input  [AW-1:0] vlg_waddr;
input  [DW-1:0] vlg_wdata;
input           vlg_wen;
input  [DW-1:0] vlg_r_rand_input;


input  [AW-1:0] ila_raddr;
output [DW-1:0] ila_rdata;
input           ila_ren;
input  [AW-1:0] ila_waddr;
input  [DW-1:0] ila_wdata;
input           ila_wen;
input  [DW-1:0] ila_r_rand_input;

input           compare;
output          equal;
input           issue;
(* keep *) output          read_assume_true;

(* keep *)  reg             start_and_on;

wire vlg_ren_real;
wire vlg_wen_real;
wire ila_ren_real;
wire ila_wen_real;

(* keep *)  reg          vlg_r_e0;
(* keep *)  reg [AW-1:0] vlg_r_a0;
(* keep *)  reg [DW-1:0] vlg_r_d0;


(* keep *)  reg          ila_r_e0;
(* keep *)  reg [AW-1:0] ila_r_a0;
(* keep *)  reg [DW-1:0] ila_r_d0;

(* keep *)  reg          vlg_m_e0;
(* keep *)  reg [AW-1:0] vlg_m_a0;
(* keep *)  reg [DW-1:0] vlg_m_d0;


(* keep *)  reg          ila_m_e0;
(* keep *)  reg [AW-1:0] ila_m_a0;
(* keep *)  reg [DW-1:0] ila_m_d0;

(* keep *)  reg vlg_match_ila;
(* keep *)  reg ila_match_vlg;

always @(posedge clk) begin
  if(rst)
    start_and_on <= 1'b0;
  else if(issue)
    start_and_on <= 1'b1;
end

assign vlg_ren_real = vlg_ren & ~compare & start_and_on;
assign vlg_wen_real = vlg_wen & ~compare & start_and_on;
assign ila_ren_real = ila_ren & ~compare & start_and_on;
assign ila_wen_real = ila_wen & ~compare & start_and_on;


assign vlg_rdata = vlg_ren_real ? (
                      (vlg_m_e0 && vlg_m_a0 == vlg_raddr) ? vlg_m_d0
                   :  vlg_r_rand_input ) : vlg_r_rand_input;

assign ila_rdata = ila_ren_real ? (
                      (ila_m_e0 && ila_m_a0 == ila_raddr) ? ila_m_d0
                   : ila_r_rand_input) : ila_r_rand_input;

always @(posedge clk) begin 
  if( rst ) begin
    vlg_r_e0 <= 1'b0;
  end
  else begin 
    //if( vlg_ren_real && ( vlg_r_e0 == 0 || (vlg_r_e0 == 1 && vlg_r_a0 == vlg_raddr) ) ) begin
    if( vlg_ren_real && ( vlg_r_e0 == 0) ) begin
      vlg_r_e0 <= 1'b1;
      vlg_r_a0 <= vlg_raddr;
      vlg_r_d0 <= vlg_r_rand_input; // vlg_rdata;
    end
  end
end

always @(posedge clk) begin 
  if( rst ) begin
    ila_r_e0 <= 1'b0;
  end
  else begin 
    // if( ( ila_ren_real && ( ila_r_e0 == 0 || (ila_r_e0 == 1 && ila_r_a0 == ila_raddr ) ) ) )
    if( ila_ren_real && ( ila_r_e0 == 0) ) begin
      ila_r_e0 <= 1'b1;
      ila_r_a0 <= ila_raddr;
      ila_r_d0 <= ila_r_rand_input; // ila_rdata;
    end
    /*
    else if (  ila_wen_real && ila_r_e0 && ila_r_a0 == ila_waddr  ) begin
      ila_r_e0 <= ila_r_e0;
      ila_r_a0 <= ila_r_a0;
      ila_r_d0 <= ila_wdata;
    end*/
  end
end

// we only ensure that the initial read matches, not the read involve the new data (changed by write)
// if you change it, we guarantee nothing

assign read_assume_true = 
  (vlg_r_e0 && ila_r_e0 && vlg_r_a0 == ila_r_a0) == 0  || (vlg_r_d0 == ila_r_d0);

// ------------- WRITE LOGIC ---------------- //

always @(posedge clk) begin 
  if( rst ) begin
    vlg_m_e0 <= 1'b0;
  end
  else begin 
    if( vlg_wen_real && (  vlg_m_e0 == 0  || (vlg_m_e0 == 1'b1 && vlg_m_a0 == vlg_waddr) ) ) begin
      vlg_m_e0 <= 1'b1;
      vlg_m_a0 <= vlg_waddr;
      vlg_m_d0 <= vlg_wdata;
    end
  end
end

always @(posedge clk) begin 
  if( rst ) begin
    ila_m_e0 <= 1'b0;
  end
  else begin 
    if( ila_wen_real && ( ila_m_e0 == 0 || (ila_m_e0 == 1'b1 && ila_m_a0 == ila_waddr) ) ) begin
      ila_m_e0 <= 1'b1;
      ila_m_a0 <= ila_waddr;
      ila_m_d0 <= ila_wdata;
    end
  end
end


always @(*) begin
  vlg_match_ila = 0;
  if( vlg_m_e0 ) begin
    if(ila_m_e0 == 1 && ila_m_a0 == vlg_m_a0)
      vlg_match_ila = ila_m_d0 == vlg_m_d0;
    else if(ila_r_e0 == 1 && ila_r_a0 == vlg_m_a0)
      vlg_match_ila = ila_r_d0 == vlg_m_d0;
    //else if(vlg_m_d0 == mem[vlg_m_a0])
    //  vlg_match_ila = 1;
    //below is an over-approximation
    else
      vlg_match_ila = 0;
  end
  else 
    vlg_match_ila = 1;
end

always @(*) begin
  ila_match_vlg = 0;
  if( ila_m_e0 ) begin
    if(vlg_m_e0 == 1 && ila_m_a0 == vlg_m_a0)
      ila_match_vlg = ila_m_d0 == vlg_m_d0;
    else if(vlg_r_e0 == 1 && vlg_r_a0 == ila_m_a0)
      ila_match_vlg = ila_m_d0 == vlg_r_d0;
    //else if(ila_m_d0 == mem[ila_m_a0])
    //  ila_match_vlg = 1;
    else
      ila_match_vlg = 0;
  end
  else 
    ila_match_vlg = 1;
end

assign equal = compare && ila_match_vlg && vlg_match_ila;

endmodule


    