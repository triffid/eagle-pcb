include <eagle-pcb/common.scad>

module SY8303_SOT23_8(name, value) {
	rotate([0, 0, 180]) sot23(pins = 8, name=name, value=value);
}
