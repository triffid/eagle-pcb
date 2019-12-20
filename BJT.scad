include <eagle-pcb/common.scad>;

module BJT_SOT_23(name, value) {
	rotate(180) sot23(3, name=name, value=value);
}

