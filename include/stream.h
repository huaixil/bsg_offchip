/// \file the header for ILA models for bsg off-chip link
///  Huaixi Lu (huaixil@princeton.edu)
///


#ifndef BSG_LINK_ILA_H__
#define BSG_LINK_ILA_H__

#include <ilang/ilang++.h>
#include <vector>

using namespace ilang;

#define CORE_WIDTH      64
#define CHANNEL_NUM     2
#define CHANNEL_WIDTH   8
#define DATA_TEMP_WIDTH 16 // 2*8
#define COUNTER_BIT     1
#define COUNTER_MAX     BvConst(1, COUNTER_BIT)

#define b0 BoolConst(false)
#define b1 BoolConst(true)

/// \brief the class of BSG_LINK
// Upstream: Core -> I/O
// PISO -> Sync -> ODDR
class BSG_UPSTREAM {

public:
  // ------------- the ila model ------------//
  Ila model;
  // --------------- CONSTRUCTOR ----------- //
  BSG_UPSTREAM();

private:
  void AddChild(InstrRef& inst);

protected:
  ExprRef core_data_in;
  ExprRef core_valid_in;

  // -------- Output ------- //
  std::vector<ExprRef> io_data_out;
  ExprRef io_valid_out;
  ExprRef child_valid;
  
}; // class BSG_UPSTREAM

/// \brief the class of BSG_LINK
// DownStream: I/O -> Core
// IDDR -> Sync -> SIPO
class BSG_DOWNSTREAM {

public:
  // ------------- the ila model ------------//
  Ila model;
  // --------------- CONSTRUCTOR ----------- //
  BSG_DOWNSTREAM();
  
protected:
  // -------- Input ------- //
  ExprRef io_valid_in;
  std::vector<ExprRef> io_data_in;

  // -------- Output -------- //
  ExprRef core_data_out;
  ExprRef core_valid_out;

  // ------- Internal -------- //
  ExprRef cnt;
  ExprRef data_temp;
  
}; // class BSG_DOWNSTREAM

#endif // BSG_LINK_ILA_H__

