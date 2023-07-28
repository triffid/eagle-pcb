include <eagle-pcb/common.scad>;

module LP5907_SOT23_5(name, value) {
	rotate(90) sot23(5, name=name, value=value);
}

module LP5907_DSBGA_4_0_35(name, value) {
	bga(size=[0.645, 0.645, 0.4], pins=[2,2], pitch=0.35, name=name, value=value);
}
