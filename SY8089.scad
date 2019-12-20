include <eagle-pcb/common.scad>;

module SY8089_SOT23_5(name, value) {
	rotate(90) sot23(5, name=name, value=value);
}
