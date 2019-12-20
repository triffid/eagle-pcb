include <eagle-pcb/common.scad>

module resistor_R0402(name, value) {
	rcsmd([4 * 0.254, 2 * 0.254], name=name, value=value);
}

module resistor_R0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module resistor_C0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module resistor_C0603K(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module resistor_M0805() {
	rcsmd([8 * 0.254, 5 * 0.254]);
}
