/// \file The child ila of downstream
///  Huaixi Lu

#include "stream.h"

void BSG_DOWNSTREAM::AddChild(InstrRef& inst) {

  auto child = model.NewChild("BSG_DOWNSTREAM_OUT");
  
  child.SetValid(child_valid == BvConst(1,1));

  { // First Cycle of Output: positive
    auto instr = child.NewInstr("DOWN_OUTPUT_FINAL");
    instr.SetDecode(child_valid == BvConst(1,1) & core_clk == BvConst(1,1));

    instr.SetUpdate(core_data_out, Concat(core_data1, core_data0));
    instr.SetUpdate(core_valid_out, BvConst(1, 1));
    instr.SetUpdate(child_valid, BvConst(0, 1));
  }
}