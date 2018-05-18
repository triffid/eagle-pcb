include <eagle-pcb/common.scad>;

module eagle_ltspice_C0805(name, value) {
	rcsmd([8 * 0.254, 5 * 0.254], name=name, value=value);
}

module eagle_ltspice_C0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module eagle_ltspice_C0402(name, value) {
	rcsmd([4 * 0.254, 2 * 0.254], name=name, value=value);
}
