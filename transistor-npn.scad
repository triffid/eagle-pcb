include <eagle-pcb/common.scad>

module transistor_npn_SOT23_BEC(name, value) {
	rotate(180) sot23(name=name, value=value);
}
