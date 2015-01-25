
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
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="mysystem"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="/software/altera/quartus-13.1/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
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
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/altera_common_sv_packages/
mkdir -p ./libraries/video_pll/
mkdir -p ./libraries/border/
mkdir -p ./libraries/rsp_xbar_mux/
mkdir -p ./libraries/rsp_xbar_demux/
mkdir -p ./libraries/cmd_xbar_mux/
mkdir -p ./libraries/cmd_xbar_demux/
mkdir -p ./libraries/id_router/
mkdir -p ./libraries/addr_router/
mkdir -p ./libraries/width_adapter/
mkdir -p ./libraries/rsp_xbar_mux_002/
mkdir -p ./libraries/rsp_xbar_demux_003/
mkdir -p ./libraries/rsp_xbar_demux_002/
mkdir -p ./libraries/rsp_xbar_demux_001/
mkdir -p ./libraries/cmd_xbar_mux_003/
mkdir -p ./libraries/cmd_xbar_mux_002/
mkdir -p ./libraries/cmd_xbar_mux_001/
mkdir -p ./libraries/cmd_xbar_demux_002/
mkdir -p ./libraries/burst_adapter/
mkdir -p ./libraries/limiter/
mkdir -p ./libraries/id_router_003/
mkdir -p ./libraries/id_router_002/
mkdir -p ./libraries/id_router_001/
mkdir -p ./libraries/addr_router_002/
mkdir -p ./libraries/Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent_rsp_fifo/
mkdir -p ./libraries/Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent/
mkdir -p ./libraries/vgasystem_0_pixel_dma_master_translator_avalon_universal_master_0_agent/
mkdir -p ./libraries/arm_a9_hps_h2f_axi_master_agent/
mkdir -p ./libraries/Onchip_SRAM_s1_translator/
mkdir -p ./libraries/vgasystem_0_pixel_dma_master_translator/
mkdir -p ./libraries/VGA_Controller/
mkdir -p ./libraries/VGA_Dual_Clock_FIFO/
mkdir -p ./libraries/VGA_Alpha_Blender/
mkdir -p ./libraries/VGA_Char_Buffer/
mkdir -p ./libraries/VGA_Pixel_Scaler/
mkdir -p ./libraries/VGA_Pixel_RGB_Resampler_0/
mkdir -p ./libraries/VGA_Pixel_FIFO/
mkdir -p ./libraries/VGA_Pixel_DMA/
mkdir -p ./libraries/vga_pll/
mkdir -p ./libraries/hps_io/
mkdir -p ./libraries/fpga_interfaces/
mkdir -p ./libraries/reset_from_locked/
mkdir -p ./libraries/sys_pll/
mkdir -p ./libraries/rst_controller/
mkdir -p ./libraries/irq_mapper_001/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_1/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/SDRAM/
mkdir -p ./libraries/vgasystem_0/
mkdir -p ./libraries/jtag_uart/
mkdir -p ./libraries/Onchip_SRAM/
mkdir -p ./libraries/arm_a9_hps/
mkdir -p ./libraries/system_pll/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cyclonev_ver/
mkdir -p ./libraries/cyclonev_hssi_ver/
mkdir -p ./libraries/cyclonev_pcie_hip_ver/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/altera_up_video_char_mode_rom_128.mif ./
  cp -f $QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.mif ./
  cp -f $QSYS_SIMDIR/submodules/mysystem_Onchip_SRAM.hex ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                       -work altera_ver           
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                                -work lpm_ver              
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                   -work sgate_ver            
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                               -work altera_mf_ver        
  vlogan +v2k -sverilog "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                           -work altera_lnsim_ver     
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                          -work cyclonev_ver         
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                     -work cyclonev_hssi_ver    
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"                 -work cyclonev_pcie_hip_ver
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                 -work altera_common_sv_packages                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                          -work altera_common_sv_packages                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                 -work altera_common_sv_packages                                              
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_vga_pll_video_pll.vo"        -work video_pll                                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                    -work border                                                                 
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                  -work border                                                                 
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                    -work border                                                                 
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                    -work border                                                                 
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_hps_io_border_memory.sv"      -work border                                                                 
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_hps_io_border.sv"             -work border                                                                 
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -work rsp_xbar_mux                                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_rsp_xbar_mux.sv"       -work rsp_xbar_mux                                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_rsp_xbar_demux.sv"     -work rsp_xbar_demux                                                         
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -work cmd_xbar_mux                                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_cmd_xbar_mux.sv"       -work cmd_xbar_mux                                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_cmd_xbar_demux.sv"     -work cmd_xbar_demux                                                         
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_id_router.sv"          -work id_router                                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_addr_router.sv"        -work addr_router                                                            
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                   -work width_adapter                                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"               -work width_adapter                                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"              -work width_adapter                                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -work rsp_xbar_mux_002                                                       
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_mux_002.sv"   -work rsp_xbar_mux_002                                                       
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -work rsp_xbar_mux                                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_mux.sv"       -work rsp_xbar_mux                                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux_003.sv" -work rsp_xbar_demux_003                                                     
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux_002.sv" -work rsp_xbar_demux_002                                                     
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux_001.sv" -work rsp_xbar_demux_001                                                     
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux.sv"     -work rsp_xbar_demux                                                         
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -work cmd_xbar_mux_003                                                       
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux_003.sv"   -work cmd_xbar_mux_003                                                       
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -work cmd_xbar_mux_002                                                       
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux_002.sv"   -work cmd_xbar_mux_002                                                       
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -work cmd_xbar_mux_001                                                       
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux_001.sv"   -work cmd_xbar_mux_001                                                       
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -work cmd_xbar_mux                                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux.sv"       -work cmd_xbar_mux                                                           
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_demux_002.sv" -work cmd_xbar_demux_002                                                     
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_demux.sv"     -work cmd_xbar_demux                                                         
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                   -work burst_adapter                                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"               -work burst_adapter                                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                 -work limiter                                                                
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                  -work limiter                                                                
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                          -work limiter                                                                
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                 -work limiter                                                                
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router_003.sv"      -work id_router_003                                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router_002.sv"      -work id_router_002                                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router_001.sv"      -work id_router_001                                                          
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router.sv"          -work id_router                                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_addr_router_002.sv"    -work addr_router_002                                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_addr_router.sv"        -work addr_router                                                            
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                          -work Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent_rsp_fifo      
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                     -work Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"              -work Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent               
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                    -work vgasystem_0_pixel_dma_master_translator_avalon_universal_master_0_agent
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_axi_master_ni.sv"                   -work arm_a9_hps_h2f_axi_master_agent                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"               -work arm_a9_hps_h2f_axi_master_agent                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                -work Onchip_SRAM_s1_translator                                              
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"               -work vgasystem_0_pixel_dma_master_translator                                
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"              -work VGA_Controller                                                         
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Controller.v"            -work VGA_Controller                                                         
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Dual_Clock_FIFO.v"       -work VGA_Dual_Clock_FIFO                                                    
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_normal.v"           -work VGA_Alpha_Blender                                                      
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_simple.v"           -work VGA_Alpha_Blender                                                      
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Alpha_Blender.v"         -work VGA_Alpha_Blender                                                      
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_up_video_128_character_rom.v"              -work VGA_Char_Buffer                                                        
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.v"                   -work VGA_Char_Buffer                                                        
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Char_Buffer.v"           -work VGA_Char_Buffer                                                        
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                  -work VGA_Pixel_Scaler                                                       
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"          -work VGA_Pixel_Scaler                                                       
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"         -work VGA_Pixel_Scaler                                                       
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_Scaler.v"          -work VGA_Pixel_Scaler                                                       
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_RGB_Resampler_0.v" -work VGA_Pixel_RGB_Resampler_0                                              
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_FIFO.v"            -work VGA_Pixel_FIFO                                                         
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_DMA.v"             -work VGA_Pixel_DMA                                                          
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_vga_pll.v"                   -work vga_pll                                                                
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_hps_io.v"                     -work hps_io                                                                 
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                    -work fpga_interfaces                                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/questa_mvc_svapi.svh"                             -work fpga_interfaces                                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mgc_common_axi.sv"                                -work fpga_interfaces                                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mgc_axi_master.sv"                                -work fpga_interfaces                                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mgc_axi_slave.sv"                                 -work fpga_interfaces                                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                  -work fpga_interfaces                                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                    -work fpga_interfaces                                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                    -work fpga_interfaces                                                        
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_fpga_interfaces.sv"           -work fpga_interfaces                                                        
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_up_avalon_reset_from_locked_signal.v"      -work reset_from_locked                                                      
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_system_pll_sys_pll.vo"                   -work sys_pll                                                                
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                        -work rst_controller                                                         
  vlogan +v2k           "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                      -work rst_controller                                                         
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_irq_mapper_001.sv"                       -work irq_mapper_001                                                         
  vlogan +v2k -sverilog "$QSYS_SIMDIR/submodules/mysystem_irq_mapper.sv"                           -work irq_mapper                                                             
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1.v"                     -work mm_interconnect_1                                                      
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0.v"                     -work mm_interconnect_0                                                      
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_SDRAM.v"                                 -work SDRAM                                                                  
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_SDRAM_test_component.v"                  -work SDRAM                                                                  
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0.v"                           -work vgasystem_0                                                            
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_jtag_uart.v"                             -work jtag_uart                                                              
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_Onchip_SRAM.v"                           -work Onchip_SRAM                                                            
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_arm_a9_hps.v"                            -work arm_a9_hps                                                             
  vlogan +v2k           "$QSYS_SIMDIR/submodules/mysystem_system_pll.v"                            -work system_pll                                                             
  vlogan +v2k           "$QSYS_SIMDIR/mysystem.v"                                                                                                                               
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
