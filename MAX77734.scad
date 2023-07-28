include <eagle-pcb/common.scad>

module MAX77734_WLCSP_BGA_4X5_0_4MM(name, value) {
	bga(size=[2.23, 1.97, 0.5], pins=[5,4], pitch=0.4, name=name, value=value);
}
