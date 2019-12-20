include <eagle-pcb/common.scad>;

module AR8033_QFN48_6MM(name, value) {
	qfn(pins = 48, pitch = 0.4, h = 1, sides = 4, size = 6, name=name, value=value);
}
