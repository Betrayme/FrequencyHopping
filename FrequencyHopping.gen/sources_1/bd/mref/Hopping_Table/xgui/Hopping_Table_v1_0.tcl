# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "W_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W_2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W_3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "W_4" -parent ${Page_0}


}

proc update_PARAM_VALUE.W_1 { PARAM_VALUE.W_1 } {
	# Procedure called to update W_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_1 { PARAM_VALUE.W_1 } {
	# Procedure called to validate W_1
	return true
}

proc update_PARAM_VALUE.W_2 { PARAM_VALUE.W_2 } {
	# Procedure called to update W_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_2 { PARAM_VALUE.W_2 } {
	# Procedure called to validate W_2
	return true
}

proc update_PARAM_VALUE.W_3 { PARAM_VALUE.W_3 } {
	# Procedure called to update W_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_3 { PARAM_VALUE.W_3 } {
	# Procedure called to validate W_3
	return true
}

proc update_PARAM_VALUE.W_4 { PARAM_VALUE.W_4 } {
	# Procedure called to update W_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.W_4 { PARAM_VALUE.W_4 } {
	# Procedure called to validate W_4
	return true
}


proc update_MODELPARAM_VALUE.W_1 { MODELPARAM_VALUE.W_1 PARAM_VALUE.W_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_1}] ${MODELPARAM_VALUE.W_1}
}

proc update_MODELPARAM_VALUE.W_2 { MODELPARAM_VALUE.W_2 PARAM_VALUE.W_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_2}] ${MODELPARAM_VALUE.W_2}
}

proc update_MODELPARAM_VALUE.W_3 { MODELPARAM_VALUE.W_3 PARAM_VALUE.W_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_3}] ${MODELPARAM_VALUE.W_3}
}

proc update_MODELPARAM_VALUE.W_4 { MODELPARAM_VALUE.W_4 PARAM_VALUE.W_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.W_4}] ${MODELPARAM_VALUE.W_4}
}

