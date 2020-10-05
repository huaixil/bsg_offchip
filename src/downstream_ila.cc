/// \file the ila example of upstream of BSG_Link
///  Huaixi Lu (huaixil@princeton.edu)
///

#include "stream.h"

BSG_DOWNSTREAM::BSG_DOWNSTREAM()
    : // construct the model
      model("BSG_DOWNSTREAM"),
    
    // Input
    io_valid_in (model.NewBvInput("io_valid_in", 1)),

    // Output
    core_data_out  (model.NewBvState("core_data_out", CORE_WIDTH)),
    core_valid_out (model.NewBvState("core_valid_out", 1)),

    // Internal State
    cnt (model.NewBvState("input_cnt", COUNTER_BIT)),
    data_temp (model.NewBvState("data_temp", CORE_WIDTH))

{
    model.AddInit(cnt == BvConst(0, COUNTER_BIT));
    // Input
    for (int i = 0; i < CHANNEL_NUM; i++){
        io_data_in.push_back(model.NewBvInput("io_data_in_ch" + std::to_string(i), CHANNEL_WIDTH));
    }

    // ------- Instruction ------ //
    {
        auto instr = model.NewInstr("DATA_IN");
        instr.SetDecode(io_valid_in == BvConst(1,1));

        auto data_temp1 = BvConst(0, CORE_WIDTH);
        data_temp1 = Concat(BvConst(0, CORE_WIDTH - CHANNEL_WIDTH), io_data_in[0]);
        for (int i = 1; i < CHANNEL_NUM; i++){
            data_temp1 = Concat(
                Extract(data_temp1, CORE_WIDTH - 1, CHANNEL_WIDTH), 
                io_data_in[i]);
        }

        instr.SetUpdate(cnt, Ite(cnt == COUNTER_MAX, BvConst(0, COUNTER_BIT), cnt + BvConst(1, COUNTER_BIT) ) );
        instr.SetUpdate(data_temp, Ite(cnt == COUNTER_MAX, BvConst(0, CORE_WIDTH), (data_temp << DATA_TEMP_WIDTH) + data_temp1 ));
        instr.SetUpdate(core_data_out, Ite(cnt == COUNTER_MAX, (data_temp << DATA_TEMP_WIDTH) + data_temp1, core_data_out ));
        instr.SetUpdate(core_valid_out, Ite(cnt == COUNTER_MAX, BvConst(1,1), core_valid_out));
    }
}