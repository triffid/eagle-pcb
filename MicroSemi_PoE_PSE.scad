include <eagle-pcb/common.scad>;

module MicroSemi_PoE_PSE_QFN48_6MM(name, value) {
	qfn(pins = 48, pitch = 0.4, h = 1, sides = 4, size = 6, name=name, value=value);
}

module MicroSemi_PoE_PSE_SOIC_W_24(name, value) {
	soic(p = 24, w = 12, h = 5, name=name, value=value);
}

module MicroSemi_PoE_PSE_QFN56(name, value) {
	qfn(pins = 56, pitch = 0.5, size = 7, name=name, value=value);
}

module MicroSemi_PoE_PSE_QFN32(name, value) {
	qfn(pins = 32, pitch = 0.5, name=name, value=value);
}
