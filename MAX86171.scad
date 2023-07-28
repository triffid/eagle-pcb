include <eagle-pcb/common.scad>

module MAX86171_WLP_BGA_7X4_0_35(name, value) {
	bga(size=[2.78,1.71,0.5], pins=[7,4], pitch=0.35, name=name, value=value);
}
