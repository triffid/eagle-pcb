include <eagle-pcb/common.scad>;

module BJT_SOT_23(name, value) {
	rotate(180) sot23(3, name=name, value=value);
}

module BJT_SOT223(name, value) {
	sot223(name=name, value=value);
}
