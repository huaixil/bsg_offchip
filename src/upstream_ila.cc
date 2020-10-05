/// \file the ila example of Downstream of BSG_Link
///  Huaixi Lu (huaixil@princeton.edu)
///

#include "stream.h"

BSG_UPSTREAM::BSG_UPSTREAM()
    : // construct the model
      model("BSG_UPSTREAM"),
    
    // Input
    core_data_in  (model.NewBvInput("core_data_in", CORE_WIDTH)),
    core_valid_in (model.NewBvInput("core_valid_in", 1)),

    // Output
    io_valid_out (model.NewBvState("io_valid_out", 1)),

    // Internal states
    child_valid (model.NewBvState("child_valid", 1))

{
    // Output
    for (int i = 0; i < CHANNEL_NUM; i++){
        io_data_out.push_back(model.NewBvState("io_data_out_ch" + std::to_string(i), CHANNEL_WIDTH));
    }

    // ------- Instruction ------ //
    {
        auto instr = model.NewInstr("DATA_IN");
        instr.SetDecode(core_valid_in == BvConst(1,1));
        instr.SetUpdate(child_valid, BvConst(1,1));
        AddChild(instr);
    }
}
