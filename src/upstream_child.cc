/// \file The child ila of upstream
///  Huaixi Lu

#include "stream.h"

void BSG_UPSTREAM::AddChild(InstrRef& inst) {
  auto child = model.NewChild("BSG_UPSTREAM_OUT");

  child.SetValid(child_valid == BvConst(1,1));
  auto ready = (sent_cnt - finish_cnt) < BvConst(64, 7);
  auto cnt = child.NewBvState("counter", 1);
  auto commit = child.NewBvState("commit", 1);
  auto data_temp = child.NewBvState("data_temp", 64);

  // init conditions : when doing verification
  // should be exported as the status update of the higher-level
  // triggering instruction

  child.AddInit(cnt == BvConst(0, 1));

  { // First Cycle of Output: positive
    auto instr = child.NewInstr("Output0_p");
    instr.SetDecode(Extract(sent_cnt, 0, 0) == BvConst(0,1) & ready & child_valid == BvConst(1,1) & cnt == BvConst(0,1));
    
    instr.SetUpdate(commit, BvConst(1,1));
    for (int i = 0; i < CHANNEL_NUM; i++){
        instr.SetUpdate(io_data_out[i], 
        Extract(data_cycle_0, CHANNEL_WIDTH * (2 * i + 1) - 1, CHANNEL_WIDTH * 2 * i));
    }
    instr.SetUpdate(data_temp, data_cycle_0);
    instr.SetUpdate(io_valid_out, BvConst(1,1));
    
    instr.SetUpdate(cnt, BvConst(1,1));
    instr.SetUpdate(sent_cnt, sent_cnt + 1);
  }

  { // First Cycle of Output: negative
    auto instr = child.NewInstr("Output0_n");
    instr.SetDecode(Extract(sent_cnt, 0, 0) == BvConst(1,1) & commit & cnt == BvConst(1,1));

    for (int i = 0; i < CHANNEL_NUM; i++){
        instr.SetUpdate(io_data_out[i], 
        Extract(data_temp, CHANNEL_WIDTH * (2 * i + 2) - 1, CHANNEL_WIDTH * (2 * i + 1)));
    }
    instr.SetUpdate(io_valid_out, BvConst(0,1)); // only 1 on posedge
    instr.SetUpdate(cnt, BvConst(0,1));
  }

  { // Second Cycle of Output : positive
    auto instr = child.NewInstr("Output1_p");
    instr.SetDecode(Extract(sent_cnt, 0, 0) == BvConst(1,1) & ready & child_valid == BvConst(1,1) & cnt == BvConst(0,1));
    
    
    instr.SetUpdate(commit, BvConst(1,1));
    for (int i = 0; i < CHANNEL_NUM; i++){
        instr.SetUpdate(io_data_out[i], 
        Extract(data_cycle_1, CHANNEL_WIDTH * (2 * i + 1) - 1, CHANNEL_WIDTH * 2 * i));
    }
    
    instr.SetUpdate(data_temp, data_cycle_1);
    instr.SetUpdate(io_valid_out, BvConst(1,1));

    instr.SetUpdate(sent_cnt, sent_cnt + 1);
    instr.SetUpdate(cnt, BvConst(1,1));
  }

  { // Second Cycle of Output : negative
    auto instr = child.NewInstr("Output1_n");
    instr.SetDecode(Extract(sent_cnt, 0, 0) == BvConst(0,1) & commit & cnt == BvConst(1,1));

    instr.SetUpdate(child_valid, BvConst(0,1)); // Finish the child instr
    for (int i = 0; i < CHANNEL_NUM; i++){
        instr.SetUpdate(io_data_out[i], 
        Extract(data_temp, CHANNEL_WIDTH * (2 * i + 2) - 1, CHANNEL_WIDTH * (2 * i + 1)));
    }
    instr.SetUpdate(io_valid_out, BvConst(0,1)); // only 1 on posedge
    instr.SetUpdate(cnt, BvConst(0,1));
  }
}