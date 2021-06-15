# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FINISH_OFF" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FINISH_OFF_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDLE_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ONE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROUND1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROUND1_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROUND2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROUND2_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROUND3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROUND3_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROUND4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROUND4_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SALT_A" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SALT_B" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SALT_C" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SALT_D" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TURN_ARND" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TURN_ARND_BIT" -parent ${Page_0}


}

proc update_PARAM_VALUE.FINISH_OFF { PARAM_VALUE.FINISH_OFF } {
	# Procedure called to update FINISH_OFF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FINISH_OFF { PARAM_VALUE.FINISH_OFF } {
	# Procedure called to validate FINISH_OFF
	return true
}

proc update_PARAM_VALUE.FINISH_OFF_BIT { PARAM_VALUE.FINISH_OFF_BIT } {
	# Procedure called to update FINISH_OFF_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FINISH_OFF_BIT { PARAM_VALUE.FINISH_OFF_BIT } {
	# Procedure called to validate FINISH_OFF_BIT
	return true
}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.IDLE_BIT { PARAM_VALUE.IDLE_BIT } {
	# Procedure called to update IDLE_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE_BIT { PARAM_VALUE.IDLE_BIT } {
	# Procedure called to validate IDLE_BIT
	return true
}

proc update_PARAM_VALUE.ONE { PARAM_VALUE.ONE } {
	# Procedure called to update ONE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ONE { PARAM_VALUE.ONE } {
	# Procedure called to validate ONE
	return true
}

proc update_PARAM_VALUE.ROUND1 { PARAM_VALUE.ROUND1 } {
	# Procedure called to update ROUND1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUND1 { PARAM_VALUE.ROUND1 } {
	# Procedure called to validate ROUND1
	return true
}

proc update_PARAM_VALUE.ROUND1_BIT { PARAM_VALUE.ROUND1_BIT } {
	# Procedure called to update ROUND1_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUND1_BIT { PARAM_VALUE.ROUND1_BIT } {
	# Procedure called to validate ROUND1_BIT
	return true
}

proc update_PARAM_VALUE.ROUND2 { PARAM_VALUE.ROUND2 } {
	# Procedure called to update ROUND2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUND2 { PARAM_VALUE.ROUND2 } {
	# Procedure called to validate ROUND2
	return true
}

proc update_PARAM_VALUE.ROUND2_BIT { PARAM_VALUE.ROUND2_BIT } {
	# Procedure called to update ROUND2_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUND2_BIT { PARAM_VALUE.ROUND2_BIT } {
	# Procedure called to validate ROUND2_BIT
	return true
}

proc update_PARAM_VALUE.ROUND3 { PARAM_VALUE.ROUND3 } {
	# Procedure called to update ROUND3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUND3 { PARAM_VALUE.ROUND3 } {
	# Procedure called to validate ROUND3
	return true
}

proc update_PARAM_VALUE.ROUND3_BIT { PARAM_VALUE.ROUND3_BIT } {
	# Procedure called to update ROUND3_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUND3_BIT { PARAM_VALUE.ROUND3_BIT } {
	# Procedure called to validate ROUND3_BIT
	return true
}

proc update_PARAM_VALUE.ROUND4 { PARAM_VALUE.ROUND4 } {
	# Procedure called to update ROUND4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUND4 { PARAM_VALUE.ROUND4 } {
	# Procedure called to validate ROUND4
	return true
}

proc update_PARAM_VALUE.ROUND4_BIT { PARAM_VALUE.ROUND4_BIT } {
	# Procedure called to update ROUND4_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUND4_BIT { PARAM_VALUE.ROUND4_BIT } {
	# Procedure called to validate ROUND4_BIT
	return true
}

proc update_PARAM_VALUE.SALT_A { PARAM_VALUE.SALT_A } {
	# Procedure called to update SALT_A when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SALT_A { PARAM_VALUE.SALT_A } {
	# Procedure called to validate SALT_A
	return true
}

proc update_PARAM_VALUE.SALT_B { PARAM_VALUE.SALT_B } {
	# Procedure called to update SALT_B when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SALT_B { PARAM_VALUE.SALT_B } {
	# Procedure called to validate SALT_B
	return true
}

proc update_PARAM_VALUE.SALT_C { PARAM_VALUE.SALT_C } {
	# Procedure called to update SALT_C when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SALT_C { PARAM_VALUE.SALT_C } {
	# Procedure called to validate SALT_C
	return true
}

proc update_PARAM_VALUE.SALT_D { PARAM_VALUE.SALT_D } {
	# Procedure called to update SALT_D when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SALT_D { PARAM_VALUE.SALT_D } {
	# Procedure called to validate SALT_D
	return true
}

proc update_PARAM_VALUE.TURN_ARND { PARAM_VALUE.TURN_ARND } {
	# Procedure called to update TURN_ARND when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TURN_ARND { PARAM_VALUE.TURN_ARND } {
	# Procedure called to validate TURN_ARND
	return true
}

proc update_PARAM_VALUE.TURN_ARND_BIT { PARAM_VALUE.TURN_ARND_BIT } {
	# Procedure called to update TURN_ARND_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TURN_ARND_BIT { PARAM_VALUE.TURN_ARND_BIT } {
	# Procedure called to validate TURN_ARND_BIT
	return true
}


proc update_MODELPARAM_VALUE.SALT_A { MODELPARAM_VALUE.SALT_A PARAM_VALUE.SALT_A } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SALT_A}] ${MODELPARAM_VALUE.SALT_A}
}

proc update_MODELPARAM_VALUE.SALT_B { MODELPARAM_VALUE.SALT_B PARAM_VALUE.SALT_B } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SALT_B}] ${MODELPARAM_VALUE.SALT_B}
}

proc update_MODELPARAM_VALUE.SALT_C { MODELPARAM_VALUE.SALT_C PARAM_VALUE.SALT_C } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SALT_C}] ${MODELPARAM_VALUE.SALT_C}
}

proc update_MODELPARAM_VALUE.SALT_D { MODELPARAM_VALUE.SALT_D PARAM_VALUE.SALT_D } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SALT_D}] ${MODELPARAM_VALUE.SALT_D}
}

proc update_MODELPARAM_VALUE.ONE { MODELPARAM_VALUE.ONE PARAM_VALUE.ONE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ONE}] ${MODELPARAM_VALUE.ONE}
}

proc update_MODELPARAM_VALUE.IDLE_BIT { MODELPARAM_VALUE.IDLE_BIT PARAM_VALUE.IDLE_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE_BIT}] ${MODELPARAM_VALUE.IDLE_BIT}
}

proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.ROUND1_BIT { MODELPARAM_VALUE.ROUND1_BIT PARAM_VALUE.ROUND1_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUND1_BIT}] ${MODELPARAM_VALUE.ROUND1_BIT}
}

proc update_MODELPARAM_VALUE.ROUND1 { MODELPARAM_VALUE.ROUND1 PARAM_VALUE.ROUND1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUND1}] ${MODELPARAM_VALUE.ROUND1}
}

proc update_MODELPARAM_VALUE.ROUND2_BIT { MODELPARAM_VALUE.ROUND2_BIT PARAM_VALUE.ROUND2_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUND2_BIT}] ${MODELPARAM_VALUE.ROUND2_BIT}
}

proc update_MODELPARAM_VALUE.ROUND2 { MODELPARAM_VALUE.ROUND2 PARAM_VALUE.ROUND2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUND2}] ${MODELPARAM_VALUE.ROUND2}
}

proc update_MODELPARAM_VALUE.ROUND3_BIT { MODELPARAM_VALUE.ROUND3_BIT PARAM_VALUE.ROUND3_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUND3_BIT}] ${MODELPARAM_VALUE.ROUND3_BIT}
}

proc update_MODELPARAM_VALUE.ROUND3 { MODELPARAM_VALUE.ROUND3 PARAM_VALUE.ROUND3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUND3}] ${MODELPARAM_VALUE.ROUND3}
}

proc update_MODELPARAM_VALUE.ROUND4_BIT { MODELPARAM_VALUE.ROUND4_BIT PARAM_VALUE.ROUND4_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUND4_BIT}] ${MODELPARAM_VALUE.ROUND4_BIT}
}

proc update_MODELPARAM_VALUE.ROUND4 { MODELPARAM_VALUE.ROUND4 PARAM_VALUE.ROUND4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUND4}] ${MODELPARAM_VALUE.ROUND4}
}

proc update_MODELPARAM_VALUE.FINISH_OFF_BIT { MODELPARAM_VALUE.FINISH_OFF_BIT PARAM_VALUE.FINISH_OFF_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FINISH_OFF_BIT}] ${MODELPARAM_VALUE.FINISH_OFF_BIT}
}

proc update_MODELPARAM_VALUE.FINISH_OFF { MODELPARAM_VALUE.FINISH_OFF PARAM_VALUE.FINISH_OFF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FINISH_OFF}] ${MODELPARAM_VALUE.FINISH_OFF}
}

proc update_MODELPARAM_VALUE.TURN_ARND_BIT { MODELPARAM_VALUE.TURN_ARND_BIT PARAM_VALUE.TURN_ARND_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TURN_ARND_BIT}] ${MODELPARAM_VALUE.TURN_ARND_BIT}
}

proc update_MODELPARAM_VALUE.TURN_ARND { MODELPARAM_VALUE.TURN_ARND PARAM_VALUE.TURN_ARND } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TURN_ARND}] ${MODELPARAM_VALUE.TURN_ARND}
}

