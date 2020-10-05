/// \file The child ila of upstream
///  Huaixi Lu

#include "stream.h"

void BSG_UPSTREAM::AddChild(InstrRef& inst) {
  auto child = model.NewChild("BSG_UPSTREAM_OUT");

  child.SetValid(child_valid == BvConst(1,1));

  auto cnt = child.NewBvState("counter", COUNTER_BIT);

  // init conditions : when doing verification
  // should be exported as the status update of the higher-level
  // triggering instruction
  child.AddInit(cnt == BvConst(0, COUNTER_BIT));

  { // First Cycle of Output
    auto instr = child.NewInstr("OutPut0");
    instr.SetDecode(cnt == BvConst(0, COUNTER_BIT));

    instr.SetUpdate(cnt, BvConst(1, COUNTER_BIT));
    for (int i = 0; i < CHANNEL_NUM; i++){
        instr.SetUpdate(io_data_out[i], 
        Extract(core_data_in, CHANNEL_WIDTH * (i+1) - 1, CHANNEL_WIDTH * i));
    }
    instr.SetUpdate(io_valid_out, BvConst(1,1));
  }

  { // Second Cycle of Output
    auto instr = child.NewInstr("Output1");
    instr.SetDecode(cnt == BvConst(1, COUNTER_BIT));

    instr.SetUpdate(cnt, BvConst(0, COUNTER_BIT));
    instr.SetUpdate(child_valid, BvConst(0,1)); // Finish the child instr
    for (int i = 0; i < CHANNEL_NUM; i++){
        instr.SetUpdate(io_data_out[i], 
        Extract(core_data_in, CHANNEL_WIDTH * (i + 1 + CHANNEL_NUM) - 1, CHANNEL_WIDTH * (i + CHANNEL_NUM)));
    }
    instr.SetUpdate(io_valid_out, BvConst(1,1));
  }
}