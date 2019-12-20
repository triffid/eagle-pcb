include <eagle-pcb/common.scad>

module inductors_L0805() {
	rcsmd([8 * 0.254, 5 * 0.254, 0.9]);
}

module inductors_0402() {
	rcsmd([4 * 0.254, 2 * 0.254, 0.9]);
}
