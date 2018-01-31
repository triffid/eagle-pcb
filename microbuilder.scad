include <eagle-pcb/common.scad>;

module microbuilder_CRYSTAL_3_2X2_5(name, value) {
	smt_xtal(name, value);
}

module microbuilder_0603(name, value) {
	rcsmd([6 * 0.254, 3 * 0.254], name=name, value=value);
}

module microbuilder_SOT23_5(name, value) {
	sot23(5, name=name, value=value);
}

module microbuilder_LQFP100(name, value) {
	tqfp(pins = 100, pitch = 0.5, name=name, value=value);
}

module microbuilder_QFN24_4MM(name, value) {
	qfn(24, name=name, value=value);
}
