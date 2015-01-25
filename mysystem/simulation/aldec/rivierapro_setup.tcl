
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

# ACDS 13.1 162 linux 2015.01.22.17:36:51

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "mysystem"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "/software/altera/quartus-13.1/quartus/"
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

set Aldec "Riviera"
if { [ string match "*Active-HDL*" [ vsim -version ] ] } {
  set Aldec "Active"
}

if { [ string match "Active" $Aldec ] } {
  scripterconf -tcl
  createdesign "$TOP_LEVEL_NAME"  "."
  opendesign "$TOP_LEVEL_NAME"
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/altera_up_video_char_mode_rom_128.mif ./
  file copy -force $QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.mif ./
  file copy -force $QSYS_SIMDIR/submodules/mysystem_Onchip_SRAM.hex ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib      ./libraries     
ensure_lib      ./libraries/work
vmap       work ./libraries/work
ensure_lib                       ./libraries/altera_ver           
vmap       altera_ver            ./libraries/altera_ver           
ensure_lib                       ./libraries/lpm_ver              
vmap       lpm_ver               ./libraries/lpm_ver              
ensure_lib                       ./libraries/sgate_ver            
vmap       sgate_ver             ./libraries/sgate_ver            
ensure_lib                       ./libraries/altera_mf_ver        
vmap       altera_mf_ver         ./libraries/altera_mf_ver        
ensure_lib                       ./libraries/altera_lnsim_ver     
vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver     
ensure_lib                       ./libraries/cyclonev_ver         
vmap       cyclonev_ver          ./libraries/cyclonev_ver         
ensure_lib                       ./libraries/cyclonev_hssi_ver    
vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver    
ensure_lib                       ./libraries/cyclonev_pcie_hip_ver
vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver
ensure_lib                                                                         ./libraries/altera_common_sv_packages                                              
vmap       altera_common_sv_packages                                               ./libraries/altera_common_sv_packages                                              
ensure_lib                                                                         ./libraries/video_pll                                                              
vmap       video_pll                                                               ./libraries/video_pll                                                              
ensure_lib                                                                         ./libraries/border                                                                 
vmap       border                                                                  ./libraries/border                                                                 
ensure_lib                                                                         ./libraries/rsp_xbar_mux                                                           
vmap       rsp_xbar_mux                                                            ./libraries/rsp_xbar_mux                                                           
ensure_lib                                                                         ./libraries/rsp_xbar_demux                                                         
vmap       rsp_xbar_demux                                                          ./libraries/rsp_xbar_demux                                                         
ensure_lib                                                                         ./libraries/cmd_xbar_mux                                                           
vmap       cmd_xbar_mux                                                            ./libraries/cmd_xbar_mux                                                           
ensure_lib                                                                         ./libraries/cmd_xbar_demux                                                         
vmap       cmd_xbar_demux                                                          ./libraries/cmd_xbar_demux                                                         
ensure_lib                                                                         ./libraries/id_router                                                              
vmap       id_router                                                               ./libraries/id_router                                                              
ensure_lib                                                                         ./libraries/addr_router                                                            
vmap       addr_router                                                             ./libraries/addr_router                                                            
ensure_lib                                                                         ./libraries/width_adapter                                                          
vmap       width_adapter                                                           ./libraries/width_adapter                                                          
ensure_lib                                                                         ./libraries/rsp_xbar_mux_002                                                       
vmap       rsp_xbar_mux_002                                                        ./libraries/rsp_xbar_mux_002                                                       
ensure_lib                                                                         ./libraries/rsp_xbar_demux_003                                                     
vmap       rsp_xbar_demux_003                                                      ./libraries/rsp_xbar_demux_003                                                     
ensure_lib                                                                         ./libraries/rsp_xbar_demux_002                                                     
vmap       rsp_xbar_demux_002                                                      ./libraries/rsp_xbar_demux_002                                                     
ensure_lib                                                                         ./libraries/rsp_xbar_demux_001                                                     
vmap       rsp_xbar_demux_001                                                      ./libraries/rsp_xbar_demux_001                                                     
ensure_lib                                                                         ./libraries/cmd_xbar_mux_003                                                       
vmap       cmd_xbar_mux_003                                                        ./libraries/cmd_xbar_mux_003                                                       
ensure_lib                                                                         ./libraries/cmd_xbar_mux_002                                                       
vmap       cmd_xbar_mux_002                                                        ./libraries/cmd_xbar_mux_002                                                       
ensure_lib                                                                         ./libraries/cmd_xbar_mux_001                                                       
vmap       cmd_xbar_mux_001                                                        ./libraries/cmd_xbar_mux_001                                                       
ensure_lib                                                                         ./libraries/cmd_xbar_demux_002                                                     
vmap       cmd_xbar_demux_002                                                      ./libraries/cmd_xbar_demux_002                                                     
ensure_lib                                                                         ./libraries/burst_adapter                                                          
vmap       burst_adapter                                                           ./libraries/burst_adapter                                                          
ensure_lib                                                                         ./libraries/limiter                                                                
vmap       limiter                                                                 ./libraries/limiter                                                                
ensure_lib                                                                         ./libraries/id_router_003                                                          
vmap       id_router_003                                                           ./libraries/id_router_003                                                          
ensure_lib                                                                         ./libraries/id_router_002                                                          
vmap       id_router_002                                                           ./libraries/id_router_002                                                          
ensure_lib                                                                         ./libraries/id_router_001                                                          
vmap       id_router_001                                                           ./libraries/id_router_001                                                          
ensure_lib                                                                         ./libraries/addr_router_002                                                        
vmap       addr_router_002                                                         ./libraries/addr_router_002                                                        
ensure_lib                                                                         ./libraries/Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent_rsp_fifo      
vmap       Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent_rsp_fifo       ./libraries/Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent_rsp_fifo      
ensure_lib                                                                         ./libraries/Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent               
vmap       Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent                ./libraries/Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent               
ensure_lib                                                                         ./libraries/vgasystem_0_pixel_dma_master_translator_avalon_universal_master_0_agent
vmap       vgasystem_0_pixel_dma_master_translator_avalon_universal_master_0_agent ./libraries/vgasystem_0_pixel_dma_master_translator_avalon_universal_master_0_agent
ensure_lib                                                                         ./libraries/arm_a9_hps_h2f_axi_master_agent                                        
vmap       arm_a9_hps_h2f_axi_master_agent                                         ./libraries/arm_a9_hps_h2f_axi_master_agent                                        
ensure_lib                                                                         ./libraries/Onchip_SRAM_s1_translator                                              
vmap       Onchip_SRAM_s1_translator                                               ./libraries/Onchip_SRAM_s1_translator                                              
ensure_lib                                                                         ./libraries/vgasystem_0_pixel_dma_master_translator                                
vmap       vgasystem_0_pixel_dma_master_translator                                 ./libraries/vgasystem_0_pixel_dma_master_translator                                
ensure_lib                                                                         ./libraries/VGA_Controller                                                         
vmap       VGA_Controller                                                          ./libraries/VGA_Controller                                                         
ensure_lib                                                                         ./libraries/VGA_Dual_Clock_FIFO                                                    
vmap       VGA_Dual_Clock_FIFO                                                     ./libraries/VGA_Dual_Clock_FIFO                                                    
ensure_lib                                                                         ./libraries/VGA_Alpha_Blender                                                      
vmap       VGA_Alpha_Blender                                                       ./libraries/VGA_Alpha_Blender                                                      
ensure_lib                                                                         ./libraries/VGA_Char_Buffer                                                        
vmap       VGA_Char_Buffer                                                         ./libraries/VGA_Char_Buffer                                                        
ensure_lib                                                                         ./libraries/VGA_Pixel_Scaler                                                       
vmap       VGA_Pixel_Scaler                                                        ./libraries/VGA_Pixel_Scaler                                                       
ensure_lib                                                                         ./libraries/VGA_Pixel_RGB_Resampler_0                                              
vmap       VGA_Pixel_RGB_Resampler_0                                               ./libraries/VGA_Pixel_RGB_Resampler_0                                              
ensure_lib                                                                         ./libraries/VGA_Pixel_FIFO                                                         
vmap       VGA_Pixel_FIFO                                                          ./libraries/VGA_Pixel_FIFO                                                         
ensure_lib                                                                         ./libraries/VGA_Pixel_DMA                                                          
vmap       VGA_Pixel_DMA                                                           ./libraries/VGA_Pixel_DMA                                                          
ensure_lib                                                                         ./libraries/vga_pll                                                                
vmap       vga_pll                                                                 ./libraries/vga_pll                                                                
ensure_lib                                                                         ./libraries/hps_io                                                                 
vmap       hps_io                                                                  ./libraries/hps_io                                                                 
ensure_lib                                                                         ./libraries/fpga_interfaces                                                        
vmap       fpga_interfaces                                                         ./libraries/fpga_interfaces                                                        
ensure_lib                                                                         ./libraries/reset_from_locked                                                      
vmap       reset_from_locked                                                       ./libraries/reset_from_locked                                                      
ensure_lib                                                                         ./libraries/sys_pll                                                                
vmap       sys_pll                                                                 ./libraries/sys_pll                                                                
ensure_lib                                                                         ./libraries/rst_controller                                                         
vmap       rst_controller                                                          ./libraries/rst_controller                                                         
ensure_lib                                                                         ./libraries/irq_mapper_001                                                         
vmap       irq_mapper_001                                                          ./libraries/irq_mapper_001                                                         
ensure_lib                                                                         ./libraries/irq_mapper                                                             
vmap       irq_mapper                                                              ./libraries/irq_mapper                                                             
ensure_lib                                                                         ./libraries/mm_interconnect_1                                                      
vmap       mm_interconnect_1                                                       ./libraries/mm_interconnect_1                                                      
ensure_lib                                                                         ./libraries/mm_interconnect_0                                                      
vmap       mm_interconnect_0                                                       ./libraries/mm_interconnect_0                                                      
ensure_lib                                                                         ./libraries/SDRAM                                                                  
vmap       SDRAM                                                                   ./libraries/SDRAM                                                                  
ensure_lib                                                                         ./libraries/vgasystem_0                                                            
vmap       vgasystem_0                                                             ./libraries/vgasystem_0                                                            
ensure_lib                                                                         ./libraries/jtag_uart                                                              
vmap       jtag_uart                                                               ./libraries/jtag_uart                                                              
ensure_lib                                                                         ./libraries/Onchip_SRAM                                                            
vmap       Onchip_SRAM                                                             ./libraries/Onchip_SRAM                                                            
ensure_lib                                                                         ./libraries/arm_a9_hps                                                             
vmap       arm_a9_hps                                                              ./libraries/arm_a9_hps                                                             
ensure_lib                                                                         ./libraries/system_pll                                                             
vmap       system_pll                                                              ./libraries/system_pll                                                             

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  vlog +define+SKIP_KEYWORDS_PRAGMA "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                    -work altera_ver           
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                             -work lpm_ver              
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                -work sgate_ver            
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                            -work altera_mf_ver        
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                        -work altera_lnsim_ver     
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_atoms_ncrypt.v"          -work cyclonev_ver         
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_hmi_atoms_ncrypt.v"      -work cyclonev_ver         
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.v"                       -work cyclonev_ver         
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_hssi_atoms_ncrypt.v"     -work cyclonev_hssi_ver    
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_hssi_atoms.v"                  -work cyclonev_hssi_ver    
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/aldec/cyclonev_pcie_hip_atoms_ncrypt.v" -work cyclonev_pcie_hip_ver
  vlog                              "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_pcie_hip_atoms.v"              -work cyclonev_pcie_hip_ver
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog  "$QSYS_SIMDIR/submodules/verbosity_pkg.sv"                                                              -work altera_common_sv_packages                                              
  vlog  "$QSYS_SIMDIR/submodules/avalon_utilities_pkg.sv"                                                       -work altera_common_sv_packages                                              
  vlog  "$QSYS_SIMDIR/submodules/avalon_mm_pkg.sv"                                                              -work altera_common_sv_packages                                              
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_vga_pll_video_pll.vo"                                     -work video_pll                                                              
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                    -l altera_common_sv_packages -work border                                                                 
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                  -l altera_common_sv_packages -work border                                                                 
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                    -l altera_common_sv_packages -work border                                                                 
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                    -l altera_common_sv_packages -work border                                                                 
  vlog  "$QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_hps_io_border_memory.sv"      -l altera_common_sv_packages -work border                                                                 
  vlog  "$QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_hps_io_border.sv"             -l altera_common_sv_packages -work border                                                                 
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -l altera_common_sv_packages -work rsp_xbar_mux                                                           
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_rsp_xbar_mux.sv"       -l altera_common_sv_packages -work rsp_xbar_mux                                                           
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_rsp_xbar_demux.sv"     -l altera_common_sv_packages -work rsp_xbar_demux                                                         
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -l altera_common_sv_packages -work cmd_xbar_mux                                                           
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_cmd_xbar_mux.sv"       -l altera_common_sv_packages -work cmd_xbar_mux                                                           
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_cmd_xbar_demux.sv"     -l altera_common_sv_packages -work cmd_xbar_demux                                                         
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_id_router.sv"          -l altera_common_sv_packages -work id_router                                                              
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1_addr_router.sv"        -l altera_common_sv_packages -work addr_router                                                            
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_width_adapter.sv"                   -l altera_common_sv_packages -work width_adapter                                                          
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"               -l altera_common_sv_packages -work width_adapter                                                          
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"              -l altera_common_sv_packages -work width_adapter                                                          
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -l altera_common_sv_packages -work rsp_xbar_mux_002                                                       
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_mux_002.sv"   -l altera_common_sv_packages -work rsp_xbar_mux_002                                                       
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -l altera_common_sv_packages -work rsp_xbar_mux                                                           
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_mux.sv"       -l altera_common_sv_packages -work rsp_xbar_mux                                                           
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux_003.sv" -l altera_common_sv_packages -work rsp_xbar_demux_003                                                     
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux_002.sv" -l altera_common_sv_packages -work rsp_xbar_demux_002                                                     
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux_001.sv" -l altera_common_sv_packages -work rsp_xbar_demux_001                                                     
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_rsp_xbar_demux.sv"     -l altera_common_sv_packages -work rsp_xbar_demux                                                         
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -l altera_common_sv_packages -work cmd_xbar_mux_003                                                       
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux_003.sv"   -l altera_common_sv_packages -work cmd_xbar_mux_003                                                       
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -l altera_common_sv_packages -work cmd_xbar_mux_002                                                       
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux_002.sv"   -l altera_common_sv_packages -work cmd_xbar_mux_002                                                       
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -l altera_common_sv_packages -work cmd_xbar_mux_001                                                       
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux_001.sv"   -l altera_common_sv_packages -work cmd_xbar_mux_001                                                       
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_arbitrator.sv"                      -l altera_common_sv_packages -work cmd_xbar_mux                                                           
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_mux.sv"       -l altera_common_sv_packages -work cmd_xbar_mux                                                           
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_demux_002.sv" -l altera_common_sv_packages -work cmd_xbar_demux_002                                                     
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_cmd_xbar_demux.sv"     -l altera_common_sv_packages -work cmd_xbar_demux                                                         
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_adapter.sv"                   -l altera_common_sv_packages -work burst_adapter                                                          
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"               -l altera_common_sv_packages -work burst_adapter                                                          
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_traffic_limiter.sv"                 -l altera_common_sv_packages -work limiter                                                                
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_reorder_memory.sv"                  -l altera_common_sv_packages -work limiter                                                                
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                          -l altera_common_sv_packages -work limiter                                                                
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_st_pipeline_base.v"                 -l altera_common_sv_packages -work limiter                                                                
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router_003.sv"      -l altera_common_sv_packages -work id_router_003                                                          
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router_002.sv"      -l altera_common_sv_packages -work id_router_002                                                          
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router_001.sv"      -l altera_common_sv_packages -work id_router_001                                                          
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_id_router.sv"          -l altera_common_sv_packages -work id_router                                                              
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_addr_router_002.sv"    -l altera_common_sv_packages -work addr_router_002                                                        
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0_addr_router.sv"        -l altera_common_sv_packages -work addr_router                                                            
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_sc_fifo.v"                                                       -work Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent_rsp_fifo      
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_slave_agent.sv"                     -l altera_common_sv_packages -work Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent               
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_burst_uncompressor.sv"              -l altera_common_sv_packages -work Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent               
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_master_agent.sv"                    -l altera_common_sv_packages -work vgasystem_0_pixel_dma_master_translator_avalon_universal_master_0_agent
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_axi_master_ni.sv"                   -l altera_common_sv_packages -work arm_a9_hps_h2f_axi_master_agent                                        
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_address_alignment.sv"               -l altera_common_sv_packages -work arm_a9_hps_h2f_axi_master_agent                                        
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_slave_translator.sv"                -l altera_common_sv_packages -work Onchip_SRAM_s1_translator                                              
  vlog  "$QSYS_SIMDIR/submodules/altera_merlin_master_translator.sv"               -l altera_common_sv_packages -work vgasystem_0_pixel_dma_master_translator                                
  vlog  "$QSYS_SIMDIR/submodules/altera_up_avalon_video_vga_timing.v"                                           -work VGA_Controller                                                         
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Controller.v"                                         -work VGA_Controller                                                         
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Dual_Clock_FIFO.v"                                    -work VGA_Dual_Clock_FIFO                                                    
  vlog  "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_normal.v"                                        -work VGA_Alpha_Blender                                                      
  vlog  "$QSYS_SIMDIR/submodules/altera_up_video_alpha_blender_simple.v"                                        -work VGA_Alpha_Blender                                                      
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Alpha_Blender.v"                                      -work VGA_Alpha_Blender                                                      
  vlog  "$QSYS_SIMDIR/submodules/altera_up_video_128_character_rom.v"                                           -work VGA_Char_Buffer                                                        
  vlog  "$QSYS_SIMDIR/submodules/altera_up_video_fb_color_rom.v"                                                -work VGA_Char_Buffer                                                        
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Char_Buffer.v"                                        -work VGA_Char_Buffer                                                        
  vlog  "$QSYS_SIMDIR/submodules/altera_up_video_scaler_shrink.v"                                               -work VGA_Pixel_Scaler                                                       
  vlog  "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_width.v"                                       -work VGA_Pixel_Scaler                                                       
  vlog  "$QSYS_SIMDIR/submodules/altera_up_video_scaler_multiply_height.v"                                      -work VGA_Pixel_Scaler                                                       
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_Scaler.v"                                       -work VGA_Pixel_Scaler                                                       
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_RGB_Resampler_0.v"                              -work VGA_Pixel_RGB_Resampler_0                                              
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_FIFO.v"                                         -work VGA_Pixel_FIFO                                                         
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_VGA_Pixel_DMA.v"                                          -work VGA_Pixel_DMA                                                          
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0_vga_pll.v"                                                -work vga_pll                                                                
  vlog  "$QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_hps_io.v"                                                  -work hps_io                                                                 
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_mm_slave_bfm.sv"                    -l altera_common_sv_packages -work fpga_interfaces                                                        
  vlog  "$QSYS_SIMDIR/submodules/questa_mvc_svapi.svh"                             -l altera_common_sv_packages -work fpga_interfaces                                                        
  vlog  "$QSYS_SIMDIR/submodules/mgc_common_axi.sv"                                -l altera_common_sv_packages -work fpga_interfaces                                                        
  vlog  "$QSYS_SIMDIR/submodules/mgc_axi_master.sv"                                -l altera_common_sv_packages -work fpga_interfaces                                                        
  vlog  "$QSYS_SIMDIR/submodules/mgc_axi_slave.sv"                                 -l altera_common_sv_packages -work fpga_interfaces                                                        
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_interrupt_sink.sv"                  -l altera_common_sv_packages -work fpga_interfaces                                                        
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_clock_source.sv"                    -l altera_common_sv_packages -work fpga_interfaces                                                        
  vlog  "$QSYS_SIMDIR/submodules/altera_avalon_reset_source.sv"                    -l altera_common_sv_packages -work fpga_interfaces                                                        
  vlog  "$QSYS_SIMDIR/submodules/mysystem_arm_a9_hps_fpga_interfaces.sv"           -l altera_common_sv_packages -work fpga_interfaces                                                        
  vlog  "$QSYS_SIMDIR/submodules/altera_up_avalon_reset_from_locked_signal.v"                                   -work reset_from_locked                                                      
  vlog  "$QSYS_SIMDIR/submodules/mysystem_system_pll_sys_pll.vo"                                                -work sys_pll                                                                
  vlog  "$QSYS_SIMDIR/submodules/altera_reset_controller.v"                                                     -work rst_controller                                                         
  vlog  "$QSYS_SIMDIR/submodules/altera_reset_synchronizer.v"                                                   -work rst_controller                                                         
  vlog  "$QSYS_SIMDIR/submodules/mysystem_irq_mapper_001.sv"                       -l altera_common_sv_packages -work irq_mapper_001                                                         
  vlog  "$QSYS_SIMDIR/submodules/mysystem_irq_mapper.sv"                           -l altera_common_sv_packages -work irq_mapper                                                             
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_1.v"                                                  -work mm_interconnect_1                                                      
  vlog  "$QSYS_SIMDIR/submodules/mysystem_mm_interconnect_0.v"                                                  -work mm_interconnect_0                                                      
  vlog  "$QSYS_SIMDIR/submodules/mysystem_SDRAM.v"                                                              -work SDRAM                                                                  
  vlog  "$QSYS_SIMDIR/submodules/mysystem_SDRAM_test_component.v"                                               -work SDRAM                                                                  
  vlog  "$QSYS_SIMDIR/submodules/mysystem_vgasystem_0.v"                                                        -work vgasystem_0                                                            
  vlog  "$QSYS_SIMDIR/submodules/mysystem_jtag_uart.v"                                                          -work jtag_uart                                                              
  vlog  "$QSYS_SIMDIR/submodules/mysystem_Onchip_SRAM.v"                                                        -work Onchip_SRAM                                                            
  vlog  "$QSYS_SIMDIR/submodules/mysystem_arm_a9_hps.v"                                                         -work arm_a9_hps                                                             
  vlog  "$QSYS_SIMDIR/submodules/mysystem_system_pll.v"                                                         -work system_pll                                                             
  vlog  "$QSYS_SIMDIR/mysystem.v"                                                                                                                                                            
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim +access +r -t ps $ELAB_OPTIONS -L work -L altera_common_sv_packages -L video_pll -L border -L rsp_xbar_mux -L rsp_xbar_demux -L cmd_xbar_mux -L cmd_xbar_demux -L id_router -L addr_router -L width_adapter -L rsp_xbar_mux_002 -L rsp_xbar_demux_003 -L rsp_xbar_demux_002 -L rsp_xbar_demux_001 -L cmd_xbar_mux_003 -L cmd_xbar_mux_002 -L cmd_xbar_mux_001 -L cmd_xbar_demux_002 -L burst_adapter -L limiter -L id_router_003 -L id_router_002 -L id_router_001 -L addr_router_002 -L Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent -L vgasystem_0_pixel_dma_master_translator_avalon_universal_master_0_agent -L arm_a9_hps_h2f_axi_master_agent -L Onchip_SRAM_s1_translator -L vgasystem_0_pixel_dma_master_translator -L VGA_Controller -L VGA_Dual_Clock_FIFO -L VGA_Alpha_Blender -L VGA_Char_Buffer -L VGA_Pixel_Scaler -L VGA_Pixel_RGB_Resampler_0 -L VGA_Pixel_FIFO -L VGA_Pixel_DMA -L vga_pll -L hps_io -L fpga_interfaces -L reset_from_locked -L sys_pll -L rst_controller -L irq_mapper_001 -L irq_mapper -L mm_interconnect_1 -L mm_interconnect_0 -L SDRAM -L vgasystem_0 -L jtag_uart -L Onchip_SRAM -L arm_a9_hps -L system_pll -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with -dbg -O2 option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -dbg -O2 +access +r -t ps $ELAB_OPTIONS -L work -L altera_common_sv_packages -L video_pll -L border -L rsp_xbar_mux -L rsp_xbar_demux -L cmd_xbar_mux -L cmd_xbar_demux -L id_router -L addr_router -L width_adapter -L rsp_xbar_mux_002 -L rsp_xbar_demux_003 -L rsp_xbar_demux_002 -L rsp_xbar_demux_001 -L cmd_xbar_mux_003 -L cmd_xbar_mux_002 -L cmd_xbar_mux_001 -L cmd_xbar_demux_002 -L burst_adapter -L limiter -L id_router_003 -L id_router_002 -L id_router_001 -L addr_router_002 -L Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent_rsp_fifo -L Onchip_SRAM_s1_translator_avalon_universal_slave_0_agent -L vgasystem_0_pixel_dma_master_translator_avalon_universal_master_0_agent -L arm_a9_hps_h2f_axi_master_agent -L Onchip_SRAM_s1_translator -L vgasystem_0_pixel_dma_master_translator -L VGA_Controller -L VGA_Dual_Clock_FIFO -L VGA_Alpha_Blender -L VGA_Char_Buffer -L VGA_Pixel_Scaler -L VGA_Pixel_RGB_Resampler_0 -L VGA_Pixel_FIFO -L VGA_Pixel_DMA -L vga_pll -L hps_io -L fpga_interfaces -L reset_from_locked -L sys_pll -L rst_controller -L irq_mapper_001 -L irq_mapper -L mm_interconnect_1 -L mm_interconnect_0 -L SDRAM -L vgasystem_0 -L jtag_uart -L Onchip_SRAM -L arm_a9_hps -L system_pll -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -dbg -O2
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with -dbg -O2 option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -dbg -O2"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
