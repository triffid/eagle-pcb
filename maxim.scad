include <eagle-pcb/common.scad>;

module maxim_TSSOP16(name, value) {
	rotate(90) soic(p=16, w=4.5, pitch=0.65, name=name, value=value);
}
