
################################################################
# This is a generated script based on design: Frequency_Synthesizer
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2021.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source Frequency_Synthesizer_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Hopping_Table

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu47dr-ffve1156-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name Frequency_Synthesizer

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set HOP_FREQUENCY_OUT [ create_bd_port -dir O -from 15 -to 0 -type data HOP_FREQUENCY_OUT ]
  set HOP_SEQUENCE [ create_bd_port -dir I -from 1 -to 0 -type data HOP_SEQUENCE ]
  set M_DATA_TVALID [ create_bd_port -dir O M_DATA_TVALID ]
  set M_PHASE_TVALID [ create_bd_port -dir O M_PHASE_TVALID ]
  set PHASE_TDATA [ create_bd_port -dir O -from 31 -to 0 PHASE_TDATA ]
  set RST_N [ create_bd_port -dir I -type rst RST_N ]
  set SYSTEM_CLOCK_1MHZ [ create_bd_port -dir I -type clk -freq_hz 1000000 SYSTEM_CLOCK_1MHZ ]
  set S_PHASE_TVALID [ create_bd_port -dir I S_PHASE_TVALID ]

  # Create instance: Hopping_Table_0, and set properties
  set block_name Hopping_Table
  set block_cell_name Hopping_Table_0
  if { [catch {set Hopping_Table_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Hopping_Table_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: dds_compiler_0, and set properties
  set dds_compiler_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dds_compiler:6.0 dds_compiler_0 ]
  set_property -dict [ list \
   CONFIG.DATA_Has_TLAST {Not_Required} \
   CONFIG.DDS_Clock_Rate {160} \
   CONFIG.Frequency_Resolution {0.4} \
   CONFIG.Latency {3} \
   CONFIG.M_DATA_Has_TUSER {Not_Required} \
   CONFIG.M_PHASE_Has_TUSER {Not_Required} \
   CONFIG.Mode_of_Operation {Standard} \
   CONFIG.Noise_Shaping {Auto} \
   CONFIG.Output_Frequency1 {0} \
   CONFIG.Output_Selection {Sine_and_Cosine} \
   CONFIG.Output_Width {8} \
   CONFIG.PINC1 {0} \
   CONFIG.Parameter_Entry {System_Parameters} \
   CONFIG.Phase_Increment {Streaming} \
   CONFIG.Phase_Width {29} \
   CONFIG.Resync {false} \
   CONFIG.S_PHASE_Has_TUSER {Not_Required} \
   CONFIG.Spurious_Free_Dynamic_Range {48} \
 ] $dds_compiler_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create port connections
  connect_bd_net -net HOP_SEQUENCE_1 [get_bd_ports HOP_SEQUENCE] [get_bd_pins Hopping_Table_0/hop_sequence]
  connect_bd_net -net Hopping_Table_0_fcontrol_word [get_bd_pins Hopping_Table_0/fcontrol_word] [get_bd_pins dds_compiler_0/s_axis_phase_tdata]
  connect_bd_net -net RST_N_1 [get_bd_ports RST_N] [get_bd_pins Hopping_Table_0/rst_n]
  connect_bd_net -net SYSTEM_CLOCK_1MHZ_1 [get_bd_ports SYSTEM_CLOCK_1MHZ] [get_bd_pins dds_compiler_0/aclk]
  connect_bd_net -net S_PHASE_TVALID_1 [get_bd_ports S_PHASE_TVALID] [get_bd_pins dds_compiler_0/s_axis_phase_tvalid]
  connect_bd_net -net dds_compiler_0_m_axis_data_tdata [get_bd_ports HOP_FREQUENCY_OUT] [get_bd_pins dds_compiler_0/m_axis_data_tdata]
  connect_bd_net -net dds_compiler_0_m_axis_data_tvalid [get_bd_ports M_DATA_TVALID] [get_bd_pins dds_compiler_0/m_axis_data_tvalid]
  connect_bd_net -net dds_compiler_0_m_axis_phase_tdata [get_bd_ports PHASE_TDATA] [get_bd_pins dds_compiler_0/m_axis_phase_tdata]
  connect_bd_net -net dds_compiler_0_m_axis_phase_tvalid [get_bd_ports M_PHASE_TVALID] [get_bd_pins dds_compiler_0/m_axis_phase_tvalid]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins Hopping_Table_0/clk] [get_bd_pins util_vector_logic_0/Res]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


