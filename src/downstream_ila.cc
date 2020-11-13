/// \file the ila example of upstream of BSG_Link
///  Huaixi Lu (huaixil@princeton.edu)
///

#include "stream.h"

BSG_DOWNSTREAM::BSG_DOWNSTREAM()
    : // construct the model
      model("BSG_DOWNSTREAM_ch"),
    
    // Input core clk
    core_clk (model.NewBvInput("core_clk", 1)),
    
    // Input data
    io_valid_in (model.NewBvInput("io_valid_in", 1)),
    io_data_in (model.NewBvInput("io_data_in", CHANNEL_WIDTH)),
    // Input ready
    core_ready (model.NewBvInput("core_ready", 1)),

    // Output
    core_data_out  (model.NewBvState("core_data_out", CORE_WIDTH/2)),
    core_valid_out (model.NewBvState("core_valid_out", 1)),
    io_token_out   (model.NewBvState("io_token_out", 1)),

    // Internal valid and data
    io_valid       (model.NewBvState("io_valid", 1)),
    io_data        (model.NewBvState("io_data", CHANNEL_WIDTH)),
    core_data0      (model.NewBvState("core_data0", CORE_WIDTH/4)),
    core_data1      (model.NewBvState("core_data1", CORE_WIDTH/4)),
    child_valid    (model.NewBvState("child_valid", 1)),

    // Internal State
    buffer (model.NewMemState("buffer", BUFFER_BIT, CORE_WIDTH/4)),
    rptr   (model.NewBvState("rptr", BUFFER_BIT + 1)),
    wptr   (model.NewBvState("wptr", BUFFER_BIT + 1)),
    wptr_t (model.NewBvState("wptr_t",  BUFFER_BIT + 1)),
    full   (model.NewBvState("full", 1))
{
    model.SetValid( /*always true*/ BoolConst(true) );
    // ------- Instruction ------ //
    {
        auto instr = model.NewInstr("DOWN_DATA_IN");
        instr.SetDecode((io_valid_in == BvConst(1,1) | io_valid == BvConst(1,1)) & full == BvConst(0,1)  );

        instr.SetUpdate(io_valid, Ite(io_valid == BvConst(1,1), BvConst(0,1), io_valid_in));
        instr.SetUpdate(io_data,  Ite(io_valid == BvConst(0,1), io_data_in, io_data));

        // write buffer
        instr.SetUpdate(buffer, Ite(io_valid == BvConst(1,1), Store(buffer, wptr(BUFFER_BIT - 1, 0), Concat(io_data_in, io_data)), buffer));

        auto wptr_updated = wptr + 1; 
        instr.SetUpdate(wptr, Ite(io_valid == BvConst(1,1), wptr_updated, wptr));
        instr.SetUpdate(full, Ite(io_valid == BvConst(1,1) & wptr_updated(BUFFER_BIT) != rptr(BUFFER_BIT) & wptr(BUFFER_BIT - 1, 0) == rptr(BUFFER_BIT - 1, 0), 
                              BvConst(1,1), BvConst(0,1)));
        instr.SetUpdate(wptr_t, Ite(io_valid == BvConst(1,1), wptr_updated, wptr));
    }

    {
        auto instr = model.NewInstr("DOWN_DATA_OUT0");
        instr.SetDecode(core_ready == BvConst(1,1) & wptr_t != rptr & rptr(0) == BvConst(0,1) & core_clk == BvConst(0,1));

        auto data_out = Load(buffer, rptr(BUFFER_BIT-1,0));
        instr.SetUpdate(core_data0, data_out);
        instr.SetUpdate(rptr, rptr + 1);
        instr.SetUpdate(full, BvConst(0,1));
    }

    {
        auto instr = model.NewInstr("DOWN_DATA_OUT1");
        instr.SetDecode(core_ready == BvConst(1,1) & wptr_t != rptr & rptr(0) == BvConst(1,1) & core_clk == BvConst(0,1));

        auto data_out = Load(buffer, rptr(BUFFER_BIT-1,0));
        auto rptr_updated = rptr + 1;
        instr.SetUpdate(io_token_out, rptr_updated(3));
        instr.SetUpdate(core_data1, data_out);
        instr.SetUpdate(rptr, rptr + 1);
        instr.SetUpdate(full, BvConst(0,1));
        instr.SetUpdate(child_valid, BvConst(1,1));
        AddChild(instr);
    }
}