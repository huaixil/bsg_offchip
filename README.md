# BSG_OFFCHIP
Formal Protocol Implementation Verification of the Off-Chip Communication

## Resources
**Full implementation**: [bsg_link](https://github.com/bespoke-silicon-group/basejump_stl/tree/master/bsg_link).

**Simulation**: [bsg_network_test](https://github.com/bespoke-silicon-group/basejump_stl/tree/master/testing/bsg_noc/bsg_wormhole_network).

To run the simulation, you still have to 
  1. Comment out "export BSG_CADENV_DIR = $(dir)/bsg_cadenv" and "include $(BSG_CADENV_DIR)/cadenv.mk"
  2. Replace "$(VCS_BIN)/vcs" with your own VCS paths.
  
## Verification Process
1. Install [ILANG](https://bo-yuan-huang.gitbook.io/ilang/)
2. Generate verification targets for the implementation
```bash
mkdir -p build && mkdir verification && cd build
cmake .. && make
./BSGOFFCHIPExe
```
3. Open JasperGold and go into the generated instruction folder

```bash
cd $TOP_DIR/verification/Output0_p
source do.tcl
```
To Set up the clock, you may need
```
clock -clear; clock clk; clock clk __ILA_I_core_clk 2 1
```
