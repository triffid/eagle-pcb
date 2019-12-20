include <eagle-pcb/common.scad>;

module AT24CS_TSSOP_8(name, value) {
	// module soic(p=8, w=4, h = 1, pitch = 1.27, name, value)
	soic(p = 8, w = 4.3, pitch = 0.635, name=name, value=value);
}
