
# (C) 2001-2015 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 13.1 162 linux 2015.01.22.17:36:50

# ----------------------------------------
# vcs - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="mysystem"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/software/altera/quartus-13.1/quartus/"
SKIP_FILE_COPY=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"
# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/altera_up_video_char_mode_rom_128.mif ./
  cp -f $QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.mif ./
  cp -f $QSYS_SIMDIR/submodules/mysystem_Onchip_SRAM.hex ./
fi

vcs -lca -timescale=1ps/1ps -sverilog +verilog2001ext+.v -ntb_opts dtm $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v \
  $QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v \
  -v $QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v \
  $QSYS_SIMDIR/submodules/verbosity_pkg.sv \
  $QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv \
  $QSYS_SIMDIR/submodules/avalon_mm_pkg.sv \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0_vga_pll_video_pll.vo \
  $QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv \
  $QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_hps_io_border_memory.sv \
  $QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_hps_io_border.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_rsp_xbar_mux.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_rsp_xbar_demux.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_cmd_xbar_mux.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_cmd_xbar_demux.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_id_router.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_addr_router.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_mux_002.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_mux.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux_003.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux_002.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux_001.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux_003.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux_002.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux_001.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_demux_002.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_demux.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv \
  $QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v \
  $QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router_003.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router_002.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router_001.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_addr_router_002.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_addr_router.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_axi_master_ni.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv \
  $QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv \
  $QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Controller.v \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Dual_Clock_FIFO.v \
  $QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_normal.v \
  $QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_simple.v \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Alpha_Blender.v \
  $QSYS_SIMDIR/submodules/altera_up_video_128_character_rom.v \
  $QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.v \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Char_Buffer.v \
  $QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v \
  $QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v \
  $QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_Scaler.v \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_RGB_Resampler_0.v \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_FIFO.v \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_DMA.v \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0_vga_pll.v \
  $QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_hps_io.v \
  $QSYS_SIMDIR/submodules/questa_mvc_svapi.svh \
  $QSYS_SIMDIR/submodules/mgc_common_axi.sv \
  $QSYS_SIMDIR/submodules/mgc_axi_master.sv \
  $QSYS_SIMDIR/submodules/mgc_axi_slave.sv \
  $QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_fpga_interfaces.sv \
  $QSYS_SIMDIR/submodules/altera_up_avalon_reset_from_locked_signal.v \
  $QSYS_SIMDIR/submodules/mysystem_system_pll_sys_pll.vo \
  $QSYS_SIMDIR/submodules/altera_reset_controller.v \
  $QSYS_SIMDIR/submodules/altera_reset_synchronizer.v \
  $QSYS_SIMDIR/submodules/mysystem_irq_mapper_001.sv \
  $QSYS_SIMDIR/submodules/mysystem_irq_mapper.sv \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1.v \
  $QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0.v \
  $QSYS_SIMDIR/submodules/mysystem_SDRAM.v \
  $QSYS_SIMDIR/submodules/mysystem_SDRAM_test_component.v \
  $QSYS_SIMDIR/submodules/mysystem_vgasystem_0.v \
  $QSYS_SIMDIR/submodules/mysystem_jtag_uart.v \
  $QSYS_SIMDIR/submodules/mysystem_Onchip_SRAM.v \
  $QSYS_SIMDIR/submodules/mysystem_arm_a9_hps.v \
  $QSYS_SIMDIR/submodules/mysystem_system_pll.v \
  $QSYS_SIMDIR/mysystem.v \
  -top $TOP_LEVEL_NAME
# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
