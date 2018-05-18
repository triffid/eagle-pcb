include <eagle-pcb/common.scad>;

module transistor_power_MICRO3(name, value) {
	scale([1, 0.8, 1]) rotate(180) sot23(name=name, value=value);
}

module transistor_power_SO_08(name, value) {
	rotate(90) soic(name=name, value=value);
}
